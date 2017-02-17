<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 充值记录查询页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<%-- <base href="<%=basePath%>"> --%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0,user-scalable=0" />
    <meta name="format-detection" content="telephone=no" />
    <title>交易记录</title>
    <script src="<%=path%>/js/easyui/jquery-1.9.1.min.js"></script>
 <script type="text/javascript">

 var arr=new Array();
 var time="2015-1-1";
 
 $(function(){

	 var flag=searchArray(time);//返回undifined，！undifined就是true，
	 alert(!flag);
	 if(!flag)
	{
		 arr.push("2016-1-1");
	}
	alert(arr[0]);
	 
 })

function searchArray(time)
 {

	for(i in arr)
	{
		alert(arr[i]);
		if(arr[i]==time)
		{
			alert(" true");
			return true;
		}
		/* else
		{
			alert("false");
			return false;
		} */
	}
}
 
 </script>
</head>
<body>
<div id="content">
</div>
<div class="more" onclick="getMore()"></div>
<div class="none"></div>
</body>
</html>