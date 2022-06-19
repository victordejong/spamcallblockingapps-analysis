.class public final Lcom/facebook/ads/redexgen/X/Pt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hi;->A09(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hi;)V
    .locals 0

    .line 48594
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 48595
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A08(Lcom/facebook/ads/redexgen/X/Hi;Z)V

    .line 48596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A06(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 48597
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 48598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;

    .line 48599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A02(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 48600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pt;->A00:Lcom/facebook/ads/redexgen/X/Hi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hi;->A06(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 48601
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 48602
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 48603
    return-void
.end method
