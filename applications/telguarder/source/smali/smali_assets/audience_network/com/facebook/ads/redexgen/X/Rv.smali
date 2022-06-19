.class public final Lcom/facebook/ads/redexgen/X/Rv;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 51013
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 51014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nh;->clearAnimation()V

    .line 51015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    .line 51016
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A00(Lcom/facebook/ads/redexgen/X/Nh;)F

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    .line 51017
    const/16 v0, 0x3e8

    invoke-static {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0G(IFLandroid/view/View;)V

    .line 51018
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Nh;->A01(Lcom/facebook/ads/redexgen/X/Nh;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51019
    return-void
.end method
