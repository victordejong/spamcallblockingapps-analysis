.class public final Lcom/facebook/ads/redexgen/X/Pi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hk;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hk;)V
    .locals 0

    .line 48552
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A06(Lcom/facebook/ads/redexgen/X/Hk;Z)V

    .line 48554
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Lcom/facebook/ads/redexgen/X/Hk;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48557
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A04(Lcom/facebook/ads/redexgen/X/Hk;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    .line 48559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A03(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 48560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48562
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Lcom/facebook/ads/redexgen/X/Hk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Lcom/facebook/ads/redexgen/X/Hk;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48563
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48564
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48565
    return-void
.end method
