.class public final Lcom/facebook/ads/redexgen/X/ME;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SR;->A0a(Lcom/facebook/ads/redexgen/X/50;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SR;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/SR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/SR;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 43863
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/SR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/SR;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ME;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 43864
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ME;->A01:Lcom/facebook/ads/redexgen/X/SR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SR;->A0U(Lcom/facebook/ads/redexgen/X/SR;Z)Z

    .line 43865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ME;->A02:Lcom/facebook/ads/redexgen/X/SR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 43866
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 43867
    .local p0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/SU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/SU;-><init>(Lcom/facebook/ads/redexgen/X/ME;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43868
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43869
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43870
    return-void
.end method
