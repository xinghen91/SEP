<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
<s:include value="../header.jsp"></s:include>

<script>
	function addMore() {
		var td = document.getElementById("more");

		var br = document.createElement("br");
		var input = document.createElement("input");
		var button = document.createElement("input");

		input.type = "file";
		input.name = "file";

		button.type = "button";
		button.value = "Remove";

		button.onclick = function() {
			td.removeChild(br);
			td.removeChild(input);
			td.removeChild(button);
		}
		td.appendChild(br);
		td.appendChild(input);
		td.appendChild(button);
	}
</script>

<!-- Start: MAIN CONTENT -->
<div class="content">


		<s:form role = "form" action="goodAction_addGood" theme="simple"
			enctype="multipart/form-data" method = "post">

			<div class = "form-group">

			<table class = "table well">



				<tr>
					<td>交易地点</td>
					<td><s:textfield name="usedGood.tradeLocation"></s:textfield></td>
				</tr>

				<tr>
					<td>货物名称</td>
					<td><s:textfield name="usedGood.name"></s:textfield></td>
				</tr>
				<tr>
					<td>货物类型</td>
					<td><s:textfield name="usedGood.type"></s:textfield></td>
				</tr>
				<tr>
					<td>转手价格</td>
					<td><s:textfield name="usedGood.price"></s:textfield></td>
				</tr>
				<tr>
					<td>交易类型</td>
					<td><s:textfield name="usedGood.tradeType"></s:textfield></td>
				</tr>
				<tr>
					<td>商品简介</td>
					<td><s:textarea name="usedGood.description"></s:textarea></td>
				</tr>
				<tr>
					<td>file</td>
					<td id="more"><s:file name="images"></s:file> <input
						type="button" value="Add More.." onclick="addMore()">
					</td>
				</tr>
				<tr>
					<td><s:submit value=" submit "></s:submit></td>
					<td><s:reset value=" reset "></s:reset></td>
				</tr>
			</table>
			</div>
		</s:form>
<!--  -->

</div>
<!-- End: MAIN CONTENT -->
<s:include value="../footer.jsp"></s:include>
</html>