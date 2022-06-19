.class Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;
.super Ljava/lang/Object;
.source "AddCustomNumActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Lcom/allinone/callerid/customview/DeletableEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
