.class Lcom/callapp/contacts/util/ads/AppBidder$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/AppBidder$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/callapp/contacts/util/ads/AppBidder$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/AppBidder$6;J)V
    .locals 0

    .line 987
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iput-wide p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 9

    .line 989
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->h:Z

    if-eqz v0, :cond_0

    .line 990
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 991
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0x8

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ad_network"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 992
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "fill"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "true"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "adType"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    .line 994
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    const/4 p1, 0x6

    const-string v3, "duration"

    aput-object v3, v8, p1

    const/4 p1, 0x7

    iget-wide v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a:J

    sub-long/2addr v0, v3

    .line 995
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, p1

    const-string v3, "Ad"

    const-string v4, "load_ad_ended"

    .line 991
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 9

    .line 1000
    sget-boolean v0, Lcom/callapp/contacts/util/ads/AppBidder;->h:Z

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1002
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/16 v3, 0xa

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ad_network"

    aput-object v4, v8, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v4, v4, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->bidder:Lcom/callapp/contacts/util/ads/bidder/Bidder;

    .line 1003
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    const-string v4, "fill"

    aput-object v4, v8, v3

    const/4 v3, 0x3

    const-string v4, "false"

    aput-object v4, v8, v3

    const/4 v3, 0x4

    const-string v4, "adType"

    aput-object v4, v8, v3

    const/4 v3, 0x5

    .line 1005
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    const/4 p1, 0x6

    const-string v3, "error"

    aput-object v3, v8, p1

    const/4 p1, 0x7

    aput-object p2, v8, p1

    const/16 p1, 0x8

    const-string p2, "duration"

    aput-object p2, v8, p1

    const/16 p1, 0x9

    iget-wide v3, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a:J

    sub-long/2addr v0, v3

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, p1

    const-string v3, "Ad"

    const-string v4, "load_ad_ended"

    .line 1002
    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1023
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(ILjava/lang/String;)V

    .line 1025
    const-class p1, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RequestId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", banner failed to load from bidder"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1027
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 2

    const/4 p2, 0x1

    .line 1013
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(I)V

    .line 1015
    const-class p2, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", banner loaded from bidder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1017
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iput-object p1, p2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    .line 1018
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1061
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(ILjava/lang/String;)V

    .line 1063
    const-class p1, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RequestId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", interstitial failed to load from bidder"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1065
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3

    const/4 v0, 0x4

    .line 1051
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(I)V

    .line 1053
    const-class v0, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", interstitial loaded from bidder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iput-object p1, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1056
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/AppBidder$6;->c:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_0
    return-void
.end method

.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 2

    .line 1042
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(ILjava/lang/String;)V

    .line 1044
    const-class p1, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", native failed to load from bidder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1046
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 2

    const/4 p2, 0x0

    .line 1032
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->a(I)V

    .line 1034
    const-class p2, Lcom/callapp/contacts/util/ads/AppBidder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/AppBidder$6;->d:Lcom/callapp/contacts/util/ads/AppBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/AppBidder;->b(Lcom/callapp/contacts/util/ads/AppBidder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", native loaded from bidder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1036
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p2, p2, Lcom/callapp/contacts/util/ads/AppBidder$6;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iput-object p1, p2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    .line 1037
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/AppBidder$6$1;->b:Lcom/callapp/contacts/util/ads/AppBidder$6;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/AppBidder$6;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
