import 'dart:convert';
import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class TypeScript extends StatefulWidget {
  @override
  _TypeScriptState createState() => _TypeScriptState();
}

class _TypeScriptState extends State<TypeScript>  with SingleTickerProviderStateMixin{
  TabController _tabController;
  List<Text> tabBarItems = [
    Text('About'),
    Text('Topics Covered'),
    Text('Resource Material'),
    Text('Friends Attempting'),
    Text('T & C'),
  ];
  _getAbout(){
    return Container(
        padding: EdgeInsets.only(top: 10,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_time,size: 27,color: Colors.black,),
            title: Text('Tuesday 03 December 2019',style: TextStyle(color: Colors.black,
              fontSize: 15,fontWeight: FontWeight.w500,
            ),softWrap: true,),
            subtitle: Text('03:00 PM to 05:00 PM',style: TextStyle(color: Colors.black,
              fontSize: 11,fontWeight: FontWeight.w300,
            ),softWrap: true,),
          ),
          ListTile(
            leading: Icon(Icons.receipt,size: 27,color: Colors.black,),
            title: Text('Description',style: TextStyle(color: Colors.black,
              fontSize: 15,fontWeight: FontWeight.w500,
            ),softWrap: true,),
            subtitle: Text('This exam consists of question regarding to TypeScript. It is a basic '
    'exam that will help you learnhow to get start with coding',style: TextStyle(color: Colors.black,
              fontSize: 11,fontWeight: FontWeight.w300,
            ),softWrap: true,),
          ),
          ListTile(
            leading: Icon(Icons.tag_faces,size: 27,color: Colors.black,),
            title: Text('Tags',style: TextStyle(color: Colors.black,
              fontSize: 15,fontWeight: FontWeight.w500,
            ),softWrap: true,),
            subtitle: Row(
              children: <Widget>[
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width*0.20,
                  padding: EdgeInsets.only(left: 0,right: 10,top: 0,bottom: 0),
                  child: OutlineButton(
                    disabledBorderColor: Colors.black54,
                    padding: EdgeInsets.only(right: 5,left: 5,top: 3,bottom: 2),
                    shape: OutlineInputBorder(),
                    color: Colors.black,
                    child: Text('typescript',softWrap: true,style: TextStyle(fontSize: 11),textAlign: TextAlign.center,),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 0,right: 10,top: 0,bottom: 0),
                  height: 20,
                  width: MediaQuery.of(context).size.width*0.20,
                  child: OutlineButton(
                    shape: OutlineInputBorder(),
                    color: Colors.black,
                    disabledBorderColor: Colors.black54,
                    child: Text('google',softWrap: true,style: TextStyle(fontSize: 10,),textAlign: TextAlign.center,),
                  ),
                ), Container(
                  height: 20,
                  padding: EdgeInsets.only(left: 0,right: 10,top: 0,bottom: 0),
                  width: MediaQuery.of(context).size.width*0.20,
                  child: OutlineButton(
                    disabledBorderColor: Colors.black54,
                    shape: OutlineInputBorder(),
                    color: Colors.black,
                    child: Text('hello',softWrap: true,style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                  ),

                ),
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width*0.16,
                  padding: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 0),
                  child: OutlineButton(
                    disabledBorderColor: Colors.black54,
                    shape: OutlineInputBorder(),
                    color: Colors.black,
                    child: Text('coding',softWrap: true,style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            )
          ),
          ListTile(
            leading: Icon(Icons.help_outline,size: 27,color: Colors.black,),
            title: Text('Your Score',style: TextStyle(color: Colors.black,
              fontSize: 15,fontWeight: FontWeight.w500,
            ),softWrap: true,),
            subtitle: Text('NOT YET APPEARED FOR EXAM',style: TextStyle(color: Colors.black,
              fontSize: 11,fontWeight: FontWeight.w300,
            ),softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 12,right: 12,bottom: 0),
            height: 20,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              //size: Size(0.5,100),
              painter: MyPainter(),
            ),
          ),
          Center(
            child: Container(
              //padding: EdgeInsets.only(bottom: 4),
              child: RaisedButton(
                onPressed: (){},
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                      ),
                // disabledColor: Colors.black,
                color: Colors.black,
                child: Text('ATTEMP EXAM',style: TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.center,softWrap: true,),
              ),
            ),
          ),
        ],
      )
    );
  }
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabBarItems.length);
  }
  IconData icon;
  _getIcon(icon){
    return Icon( icon,size: 24,color: Colors.white,);
  }
  _getContainer(){
    return Container(
      padding: EdgeInsets.all(13),
      height: MediaQuery.of(context).size.height*0.35,
      decoration: BoxDecoration(
        color: Colors.orangeAccent[400],
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.arrow_left,color: Colors.white,size: 40,),
              SizedBox(width: MediaQuery.of(context).size.width*0.66,),
              _getIcon(Icons.forward),
              SizedBox(width: 10,),
              _getIcon(Icons.bookmark)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.17    ,),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("TypeScript (Learn to Code)",softWrap: true,style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25
                ),),
                Text('Google',style: TextStyle(color: Colors.white,fontSize: 13),)
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _getContainer(),
            Container(
              padding: EdgeInsets.only(left: 3,top: 18),
              child: TabBar(
//                    indicator: BoxDecoration(
//                      color: Colors.transparent
//                    ),
                labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 10),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 9),
                tabs: tabBarItems,
                isScrollable: true,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorWeight: 2,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  _getAbout(),_getAbout(),_getAbout(),_getAbout(),_getAbout(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
class MyPainter extends CustomPainter{

  void paint(Canvas canvas,Size size){
    var paint = Paint();
    paint.color = Colors.black;
    paint.strokeWidth = 0.5;
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );
  }
  bool shouldRepaint(CustomPainter old){
    return false;
  }
}