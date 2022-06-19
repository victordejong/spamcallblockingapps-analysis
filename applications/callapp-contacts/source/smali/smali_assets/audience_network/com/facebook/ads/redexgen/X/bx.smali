.class public final Lcom/facebook/ads/redexgen/X/bx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c2;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/c2;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
    .locals 0

    .line 71387
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bx;->A01:Lcom/facebook/ads/redexgen/X/c2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADl()V
    .locals 2

    .line 71388
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 71389
    return-void
.end method

.method public final ADo(Lcom/facebook/ads/NativeAd;)V
    .locals 4

    .line 71390
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bx;->A01:Lcom/facebook/ads/redexgen/X/c2;

    .line 71391
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v2

    .line 71392
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/c1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/c1;-><init>(Lcom/facebook/ads/redexgen/X/cD;)V

    .line 71393
    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/c2;->A0H(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/JR;)V

    .line 71394
    return-void
.end method

.method public final AEQ()V
    .locals 1

    .line 71395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bx;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c2;->A0G(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 71396
    return-void
.end method
