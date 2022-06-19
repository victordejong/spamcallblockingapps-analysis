.class Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;
.super Ljava/lang/Object;
.source "ReportSubtypeActivity.java"

# interfaces
.implements Lcom/allinone/callerid/b/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/SubType;Z)V
    .locals 8

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/search/EZSearchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_it_mark"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Y(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_deletechild"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->d0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Lcom/allinone/callerid/bean/SubType;ZZ)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allinone.callerid.RELOAD_DATA"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getTel_number()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->f0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getSubtype_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getType()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->g0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->h0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->i0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->j0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->k0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/SubType;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Z(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->a0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
