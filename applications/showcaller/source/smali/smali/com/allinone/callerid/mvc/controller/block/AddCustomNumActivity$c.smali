.class Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;
.super Ljava/lang/Object;
.source "AddCustomNumActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->b0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;I)I

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p4, 0x3

    if-ne p3, p4, :cond_0

    .line 2
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/customview/DeletableEditText;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/customview/DeletableEditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$c;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
