.class public final Lcom/facebook/ads/redexgen/X/TL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TH;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
    .locals 0

    .line 53965
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/TH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADm()V
    .locals 2

    .line 53966
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 53967
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 53968
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/TH;

    .line 53969
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    .line 53970
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TH;->A0H(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 53971
    return-void
.end method

.method public final AES()V
    .locals 1

    .line 53972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0G(Lcom/facebook/ads/redexgen/X/TH;)V

    .line 53973
    return-void
.end method
