.class Lcom/callerid/block/customview/ExpandTextView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/ExpandTextView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/callerid/block/customview/ExpandTextView;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ExpandTextView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ExpandTextView$a;->b:Lcom/callerid/block/customview/ExpandTextView;

    iput-object p2, p0, Lcom/callerid/block/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/callerid/block/customview/ExpandTextView$a;->b:Lcom/callerid/block/customview/ExpandTextView;

    invoke-static {p1}, Lcom/callerid/block/customview/ExpandTextView;->a(Lcom/callerid/block/customview/ExpandTextView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
