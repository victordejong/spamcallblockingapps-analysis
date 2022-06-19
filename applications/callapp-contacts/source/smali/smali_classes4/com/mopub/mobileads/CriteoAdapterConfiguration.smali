.class public Lcom/mopub/mobileads/CriteoAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "SourceFile"


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "1.6.2"

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "criteo"

.field private static cachedInitializationParametersSet:Z

.field private static final networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    sput-boolean v1, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->cachedInitializationParametersSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.6.2"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "criteo"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

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

    .line 73
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    .line 77
    const-class p2, Lcom/mopub/mobileads/CriteoAdapterConfiguration;

    monitor-enter p2

    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 81
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v3, Lcom/criteo/publisher/Criteo$Builder;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v5

    const-string v6, "criteo_app_id"

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/Criteo$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v2}, Lcom/criteo/publisher/Criteo$Builder;->adUnits(Ljava/util/List;)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object v2

    .line 85
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    .line 86
    sget-object v4, Lcom/mopub/mobileads/CriteoAdapterConfiguration$1;->$SwitchMap$com$callapp$contacts$util$ads$AdUtils$ConsentStatus:[I

    invoke-virtual {v3}, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v1, :cond_1

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/Criteo$Builder;->mopubConsent(Ljava/lang/String;)Lcom/criteo/publisher/Criteo$Builder;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/criteo/publisher/Criteo$Builder;->mopubConsent(Ljava/lang/String;)Lcom/criteo/publisher/Criteo$Builder;

    .line 97
    :goto_0
    invoke-virtual {v2}, Lcom/criteo/publisher/Criteo$Builder;->init()Lcom/criteo/publisher/Criteo;

    .line 99
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 101
    :try_start_2
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Initializing Criteo has encountered an exception."

    aput-object v4, v0, v3

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 105
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

    .line 108
    :cond_3
    :goto_2
    sget-object p1, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 112
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

    .line 62
    sget-boolean v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->cachedInitializationParametersSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 63
    sput-boolean v0, Lcom/mopub/mobileads/CriteoAdapterConfiguration;->cachedInitializationParametersSet:Z

    .line 64
    invoke-super {p0, p1, p2}, Lcom/mopub/common/BaseAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
