.class public final Lcom/facebook/ads/redexgen/X/3p;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eo;->A0V(Lcom/facebook/ads/redexgen/X/3r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/3r;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Eo;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/3r;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 9978
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/Eo;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/3r;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3p;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 9979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3p;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 9980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 9982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 9983
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/3r;->A05:Lcom/facebook/ads/redexgen/X/4c;

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A0P(Lcom/facebook/ads/redexgen/X/4c;Z)V

    .line 9984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/Eo;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eo;->A02:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A02:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3r;->A05:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A03:Lcom/facebook/ads/redexgen/X/Eo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eo;->A0U()V

    .line 9986
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 9987
    return-void
.end method
