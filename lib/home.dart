import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }

}
class _MyHomeState extends State<MyHome>
{
  List l1=["سبحان الله","الحمدلله","الله اكبر","لا اله الا الله","ولا حول ولا قوة الا بالله"];
  var x=0,y=0,v=0,indx=0;
Zer()   // فنكشن تصفر الكل
{
  setState(() {
    x=0;y=0;indx=0;
  });

}
  ad(){   // فنكشن العد
    setState(() {

      if(indx<=2) {
        if (x == 33) {
          x = 0;
          indx++;

          }}
        else{
          if(x==2)
            {
              x=0;
              indx++;

            }
          if(indx==5){indx=0;y++;}
      }
      x=x+1;

    });


  }
  @override
  Widget build(BuildContext context) {

     return  SafeArea(
       child: Container(

         child: Scaffold(


           body: Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/images/xx.png"),
                 fit: BoxFit.cover,
               ),
             ),
             child: Column(

               mainAxisAlignment: MainAxisAlignment.end,
               children: [


                   Text("فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَىٰ",style: TextStyle(fontSize: 35),),
                 SizedBox(height: 150,),
                   Text("${l1[indx]}",style: const TextStyle(fontSize: 40),textAlign:TextAlign.center,),

                  SizedBox(height: 20,),
                 Container(
                   decoration: const BoxDecoration(
                       shape: BoxShape.rectangle,
                       color: Color(0xffCEFC4C),
                       borderRadius: BorderRadius.only(
                           topRight: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(25),
                           bottomRight: Radius.circular(25),
                       ),

                   ),
                 padding: EdgeInsets.fromLTRB(10,5,10,5),

                 child:const Text("عدد التسبيحات",style: TextStyle(fontSize: 30),textAlign:TextAlign.center,),
                 ),

                 SizedBox(height: 10,),
                 Text("$x",style: TextStyle(fontSize: 49),),
                 SizedBox(height: 10,),
                 Row(
               mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     OutlineButton(

                       onPressed: (){ad();},
                      // elevation: 2.0,

                       child:const SizedBox(width: 150, height: 100, child: Text(
                         "اضغط",textAlign: TextAlign.center,style: TextStyle(
                         fontSize: 30,
                       ),)
                       ),


                       padding: EdgeInsets.all(15.0),
                       shape: CircleBorder(),
                     ),

                   ],
                 ),
                 const SizedBox(
                   height: 15,
                 ),
                 Container(
                   margin:EdgeInsets.fromLTRB(0,0,0,15) ,

               //    color: Colors.red,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       TextButton(onPressed:(){Zer();}, child:
                        Text("دورة جديدة",style:const TextStyle(fontSize: 24),)),
                      SizedBox(width: 100,),
                      Text(" الدورة رقم :$y",style:const TextStyle(fontSize: 24),),

                     ],
                   ),
                 )
               ],
             ),
           ),
           // floatingActionButton: FloatingActionButton(
           //   onPressed: (){},
           //   child: const Icon(Icons.add),
           // ),
         ),
       ),
     );
  }
  
}