.class public final Lcom/facebook/ads/redexgen/X/MG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bb;->A0b(Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/bb;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/bb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/bb;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 43760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Lcom/facebook/ads/redexgen/X/bb;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Lcom/facebook/ads/redexgen/X/bb;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MG;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 43761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MG;->A01:Lcom/facebook/ads/redexgen/X/bb;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A0V(Lcom/facebook/ads/redexgen/X/bb;Z)Z

    .line 43762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MG;->A02:Lcom/facebook/ads/redexgen/X/bb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 43763
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 43764
    .local p0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/bh;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/MG;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43765
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43766
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43767
    return-void
.end method
