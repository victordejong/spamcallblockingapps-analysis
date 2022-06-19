.class Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;
.super Ljava/lang/Object;
.source "GuideReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "haoma"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->X(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "cishu"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->Y(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;I)I

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "icon"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->Z(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "Report_count"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->a0(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "Type_label"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->b0(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "Type_label_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->c0(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    const-string v2, "T_p"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->d0(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity$a;->d:Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;->e0(Lcom/allinone/callerid/mvc/controller/guidep/GuideReportActivity;)V

    return-void
.end method
