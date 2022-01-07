import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  //변화지 않는 화면을 위한 작업용 위젯

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //메테리얼 디자을 테마를 위한 값을 리턴
      title: "test_1 App", //앱 제목
      debugShowCheckedModeBanner: false, //타이틀바 디버그 배너 지우기
      //앱 테마
      theme: ThemeData(primarySwatch: Colors.blueGrey //색은 나중에 바꿀것
          ),
      home: FirstWidget(), //앱이 실행되면 표시할 하위 화면
    );
  }
}

class FirstWidget extends StatelessWidget {
  //스카폴드 객체 위젯

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("슬이 결이"),
        centerTitle: true, //가운데 정렬
        elevation: 3.0, //그림자 조금
        toolbarHeight: 60, //앱바 두깨
      ), //타이틀 이름
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //가운데 정렬
            //컬넘에 위젯객체만의 배열을 넣는다.
            //column말과 row로 배치도 가능하다.
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 100.0,
              ),
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
