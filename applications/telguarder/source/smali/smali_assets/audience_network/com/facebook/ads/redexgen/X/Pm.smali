.class public final Lcom/facebook/ads/redexgen/X/Pm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/He;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/He;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/He;II)V
    .locals 0

    .line 48602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 48603
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/He;->A08(Lcom/facebook/ads/redexgen/X/He;IIZ)V

    .line 48604
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/He;->A01(Lcom/facebook/ads/redexgen/X/He;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/He;->A01(Lcom/facebook/ads/redexgen/X/He;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/He;->A02(Lcom/facebook/ads/redexgen/X/He;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48607
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 48608
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    .line 48609
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A01:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/He;->A00(Lcom/facebook/ads/redexgen/X/He;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 48610
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 48611
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/He;->A03(Lcom/facebook/ads/redexgen/X/He;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    .line 48612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/He;->A01(Lcom/facebook/ads/redexgen/X/He;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/He;->A01(Lcom/facebook/ads/redexgen/X/He;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48614
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A02:Lcom/facebook/ads/redexgen/X/He;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/He;->A02(Lcom/facebook/ads/redexgen/X/He;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48615
    :cond_0
    return-void

    .line 48616
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48617
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48618
    return-void
.end method
