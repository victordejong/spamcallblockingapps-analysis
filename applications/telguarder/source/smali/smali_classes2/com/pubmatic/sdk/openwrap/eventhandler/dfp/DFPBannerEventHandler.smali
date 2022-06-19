.class public Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;
.super Lcom/google/android/gms/ads/AdListener;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;
.implements Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;

.field private b:Ljava/lang/Boolean;

.field private c:Z

.field private d:Ljava/util/Timer;

.field private e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdServerWin(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->d:Ljava/util/Timer;

    return-void
.end method

.method private c()V
    .locals 4

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b()V

    new-instance v0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$a;-><init>(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->d:Ljava/util/Timer;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b()V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    :cond_0
    iput-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    return-void
.end method

.method public getAdSize()Lcom/pubmatic/sdk/common/POBAdSize;
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer(Ljava/lang/String;)Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DFPBannerEventHandler"

    const-string v3, "onAdFailedToLoad()"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

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

    invoke-interface {v1, v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

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
    invoke-interface {v1, p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onFailed(Lcom/pubmatic/sdk/common/POBError;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not call failure callback, POBBannerEventListener reference null. DFP error:"

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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DFPBannerEventHandler"

    const-string v2, "onAdServerWin()"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->c()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onAdOpened()V

    :cond_0
    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DFPBannerEventHandler"

    const-string v3, "onAppEvent()"

    invoke-static {v2, v3, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFP Banner Ad size :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFP callback partner name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bid id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "pubmaticdm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->onOpenWrapPartnerWin(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3f2

    const-string v0, "DFP ad server mismatched bid win signal"

    invoke-direct {p1, p2, v0}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->a(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestAd(Lcom/pubmatic/sdk/openwrap/core/POBBid;)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const-string v1, "DFPBannerEventHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->c:Z

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-interface {v3, v4, v0, p1}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;->configure(Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/pubmatic/sdk/openwrap/core/POBBid;)V

    :cond_0
    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Do not set DFP listeners. These are used by DFPBannerEventHandler internally."

    invoke-static {v1, v4, v3}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DFP Banner Ad unit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

    invoke-interface {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;->getBidsProvider()Lcom/pubmatic/sdk/common/base/POBBidsProvider;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBBidsProvider;->getTargetingInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->c:Z

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

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

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->b:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_1

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "DFPBannerEventHandler has been destroyed, initialise it before calling requestAd()."

    invoke-static {v1, v0, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public requestedAdSizes()[Lcom/pubmatic/sdk/common/POBAdSize;
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->e:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSizes()[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    new-array v1, v1, [Lcom/pubmatic/sdk/common/POBAdSize;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/pubmatic/sdk/common/POBAdSize;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public setConfigListener(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler$DFPConfigListener;

    return-void
.end method

.method public setEventListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPBannerEventHandler;->f:Lcom/pubmatic/sdk/openwrap/banner/POBBannerEventListener;

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
