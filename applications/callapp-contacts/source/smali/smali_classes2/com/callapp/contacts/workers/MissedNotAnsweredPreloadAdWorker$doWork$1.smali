.class public final Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->doWork()Landroidx/work/ListenableWorker$a;
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
        "com/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1",
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

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/ab$a;Lcom/callapp/framework/phone/Phone;JJIILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    iput-object p2, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->b:Lcom/callapp/framework/phone/Phone;

    iput-wide p3, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->c:J

    iput-wide p5, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->d:J

    iput p7, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->e:I

    iput p8, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->f:I

    iput-object p9, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->g:Ljava/util/concurrent/CountDownLatch;

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
    .locals 11

    const-string p1, "errorCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean p1, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->b:Lcom/callapp/framework/phone/Phone;

    iget-wide v1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->c:J

    iget-wide v3, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->d:J

    iget v5, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->e:I

    iget v6, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->f:I

    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v7

    if-nez v7, :cond_0

    const-string p1, "multiSizeAdLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V
    .locals 13

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean v0, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 88
    iget-object v2, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->b:Lcom/callapp/framework/phone/Phone;

    iget-wide v3, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->c:J

    iget-wide v5, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->d:J

    iget v7, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->e:I

    iget v8, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->f:I

    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v0, "multiSizeAdLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x0

    move-object v10, p1

    move v12, p2

    invoke-static/range {v2 .. v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->g:Ljava/util/concurrent/CountDownLatch;

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
    .locals 12

    const-string v0, "nativeErrorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean p1, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 112
    iget-object v1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->b:Lcom/callapp/framework/phone/Phone;

    iget-wide v2, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->c:J

    iget-wide v4, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->d:J

    iget v6, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->e:I

    iget v7, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->f:I

    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v8

    if-nez v8, :cond_0

    const-string p1, "multiSizeAdLoader"

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 13

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    iget-boolean v0, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->a:Lkotlin/jvm/internal/ab$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    .line 104
    iget-object v2, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->b:Lcom/callapp/framework/phone/Phone;

    iget-wide v3, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->c:J

    iget-wide v5, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->d:J

    iget v7, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->e:I

    iget v8, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->f:I

    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v0, "multiSizeAdLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v10, 0x0

    move-object v11, p1

    move v12, p2

    invoke-static/range {v2 .. v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$doWork$1;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
