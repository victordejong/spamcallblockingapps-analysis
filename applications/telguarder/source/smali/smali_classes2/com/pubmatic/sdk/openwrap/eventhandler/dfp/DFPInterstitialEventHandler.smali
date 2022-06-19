.class public Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;
.super Lcom/google/android/gms/ads/AdListener;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEvent;
.implements Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;

.field private b:Ljava/lang/Boolean;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DFPInstlEventHandler"

    const-string v2, "Can not initialise DFPInterstitialAd on null context or null ad unit Id, please pass valid data."

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onAdServerWin()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->d:Ljava/util/Timer;

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->c()V

    new-instance v0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a;-><init>(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->d:Ljava/util/Timer;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->e:Landroid/content/Context;

    return-void
.end method

.method public getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/common/ui/POBInterstitialRendering;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DFPInstlEventHandler"

    const-string v3, "onAdFailedToLoad()"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/common/POBError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFP SDK failed with error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3ee

    invoke-direct {v0, v2, p1}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3ea

    const-string v2, "DFP SDK gives no fill error"

    invoke-direct {p1, v0, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3eb

    const-string v2, "DFP SDK gives network error"

    invoke-direct {p1, v0, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v0, 0x3e9

    const-string v2, "DFP SDK gives invalid request error"

    invoke-direct {p1, v0, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-interface {v1, p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not call failure callback, POBInterstitialEventListener reference null. DFP error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onAdClick()V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DFPInstlEventHandler"

    const-string v2, "onAdLoaded()"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onAppEvent() key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DFPInstlEventHandler"

    invoke-static {v3, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DFP callback partner name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bid id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "pubmaticdm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->onOpenWrapPartnerWin(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3f2

    const-string v0, "DFP ad server mismatched bid win signal"

    invoke-direct {p1, p2, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    const-string v1, "DFPInstlEventHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->c:Z

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a()V

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v4, :cond_0

    invoke-interface {v3, v4, v0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;->configure(Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :cond_0
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Do not set DFP listeners. These are used by DFPInterstitialEventHandler internally."

    invoke-static {v1, v4, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DFP Banner Ad unit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;->getBidsProvider()Lcom/pubmatic/sdk/common/base/POBBidsProvider;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidsProvider;->getTargetingInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->c:Z

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Targeting param ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->b:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Targeting sent in ad server request: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_1

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Can not call load, DFPInterstitial is not available."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setConfigListener(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$DFPConfigListener;

    return-void
.end method

.method public setEventListener(Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->g:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "DFP SDK is not ready to show Interstitial Ad."

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->h:Lcom/pubmatic/sdk/openwrap/interstitial/POBInterstitialEventListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->a(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DFPInstlEventHandler"

    invoke-static {v2, v0, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public trackClick()V
    .locals 0

    return-void
.end method

.method public trackImpression()V
    .locals 0

    return-void
.end method
