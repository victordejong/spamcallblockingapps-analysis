.class public final Lcom/facebook/ads/redexgen/X/3n;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Et;->A0W(Lcom/facebook/ads/redexgen/X/4c;)V
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Et;Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 9850
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Landroid/view/View;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/3n;->A01:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 9851
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 9852
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 9853
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 9854
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TQ;->A0M(Lcom/facebook/ads/redexgen/X/4c;)V

    .line 9855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Et;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Et;->A00:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A03:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3n;->A02:Lcom/facebook/ads/redexgen/X/Et;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Et;->A0U()V

    .line 9857
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 9858
    return-void
.end method
