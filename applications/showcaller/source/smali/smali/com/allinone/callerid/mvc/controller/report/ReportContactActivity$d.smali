.class Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$d;
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
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$d;->d:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$d;->d:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$d;->d:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
