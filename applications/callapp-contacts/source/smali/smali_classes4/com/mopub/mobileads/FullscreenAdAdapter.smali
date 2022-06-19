.class public Lcom/mopub/mobileads/FullscreenAdAdapter;
.super Lcom/mopub/mobileads/AdAdapter;
.source "SourceFile"


# instance fields
.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/AdAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V

    .line 34
    invoke-virtual {p3}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->j:J

    .line 35
    invoke-virtual {p3}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->i:Ljava/util/Map;

    .line 36
    invoke-virtual {p3}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->k:Ljava/lang/String;

    .line 38
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempting to invoke base ad: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/BaseAdFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/BaseAd;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->b:Lcom/mopub/mobileads/BaseAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Activity Context is required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Invalidating a base ad interstitial threw an exception."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->j:J

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/mopub/mobileads/WebViewCacheService$Config;->invalidate()V

    :cond_1
    return-void
.end method

.method final a(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 5

    .line 52
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdAdapter;->c()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    if-nez p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdAdapter;->b:Lcom/mopub/mobileads/BaseAd;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/BaseAd;->a(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 62
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Calling show on base ad threw an exception."

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 65
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v1, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 67
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    .line 65
    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 68
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/FullscreenAdAdapter;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 0

    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 0

    return-void
.end method
