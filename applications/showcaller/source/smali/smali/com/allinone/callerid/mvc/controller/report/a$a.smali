.class Lcom/allinone/callerid/mvc/controller/report/a$a;
.super Ljava/lang/Object;
.source "MyReportFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/a;->w2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p2

    const p3, 0x7f010001

    const/high16 p4, 0x7f010000

    const-string p5, "contact_tony"

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->i2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    move-result-object p1

    const-class p5, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->i2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    move-result-object p1

    invoke-virtual {p1, p4, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {v0, p5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->i2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    move-result-object p1

    const-class p5, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p2, p1, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$a;->d:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->i2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    move-result-object p1

    invoke-virtual {p1, p4, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method
