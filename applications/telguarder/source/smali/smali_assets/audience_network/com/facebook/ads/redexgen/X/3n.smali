.class public final Lcom/facebook/ads/redexgen/X/3n;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eo;->A0W(Lcom/facebook/ads/redexgen/X/4c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Eo;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/4c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 9957
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Landroid/view/View;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3n;->A01:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 9958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9959
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 9960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 9961
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A0M(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 9962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eo;->A00:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A0U()V

    .line 9964
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 9965
    return-void
.end method
