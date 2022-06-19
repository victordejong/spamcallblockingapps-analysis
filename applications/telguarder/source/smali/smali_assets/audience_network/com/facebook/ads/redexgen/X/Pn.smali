.class public final Lcom/facebook/ads/redexgen/X/Pn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hb;->A09(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 0

    .line 48619
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A06(Lcom/facebook/ads/redexgen/X/Hb;Z)V

    .line 48621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A05(Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 48622
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48623
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A01(Lcom/facebook/ads/redexgen/X/Hb;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A03(Lcom/facebook/ads/redexgen/X/Hb;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;

    .line 48625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Lcom/facebook/ads/redexgen/X/Hb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hb;->A05(Lcom/facebook/ads/redexgen/X/Hb;)V

    .line 48626
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48627
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48628
    return-void
.end method
