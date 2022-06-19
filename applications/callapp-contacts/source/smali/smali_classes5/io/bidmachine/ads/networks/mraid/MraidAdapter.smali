.class public Lio/bidmachine/ads/networks/mraid/MraidAdapter;
.super Lio/bidmachine/NetworkAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lio/bidmachine/AdsType;

    .line 16
    sget-object v1, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "mraid"

    const-string v2, "2.0"

    const-string v3, "1.7.1.1"

    invoke-direct {p0, v1, v2, v3, v0}, Lio/bidmachine/NetworkAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .locals 1

    .line 29
    new-instance v0, Lio/bidmachine/ads/networks/mraid/a;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/a;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 34
    new-instance v0, Lio/bidmachine/ads/networks/mraid/c;

    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->Static:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/c;-><init>(Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .locals 2

    .line 39
    new-instance v0, Lio/bidmachine/ads/networks/mraid/c;

    sget-object v1, Lcom/explorestack/iab/mraid/MraidActivity$MraidType;->Rewarded:Lcom/explorestack/iab/mraid/MraidActivity$MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/c;-><init>(Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V

    return-object v0
.end method

.method public setLogging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->debug:Lcom/explorestack/iab/utils/Logger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/explorestack/iab/utils/Logger$LogLevel;->none:Lcom/explorestack/iab/utils/Logger$LogLevel;

    :goto_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidLog;->setLoggingLevel(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method
