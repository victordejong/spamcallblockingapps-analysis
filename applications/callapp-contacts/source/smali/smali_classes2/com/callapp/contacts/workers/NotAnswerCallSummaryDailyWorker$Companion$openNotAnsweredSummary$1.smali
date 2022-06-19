.class public final Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "com/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1",
        "Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;",
        "onBannerAdFailed",
        "",
        "banner",
        "Lcom/mopub/mobileads/MoPubView;",
        "errorCode",
        "Lcom/mopub/mobileads/MoPubErrorCode;",
        "onBannerAdLoaded",
        "adView",
        "disableRefresh",
        "",
        "onNativeAdFailed",
        "nativeErrorCode",
        "Lcom/mopub/nativeads/NativeErrorCode;",
        "onNativeAdLoaded",
        "nativeAd",
        "Lcom/mopub/nativeads/NativeAd;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/ab$a;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/util/Pair;

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/ab$a;Ljava/util/List;Landroid/util/Pair;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    iput-object p2, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->c:Landroid/util/Pair;

    iput-object p4, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAdClick()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onAdClick(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V

    return-void
.end method

.method public final onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 6

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean p1, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 91
    sget-object p1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->b:Ljava/util/List;

    const-string p1, "callList"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->c:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string p2, "yesterdayCalls.second"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1c

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean v0, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 83
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    iget-object v1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->b:Ljava/util/List;

    const-string v0, "callList"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "yesterdayCalls.second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0x8

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialClicked(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialDismissed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialFailed(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public synthetic onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialLoaded(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public synthetic onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents$-CC;->$default$onInterstitialShown(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method

.method public final onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 6

    const-string v0, "nativeErrorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean p1, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 107
    sget-object p1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->b:Ljava/util/List;

    const-string p1, "callList"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->c:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "yesterdayCalls.second"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1c

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean v0, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 99
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    iget-object v1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->b:Ljava/util/List;

    const-string v0, "callList"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "yesterdayCalls.second"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a(Ljava/util/List;ILcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;ZI)V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion$openNotAnsweredSummary$1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
