<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>�Τ᦬�ýҵ{</title>

<style>
  table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
    border: 3px ridge Gray;
    height: 80px;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>�Τ᦬�ýҵ{</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for �Τ᦬�ýҵ{</p>

<h3>��Ƭd��:</h3>
	
<%-- ���~���C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href='listAllCollect.jsp'>List</a> all Collects  <br><br></li>
  
  
  <li>
    <FORM METHOD="post" ACTION="collect.do" >
        <b>��J�ҵ{�s��:</b>
        <input type="text" name="crid">
        <b>��J�Τ�s��:</b>
        <input type="text" name="uid">
        <input type="hidden" name="action" value="getOne_For_Display">
        <input type="submit" value="�e�X">
    </FORM>
  </li>

  <jsp:useBean id="userclSvc" scope="page" class="com.fitanywhere.main.usercollectlist.model.UserclService" />
   
 
  
 
</ul>


<h3>���ú޲z</h3>

<ul>
  <li><a href='addCollect.jsp'>Add</a> a new Collect.</li>
</ul>

</body>
</html>