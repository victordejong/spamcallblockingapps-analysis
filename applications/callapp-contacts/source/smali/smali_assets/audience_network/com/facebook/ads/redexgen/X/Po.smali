.class public final Lcom/facebook/ads/redexgen/X/Po;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hv;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Hv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hv;Landroid/view/View;)V
    .locals 0

    .line 48531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Po;->A01:Lcom/facebook/ads/redexgen/X/Hv;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 48532
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 48533
    .local p0, "value":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 48534
    .local p1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Po;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48536
    return-void
.end method
