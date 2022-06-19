.class public final Lcom/facebook/ads/redexgen/X/T5;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ok;->A04(Lcom/facebook/ads/redexgen/X/Oj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oj;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Ok;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ok;Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 0

    .line 53339
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/Ok;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T5;->A00:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 53340
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 53341
    .local p0, "hideAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 53342
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53343
    new-instance v0, Lcom/facebook/ads/redexgen/X/T9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T9;-><init>(Lcom/facebook/ads/redexgen/X/T5;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/Ok;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ok;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53345
    return-void
.end method
