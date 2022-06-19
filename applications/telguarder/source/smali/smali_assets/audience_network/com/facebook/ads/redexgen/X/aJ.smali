.class public final Lcom/facebook/ads/redexgen/X/aJ;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aI;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aI;)V
    .locals 0

    .line 66862
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 66863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Lcom/facebook/ads/redexgen/X/aI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aJ;->A00:Lcom/facebook/ads/redexgen/X/aI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aI;->A01:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    .line 66865
    :cond_0
    return-void
.end method
