<%@page import="com.dto.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<form action="accountList" method="post">
		<%
			AccountDTO dto = (AccountDTO) session.getAttribute("myaccount");
		%>
		<h1 align="center">Withdraw Amount</h1>
		<%
			if (request.getAttribute("dto") != null) {
		%>
		<h1 align="center" style="color: red"><%=request.getAttribute("dto")%></h1>
		<%
			}
		%>
		<div align="center">
			<table border="2px">
				<tr>
					<td>Account Number</td>
					<td><input value="<%=dto.getAccountNo()%>" name="accountno"></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input
						value="<%=dto.getFirstName()%> <%=dto.getLastName()%>"></td>
				</tr>
				<tr>
					<td>Enter Amount</td>
					<td><input type="text" name="amount"></td>
				</tr>
			</table>
			<input type="submit" name="operation" value="withdraw">
		</div>
	</form>
</body>
</html>