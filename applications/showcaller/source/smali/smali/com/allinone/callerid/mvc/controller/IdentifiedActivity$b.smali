.class Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;
.super Ljava/lang/Object;
.source "IdentifiedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

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
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->Y(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->Y(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->Y(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    const-class p4, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "contact_tony"

    .line 5
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    const/high16 p2, 0x7f010000

    const p3, 0x7f010001

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
