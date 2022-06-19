.class public final Lcom/facebook/ads/redexgen/X/3o;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Et;->A0X(Lcom/facebook/ads/redexgen/X/4c;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Landroid/view/View;

.field public final synthetic A03:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Et;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/4c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/4c;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 9859
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:Lcom/facebook/ads/redexgen/X/Et;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:Lcom/facebook/ads/redexgen/X/4c;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:Landroid/view/View;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/3o;->A03:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 9860
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A00:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 9862
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    if-eqz v0, :cond_1

    .line 9863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 9864
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 9865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A03:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 9866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A0N(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 9867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Et;->A04:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A05:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3o;->A04:Lcom/facebook/ads/redexgen/X/Et;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Et;->A0U()V

    .line 9869
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 9870
    return-void
.end method
