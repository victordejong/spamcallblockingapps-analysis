.class public final Lcom/facebook/ads/redexgen/X/Pq;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hq;->A06(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;)V
    .locals 0

    .line 48551
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A07(Lcom/facebook/ads/redexgen/X/Hq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 48554
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hq;->A03(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 48556
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 48558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Hq;->A02(Lcom/facebook/ads/redexgen/X/Hq;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 48559
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48560
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A07(Lcom/facebook/ads/redexgen/X/Hq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A00(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 48562
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hq;->A03(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 48563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hq;->A01(Lcom/facebook/ads/redexgen/X/Hq;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 48565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Lcom/facebook/ads/redexgen/X/Hq;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Hq;->A02(Lcom/facebook/ads/redexgen/X/Hq;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 48566
    :cond_1
    return-void
.end method
