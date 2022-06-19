.class public final Lcom/facebook/ads/redexgen/X/Je;
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

.field public final A06:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 40167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40168
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A01:I

    .line 40169
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:I

    .line 40170
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A06:Lcom/facebook/ads/redexgen/X/cD;

    .line 40171
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Je;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 40172
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 40173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 40174
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40175
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40176
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/JS;

    move-result-object v4

    .line 40177
    .local p0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/JS;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Je;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Je;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/7I;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;-><init>(ZII)V

    .line 40178
    .local v0, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/7I;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Je;->A06:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/cD;->A1U(Lcom/facebook/ads/redexgen/X/JS;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7I;)V

    .line 40179
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 40180
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Je;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 40181
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 40182
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Je;->A06:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1S(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V

    .line 40183
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 40184
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Je;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 40185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A03:Ljava/lang/String;

    .line 40186
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 40187
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 40188
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 40189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Je;->A04:Z

    .line 40190
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Je;->A01:I

    .line 40191
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Je;->A00:I

    .line 40192
    return-object p0
.end method
