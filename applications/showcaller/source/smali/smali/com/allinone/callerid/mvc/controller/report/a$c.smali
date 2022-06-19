.class Lcom/allinone/callerid/mvc/controller/report/a$c;
.super Landroid/content/BroadcastReceiver;
.source "MyReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/report/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/report/a;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/mvc/controller/report/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$c;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/mvc/controller/report/a;Lcom/allinone/callerid/mvc/controller/report/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/a$c;-><init>(Lcom/allinone/callerid/mvc/controller/report/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$c;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/report/a;->m2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$c;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/report/a;->o2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$c;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/report/a;->q2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$c;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->h2(Lcom/allinone/callerid/mvc/controller/report/a;)V

    return-void
.end method
