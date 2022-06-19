.class public Lcom/mopub/mobileads/FacebookAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "SourceFile"


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "5.6.0.0"

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "facebook"

.field private static final NATIVE_BANNER_KEY:Ljava/lang/String; = "native_banner"

.field private static cachedInitializationParametersSet:Z

.field private static isNativeBanner:Ljava/lang/Boolean;

.field private static final networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private tokenReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sput-boolean v1, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->cachedInitializationParametersSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/FacebookAdapterConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static getNativeBannerPref()Ljava/lang/Boolean;
    .locals 1

    .line 132
    sget-object v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 156
    sget-object v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private refreshBidderToken(Landroid/content/Context;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isComputingToken:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;-><init>(Lcom/mopub/mobileads/FacebookAdapterConfiguration;Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method private static setNativeBannerPref(Ljava/lang/Boolean;)V
    .locals 0

    .line 136
    sput-object p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.6.0.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->refreshBidderToken(Landroid/content/Context;)V

    .line 53
    sget-object p1, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->tokenReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .locals 7
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

    .line 84
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    const-class v1, Lcom/mopub/mobileads/FacebookAdapterConfiguration;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/String;

    .line 91
    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v4

    .line 97
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v5

    const-string v6, "facebookAudienceNetworkMediationServiceString"

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v4, v5}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    .line 102
    :cond_0
    invoke-interface {v4}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    if-eqz p2, :cond_1

    .line 104
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "native_banner"

    .line 105
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    .line 107
    sput-object p2, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->isNativeBanner:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->setNativeBannerPref(Ljava/lang/Boolean;)V

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->refreshBidderToken(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Lcom/facebook/biddingkit/b/a;->a(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    :try_start_2
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "Initializing Facebook Audience Network has encountered an exception."

    aput-object v4, v0, v3

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 119
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 122
    :cond_3
    :goto_1
    sget-object p1, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 126
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

    .line 72
    sget-boolean v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->cachedInitializationParametersSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/mopub/mobileads/FacebookAdapterConfiguration;->cachedInitializationParametersSet:Z

    .line 74
    invoke-super {p0, p1, p2}, Lcom/mopub/common/BaseAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
