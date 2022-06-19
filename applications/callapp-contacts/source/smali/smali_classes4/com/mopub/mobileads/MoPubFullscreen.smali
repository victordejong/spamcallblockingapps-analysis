.class public Lcom/mopub/mobileads/MoPubFullscreen;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubFullscreen$a;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "MoPubFullscreen"


# instance fields
.field d:Lcom/mopub/mobileads/AdData;

.field private e:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

.field private f:Landroid/content/Context;

.field private g:J

.field private h:Lcom/mopub/mobileads/VastManager;

.field private i:Lorg/json/JSONObject;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 171
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "time in seconds"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 173
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->onInvalidate()V

    return-void
.end method

.method public static synthetic lambda$VIHGyidB1od75orQlpPZ7z2jRo8(Lcom/mopub/mobileads/MoPubFullscreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->e()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 277
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 279
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    iget-wide v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:J

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;-><init>(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;J)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    .line 290
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    invoke-virtual {v0, v0, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->start(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    return-void

    .line 280
    :cond_1
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 281
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v3, v2, v1

    .line 280
    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void
.end method

.method final c()V
    .locals 4

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    .line 349
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xdbba00

    .line 352
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method final d()V
    .locals 2

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    .line 358
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 5

    .line 121
    const-class v0, Lcom/mopub/mobileads/MoPubFullscreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Called getAdNetworkId before load() or no ad unit associated. Returning class name."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    const-string v0, "mopub"

    return-object v0
.end method

.method public load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 97
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    .line 100
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p1

    .line 1135
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_6

    const-string v2, "com_mopub_orientation"

    .line 1140
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/AdData;->setOrientation(Lcom/mopub/common/CreativeOrientation;)V

    const-string v0, "video-trackers"

    .line 1142
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 1145
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1147
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "Failed to parse video trackers to JSON: "

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-static {v3, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1148
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;

    :cond_0
    :goto_0
    const/4 p1, 0x3

    .line 103
    :try_start_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:J
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1154
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v0, v4

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1156
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1157
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v3, p1, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 1158
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, p1, v2

    .line 1157
    invoke-static {p2, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1160
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_1

    .line 1164
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-nez p1, :cond_2

    .line 1165
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_1

    .line 1169
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    .line 1170
    new-instance p1, Lcom/mopub/mobileads/-$$Lambda$MoPubFullscreen$VIHGyidB1od75orQlpPZ7z2jRo8;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/-$$Lambda$MoPubFullscreen$VIHGyidB1od75orQlpPZ7z2jRo8;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    .line 1176
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1177
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->h:Lcom/mopub/mobileads/VastManager;

    .line 1178
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    .line 1179
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    .line 1178
    invoke-virtual {p1, p2, p0, v0, v2}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1180
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1181
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    .line 1234
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1235
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1239
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "image"

    .line 1240
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1248
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Image url is empty."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1249
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 1253
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/MoPubFullscreen$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubFullscreen$1;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;)V

    .line 1271
    invoke-static {p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object p1

    .line 1272
    invoke-virtual {p1, p2, v0}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1

    .line 1242
    :catch_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Unable to get image url."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1243
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 1183
    :cond_5
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/MoPubFullscreen;->preRenderWeb(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    .line 115
    :goto_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 105
    :catch_2
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "LocalExtras contained an incorrect type."

    aput-object v3, v0, v4

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 106
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p1, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 107
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v0, p1, v2

    .line 106
    invoke-static {p2, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 1136
    :cond_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Error extracting extras due to null ad data."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1137
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ad Data cannot be null here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onInvalidate()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->h:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->d()V

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    .line 301
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    .line 302
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 303
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 304
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:Landroid/content/Context;

    .line 306
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v1, v1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 308
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    :cond_1
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 324
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addVideoTrackers(Lorg/json/JSONObject;)V

    .line 332
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addViewabilityVendors(Ljava/util/Set;)V

    .line 333
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setRewarded(Z)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdData;->setVastVideoConfigString(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 340
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->c()V

    return-void

    .line 325
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_4

    .line 326
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_4
    return-void
.end method

.method public preRenderWeb(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 189
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    new-instance v2, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-direct {v2, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebView;->a()V

    .line 207
    new-instance v3, Lcom/mopub/mraid/MraidController;

    .line 208
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 210
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V

    .line 212
    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebView;->a()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    new-instance v2, Lcom/mopub/mobileads/HtmlWebView;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/HtmlWebView;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {p1, v3}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object v3

    .line 223
    :goto_0
    new-instance p1, Lcom/mopub/mobileads/MoPubFullscreen$a;

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-direct {p1, p0, v4}, Lcom/mopub/mobileads/MoPubFullscreen$a;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V

    invoke-virtual {v3, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 224
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v3, v1, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    .line 226
    invoke-static {v0, v2, p0, v3}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/BaseAd;Lcom/mopub/mobileads/MoPubWebViewController;)V

    return-void

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public shouldReportImpressionAndClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
