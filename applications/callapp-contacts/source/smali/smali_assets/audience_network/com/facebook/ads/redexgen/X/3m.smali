.class public final Lcom/facebook/ads/redexgen/X/3m;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Et;->A03(Lcom/facebook/ads/redexgen/X/4c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Et;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/4c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/4c;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 9842
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/4c;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3m;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 9843
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 9844
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A0O(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 9846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Et;->A06:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A02:Lcom/facebook/ads/redexgen/X/Et;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Et;->A0U()V

    .line 9848
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 9849
    return-void
.end method
