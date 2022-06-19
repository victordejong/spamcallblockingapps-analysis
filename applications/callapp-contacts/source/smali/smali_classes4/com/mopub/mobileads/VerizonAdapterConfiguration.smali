.class public Lcom/mopub/mobileads/VerizonAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "SourceFile"


# static fields
.field private static final ADAPTER_VERSION:Ljava/lang/String; = "1.5.0.0"

.field public static final MEDIATOR_ID:Ljava/lang/String; = "MoPubVAS-1.5.0.0"

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "Verizon"

.field static final REQUEST_METADATA_AD_CONTENT_KEY:Ljava/lang/String; = "adContent"

.field public static final SERVER_EXTRAS_AD_CONTENT_KEY:Ljava/lang/String; = "adm"

.field public static final VAS_SITE_ID_KEY:Ljava/lang/String; = "siteId"

.field private static cachedInitializationParametersSet:Z

.field private static final networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-boolean v1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->cachedInitializationParametersSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 28
    sget-object v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 150
    sget-object v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.0.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Verizon"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 3

    const-string v0, "com.verizon.ads"

    const-string v1, "editionVersion"

    const/4 v2, 0x0

    .line 74
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .locals 1
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

    .line 91
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object p2

    .line 96
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x3

    .line 97
    invoke-static {p2}, Lcom/verizon/ads/VASAds;->setLogLevel(I)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x4

    .line 99
    invoke-static {p2}, Lcom/verizon/ads/VASAds;->setLogLevel(I)V

    .line 102
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p2

    const-string v0, "verizon_app_id"

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const-class p1, Lcom/mopub/mobileads/VerizonAdapterConfiguration;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 118
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mopub/mobileads/VerizonAdapterConfiguration$1;-><init>(Lcom/mopub/mobileads/VerizonAdapterConfiguration;Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
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

    .line 63
    sget-boolean v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->cachedInitializationParametersSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/mopub/mobileads/VerizonAdapterConfiguration;->cachedInitializationParametersSet:Z

    .line 65
    invoke-super {p0, p1, p2}, Lcom/mopub/common/BaseAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
