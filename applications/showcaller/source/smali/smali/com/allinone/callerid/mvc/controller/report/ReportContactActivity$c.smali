.class Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;
.super Ljava/lang/Object;
.source "ReportContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->i0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/widget/CheckBox;

.field final synthetic h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->g:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->i0()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->N1(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->a0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/allinone/callerid/bean/ReportedContent;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/ReportedContent;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/ReportedContent;->setNumber(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/ReportedContent;->setType(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/allinone/callerid/bean/ReportedContent;->setTime(J)V

    .line 8
    invoke-static {p1}, Lcom/allinone/callerid/i/a/w/d;->d(Lcom/allinone/callerid/bean/ReportedContent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->b0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;Ljava/lang/String;Landroid/content/Context;)V

    .line 11
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    .line 21
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->c0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->c0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)V

    .line 24
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 26
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "typelabel"

    .line 27
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    const/16 v1, 0x3c3

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$c;->h:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
