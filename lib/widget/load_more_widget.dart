import 'package:flutter/material.dart';
//封装加载更多控件
class LoadMoreWidget extends StatefulWidget {
  final bool isLoadMore;

  const LoadMoreWidget({Key key, this.isLoadMore}) : super(key: key);

  @override
  _LoadMoreWidgetState createState() => _LoadMoreWidgetState();
}

class _LoadMoreWidgetState extends State<LoadMoreWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.isLoadMore) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('加载中...', style: TextStyle(fontSize: 16)),
          Padding(
              padding: EdgeInsets.only(left: 5),
              child: CircularProgressIndicator())
        ],
      );
    } else {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 10),
        child: Text('上拉加载更多', style: TextStyle(fontSize: 16)),
      );
    }
  }
}
