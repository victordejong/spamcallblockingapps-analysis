.class Lcom/callerid/block/customview/DeletableEditText$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/DeletableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/customview/DeletableEditText;


# direct methods
.method private constructor <init>(Lcom/callerid/block/customview/DeletableEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/DeletableEditText$b;->b:Lcom/callerid/block/customview/DeletableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/customview/DeletableEditText;Lcom/callerid/block/customview/DeletableEditText$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/DeletableEditText$b;-><init>(Lcom/callerid/block/customview/DeletableEditText;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/customview/DeletableEditText$b;->b:Lcom/callerid/block/customview/DeletableEditText;

    invoke-static {p1, p2}, Lcom/callerid/block/customview/DeletableEditText;->b(Lcom/callerid/block/customview/DeletableEditText;Z)Z

    iget-object p1, p0, Lcom/callerid/block/customview/DeletableEditText$b;->b:Lcom/callerid/block/customview/DeletableEditText;

    invoke-static {p1}, Lcom/callerid/block/customview/DeletableEditText;->a(Lcom/callerid/block/customview/DeletableEditText;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/customview/DeletableEditText$b;->b:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/customview/DeletableEditText$b;->b:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1, p2}, Lcom/callerid/block/customview/DeletableEditText;->setClearDrawableVisible(Z)V

    return-void
.end method
