.class public final Lcom/facebook/ads/redexgen/X/RM;
.super Lcom/facebook/ads/redexgen/X/Li;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RL;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/RL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RL;)V
    .locals 0

    .line 49991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/RL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Li;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 49992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/RL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RL;->A01:Lcom/facebook/ads/redexgen/X/Of;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 49993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/RL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/RL;->A00:Lcom/facebook/ads/redexgen/X/Oe;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oe;->AAV()V

    .line 49994
    return-void
.end method
