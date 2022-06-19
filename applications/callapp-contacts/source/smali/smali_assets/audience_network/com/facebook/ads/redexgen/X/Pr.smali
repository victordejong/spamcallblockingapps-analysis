.class public final Lcom/facebook/ads/redexgen/X/Pr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hk;->A07(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Hk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hk;II)V
    .locals 0

    .line 48567
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 48568
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A09(Lcom/facebook/ads/redexgen/X/Hk;IIZ)V

    .line 48569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Lcom/facebook/ads/redexgen/X/Hk;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48572
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 48573
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    .line 48574
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hk;->A00(Lcom/facebook/ads/redexgen/X/Hk;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 48575
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    .line 48576
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A03(Lcom/facebook/ads/redexgen/X/Hk;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 48577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hk;->A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 48579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/Hk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A02(Lcom/facebook/ads/redexgen/X/Hk;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48580
    :cond_0
    return-void

    .line 48581
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48582
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48583
    return-void
.end method
