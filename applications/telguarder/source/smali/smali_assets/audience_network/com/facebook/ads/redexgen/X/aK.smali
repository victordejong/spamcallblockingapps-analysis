.class public final Lcom/facebook/ads/redexgen/X/aK;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aH;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aH;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aH;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 0

    .line 66866
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aK;->A00:Lcom/facebook/ads/redexgen/X/aH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aK;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 66867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aK;->A00:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aK;->A00:Lcom/facebook/ads/redexgen/X/aH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aH;->A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;

    move-result-object v0

    .line 66869
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5G;->A02()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aK;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    .line 66870
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A00(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    .line 66871
    :cond_0
    return-void
.end method
