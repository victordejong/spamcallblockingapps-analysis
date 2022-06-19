.class Lcom/callerid/block/fragment/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b;->X1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$d;->b:Lcom/callerid/block/fragment/b;

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

    iget-object p1, p0, Lcom/callerid/block/fragment/b$d;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/callerid/block/b/k;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/SMSBean;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "message"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/b$d;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->Q1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const-class p3, Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/fragment/b$d;->b:Lcom/callerid/block/fragment/b;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/b$d;->b:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->Q1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const/high16 p2, 0x7f010000

    const p3, 0x7f010001

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
