.class public final Lcom/facebook/ads/redexgen/X/Wa;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/91;->A0C(Lcom/facebook/ads/redexgen/X/Wl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 0

    .line 64414
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wa;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 64415
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 64416
    .local p0, "dynamicLoader":Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    if-eqz v0, :cond_0

    .line 64417
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createBidderTokenProviderApi()Lcom/facebook/ads/internal/api/BidderTokenProviderApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wa;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/BidderTokenProviderApi;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    .line 64418
    :cond_0
    return-void
.end method
