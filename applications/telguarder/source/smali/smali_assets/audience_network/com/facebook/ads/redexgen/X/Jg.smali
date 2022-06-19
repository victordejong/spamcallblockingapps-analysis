.class public final Lcom/facebook/ads/redexgen/X/Jg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 40308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40309
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A01:I

    .line 40310
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A00:I

    .line 40311
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A06:Lcom/facebook/ads/redexgen/X/T6;

    .line 40312
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jg;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 40313
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 40314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 40315
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40316
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40317
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/JU;

    move-result-object v4

    .line 40318
    .local p0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/JU;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Jg;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;-><init>(ZII)V

    .line 40319
    .local v0, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/7I;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A06:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/T6;->A1U(Lcom/facebook/ads/redexgen/X/JU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7I;)V

    .line 40320
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 40321
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 40322
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 40323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A06:Lcom/facebook/ads/redexgen/X/T6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1S(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V

    .line 40324
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 40325
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Jg;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 40326
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A03:Ljava/lang/String;

    .line 40327
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 40328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40329
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 40330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jg;->A04:Z

    .line 40331
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jg;->A01:I

    .line 40332
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Jg;->A00:I

    .line 40333
    return-object p0
.end method
