.class public final Lcom/facebook/ads/redexgen/X/RL;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Of;->A04(Lcom/facebook/ads/redexgen/X/Oe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oe;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Of;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Of;Lcom/facebook/ads/redexgen/X/Oe;)V
    .locals 0

    .line 49984
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Of;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RL;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 49985
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 49986
    .local p0, "hideAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 49987
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49988
    new-instance v0, Lcom/facebook/ads/redexgen/X/RM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RM;-><init>(Lcom/facebook/ads/redexgen/X/RL;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Of;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Of;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49990
    return-void
.end method
