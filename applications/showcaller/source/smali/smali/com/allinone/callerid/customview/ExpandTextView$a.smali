.class Lcom/allinone/callerid/customview/ExpandTextView$a;
.super Ljava/lang/Object;
.source "ExpandTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/ExpandTextView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lcom/allinone/callerid/customview/ExpandTextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/ExpandTextView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView$a;->b:Lcom/allinone/callerid/customview/ExpandTextView;

    iput-object p2, p0, Lcom/allinone/callerid/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandTextView$a;->b:Lcom/allinone/callerid/customview/ExpandTextView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/ExpandTextView;->a(Lcom/allinone/callerid/customview/ExpandTextView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandTextView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
