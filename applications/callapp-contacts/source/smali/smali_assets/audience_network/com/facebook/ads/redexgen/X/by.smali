.class public final Lcom/facebook/ads/redexgen/X/by;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/c2;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/JT;
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

    .line 71397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/by;->A01:Lcom/facebook/ads/redexgen/X/c2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADl()V
    .locals 2

    .line 71398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 71399
    return-void
.end method

.method public final ADo(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 71400
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/by;->A01:Lcom/facebook/ads/redexgen/X/c2;

    .line 71401
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cD;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/cD;

    move-result-object v1

    .line 71402
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/c2;->A0H(Lcom/facebook/ads/redexgen/X/c2;Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/JR;)V

    .line 71403
    return-void
.end method

.method public final AEQ()V
    .locals 1

    .line 71404
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/c2;->A0G(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 71405
    return-void
.end method
