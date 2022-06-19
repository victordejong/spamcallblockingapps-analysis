.class public Lcom/mopub/mobileads/AmazonAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "SourceFile"


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "1.0"

.field public static final APP_KEY:Ljava/lang/String; = "appKey"

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "amazonA9"

.field private static cachedInitializationParametersSet:Z

.field private static jsonPricePoints:Lorg/json/JSONObject;

.field private static final networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sput-boolean v1, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->cachedInitializationParametersSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 32
    sput-object p0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->jsonPricePoints:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 153
    sget-object v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "amazonA9"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPricePoints(Ljava/lang/String;)D
    .locals 3

    .line 44
    sget-object v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->jsonPricePoints:Lorg/json/JSONObject;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/OnNetworkInitializationFinishedListener;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    sget-object p1, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    .line 93
    const-class p2, Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    monitor-enter p2

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 97
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "amazona9_app_id"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/ads/AdRegistration;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/device/ads/AdRegistration;

    .line 100
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->h()V

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "amazonFromDfpEnabled"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1.0"

    const-string v2, "2.0"

    const-string v3, "3.0"

    .line 102
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/AdRegistration;->a([Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/amazon/device/ads/MRAIDPolicy;->CUSTOM:Lcom/amazon/device/ads/MRAIDPolicy;

    invoke-static {v1}, Lcom/amazon/device/ads/AdRegistration;->a(Lcom/amazon/device/ads/MRAIDPolicy;)V

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/MRAIDPolicy;->MOPUB:Lcom/amazon/device/ads/MRAIDPolicy;

    invoke-static {v1}, Lcom/amazon/device/ads/AdRegistration;->a(Lcom/amazon/device/ads/MRAIDPolicy;)V

    .line 108
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->f()V

    .line 112
    :cond_1
    new-instance v1, Lcom/mopub/mobileads/AmazonAdapterConfiguration$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AmazonAdapterConfiguration$1;-><init>(Lcom/mopub/mobileads/AmazonAdapterConfiguration;)V

    .line 131
    invoke-virtual {v1}, Lcom/mopub/mobileads/AmazonAdapterConfiguration$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    :try_start_2
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Initializing Amazon has encountered an exception."

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 140
    :cond_2
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 143
    :cond_3
    :goto_2
    sget-object p1, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 147
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    sget-boolean v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->cachedInitializationParametersSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->cachedInitializationParametersSet:Z

    .line 80
    invoke-super {p0, p1, p2}, Lcom/mopub/common/BaseAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
