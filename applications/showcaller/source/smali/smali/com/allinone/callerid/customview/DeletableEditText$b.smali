.class Lcom/allinone/callerid/customview/DeletableEditText$b;
.super Ljava/lang/Object;
.source "DeletableEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/customview/DeletableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/DeletableEditText;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/customview/DeletableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/customview/DeletableEditText;Lcom/allinone/callerid/customview/DeletableEditText$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/DeletableEditText$b;-><init>(Lcom/allinone/callerid/customview/DeletableEditText;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-static {p1, p2}, Lcom/allinone/callerid/customview/DeletableEditText;->b(Lcom/allinone/callerid/customview/DeletableEditText;Z)Z

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-static {p1}, Lcom/allinone/callerid/customview/DeletableEditText;->a(Lcom/allinone/callerid/customview/DeletableEditText;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 p2, 0x1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/customview/DeletableEditText;->setClearDrawableVisible(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/customview/DeletableEditText$b;->d:Lcom/allinone/callerid/customview/DeletableEditText;

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/customview/DeletableEditText;->setClearDrawableVisible(Z)V

    :goto_0
    return-void
.end method
