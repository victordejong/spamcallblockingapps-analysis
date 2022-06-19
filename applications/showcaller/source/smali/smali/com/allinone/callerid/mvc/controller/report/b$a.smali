.class Lcom/allinone/callerid/mvc/controller/report/b$a;
.super Ljava/lang/Object;
.source "ReportListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/b;->c1(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/b;->a2(Lcom/allinone/callerid/mvc/controller/report/b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/b;->a2(Lcom/allinone/callerid/mvc/controller/report/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/b;->a2(Lcom/allinone/callerid/mvc/controller/report/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class p4, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    const-string p3, "report_number"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b$a;->d:Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010042

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
