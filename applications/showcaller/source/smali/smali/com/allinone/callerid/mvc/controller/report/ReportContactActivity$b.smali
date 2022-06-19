.class Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;
.super Ljava/lang/Object;
.source "ReportContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->f0(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;->c:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    const-string v0, "true"

    .line 4
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$b;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    :goto_0
    return-void
.end method
