.class public final Lcom/facebook/ads/redexgen/X/TM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TH;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JV;
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

    .line 53974
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/TH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADm()V
    .locals 2

    .line 53975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 53976
    return-void
.end method

.method public final ADp(Lcom/facebook/ads/NativeAd;)V
    .locals 4

    .line 53977
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/TH;

    .line 53978
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v2

    .line 53979
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/T6;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TI;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TI;-><init>(Lcom/facebook/ads/redexgen/X/T6;)V

    .line 53980
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/TH;->A0H(Lcom/facebook/ads/redexgen/X/TH;Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 53981
    return-void
.end method

.method public final AES()V
    .locals 1

    .line 53982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A0G(Lcom/facebook/ads/redexgen/X/TH;)V

    .line 53983
    return-void
.end method
