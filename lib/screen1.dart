import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  final List<String> imageUrl=[

    'assets/images/938279.jpg',
    'assets/images/desktop-wallpaper-fifa-world-cup-goal-celebration-neymar-jr-brazil.jpg',
    'assets/images/reddead.jpg',
    'assets/images/wp2566176-david-beckham-hd-wallpapers.jpg',
    'assets/images/wp6794318-breaking-bad-4k-wallpapers.jpg'
  ];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
      ),
      body: Column(
        children: [
        CarouselSlider(
          options:CarouselOptions(
            height: 100,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.easeInOutCubicEmphasized,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            viewportFraction: 0.8,

          ),
          items:imageUrl.map((imageUrl){
          return Container(
            height:400,
            width:double.infinity,
            margin:EdgeInsets.symmetric(horizontal: 5.0),
            child: Image.asset(imageUrl,fit: BoxFit.cover,),
          
          );
          }).toList()

          
          ),
        ],
      ),
    );
  }
}