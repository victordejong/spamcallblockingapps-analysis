.class public final Lcom/facebook/ads/redexgen/X/El;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5B;)V
    .locals 0

    .line 29734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KU;)V
    .locals 2

    .line 29735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 29736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/5B;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5B;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v1

    .line 29737
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1b(ZZ)V

    .line 29738
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/El;->A00:Lcom/facebook/ads/redexgen/X/5B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5B;->A00(Lcom/facebook/ads/redexgen/X/5B;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    .line 29739
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 29740
    check-cast p1, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/El;->A00(Lcom/facebook/ads/redexgen/X/KU;)V

    return-void
.end method
