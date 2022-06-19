.class public final Lcom/facebook/ads/redexgen/X/Pm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hv;->A08(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hv;)V
    .locals 0

    .line 48509
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Hv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Hv;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hv;->A05(Lcom/facebook/ads/redexgen/X/Hv;Z)V

    .line 48511
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Hv;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hv;->A02(Lcom/facebook/ads/redexgen/X/Hv;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 48513
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pm;->A00:Lcom/facebook/ads/redexgen/X/Hv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hv;->A04(Lcom/facebook/ads/redexgen/X/Hv;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 48514
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48515
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48516
    return-void
.end method
