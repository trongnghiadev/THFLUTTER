import 'package:flutter/material.dart';

class MySateWidget extends StatefulWidget {
  const MySateWidget({super.key});

  @override
  State<MySateWidget> createState() => _MySateWidgetState();
}

class _MySateWidgetState extends State<MySateWidget> {
  late bool _active;

  @override
  void initState() {
    super.initState();
    _active = false;
  }

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: _handleTap,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(color: _active ? Colors.green : Colors.red),
          child: Center(child: Text(_active ? "Active" : "UnActive")),
        ),
      ),
    ));
  }
}
