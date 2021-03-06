﻿@using System.Web.Http
@using $rootnamespace$.Areas.HelpPage.Models
@model HelpPageApiModel

@{
    var description = Model.ApiDescription;
    ViewBag.Title = description.HttpMethod.Method + " " + description.RelativePath;
}

<link type="text/css" href="~/Areas/HelpPage/HelpPage.css" rel="stylesheet" />
<div id="body" class="help-page">
    <section class="featured">
        <div class="content-wrapper">
            <p>
                @Html.ActionLink("Back Home", "/Index")
            </p>
        </div>
    </section>
    <section class="content-wrapper main-content clear-fix">
        @Html.DisplayForModel()

      @Html.DisplayForModel("TestClientDialogs")
    @Html.DisplayForModel("TestClientReferences")
    </section>
</div>
