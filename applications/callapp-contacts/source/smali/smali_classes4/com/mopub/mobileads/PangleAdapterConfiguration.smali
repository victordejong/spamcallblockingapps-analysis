.class public Lcom/mopub/mobileads/PangleAdapterConfiguration;
.super Lcom/mopub/common/BaseAdapterConfiguration;
.source "SourceFile"


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "PangleAdapterConfiguration"

.field private static final ADAPTER_VERSION:Ljava/lang/String; = "1.0"

.field public static final AD_PLACEMENT_ID_EXTRA_KEY:Ljava/lang/String; = "ad_placement_id"

.field public static final ALLOW_AD_IN_LOCK_SCREEN_EXTRA_KEY:Ljava/lang/String; = "allow_lock_screen"

.field public static final APP_ID_EXTRA_KEY:Ljava/lang/String; = "app_id"

.field public static final CONTENT_TYPE_ERROR:I = 0x9c40

.field private static final MOPUB_NETWORK_NAME:Ljava/lang/String; = "pangle"

.field public static final NO_AD:I = 0x4e21

.field public static final PLACEMENT_EMPTY_ERROR:I = 0x9c44

.field public static final PLACEMENT_ERROR:I = 0x9c46

.field public static final REQUEST_PARAMETER_ERROR:I = 0x9c41

.field public static final SUPPORT_MULTIPROCESS_EXTRA_KEY:Ljava/lang/String; = "support_multiprocess"

.field private static cachedInitializationParametersSet:Z

.field private static mMediaExtra:Ljava/lang/String;

.field private static mMediaViewHeight:I

.field private static mMediaViewWidth:I

.field private static mRewardAmount:I

.field private static mRewardName:Ljava/lang/String;

.field private static mUserID:Ljava/lang/String;

.field private static final networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsAllowAdShowInLockScreen:Z

.field private static sIsSDKInitialized:Z

.field private static sIsSupportMultiProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    sput-boolean v1, Lcom/mopub/mobileads/PangleAdapterConfiguration;->cachedInitializationParametersSet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mopub/common/BaseAdapterConfiguration;-><init>()V

    return-void
.end method

.method private static getAdCallSource()Lorg/json/JSONArray;
    .locals 7

    const-string v0, "value"

    const-string v1, "name"

    .line 184
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 187
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "mediation"

    .line 188
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mopub"

    .line 189
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 192
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "adapter_version"

    .line 193
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "1.2.0"

    .line 194
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/mopub/mobileads/PangleAdapterConfiguration;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AdCallSource encounter parsing error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method public static getMediaExtra()Ljava/lang/String;
    .locals 1

    .line 266
    sget-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaExtra:Ljava/lang/String;

    return-object v0
.end method

.method public static getMediaViewHeight()I
    .locals 1

    .line 278
    sget v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaViewHeight:I

    return v0
.end method

.method public static getMediaViewWidth()I
    .locals 1

    .line 270
    sget v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaViewWidth:I

    return v0
.end method

.method public static getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRewardAmount()I
    .locals 1

    .line 250
    sget v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mRewardAmount:I

    return v0
.end method

.method public static getRewardName()Ljava/lang/String;
    .locals 1

    .line 242
    sget-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .line 258
    sget-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method private static hasWakeLockPermission(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x1000

    .line 206
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 207
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.WAKE_LOCK"

    if-eqz p0, :cond_1

    .line 209
    array-length v2, p0

    if-lez v2, :cond_1

    .line 210
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 286
    sget-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static mapErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 233
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 231
    :sswitch_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 226
    :sswitch_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 224
    :sswitch_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 228
    :sswitch_3
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4e21 -> :sswitch_3
        0x9c40 -> :sswitch_2
        0x9c41 -> :sswitch_1
        0x9c44 -> :sswitch_0
        0x9c46 -> :sswitch_0
    .end sparse-switch
.end method

.method private static pangleSdkInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 157
    :cond_0
    sget-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsSDKInitialized:Z

    if-nez v0, :cond_3

    .line 158
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Lcom/mopub/mobileads/PangleAdapterConfiguration;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Pangle SDK initializes with app ID: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 160
    invoke-static {p0}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    const-string v5, "For video ads to work in Pangle Ad TextureView, declare the android.permission.WAKE_LOCK permission in your AndroidManifest."

    aput-object v5, v1, v3

    invoke-static {v4, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 166
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 167
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    const-string v0, "pangle"

    .line 169
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    sget-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsAllowAdShowInLockScreen:Z

    .line 170
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 172
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    sget-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsSupportMultiProcess:Z

    .line 173
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 175
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getAdCallSource()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->data(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 178
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p0

    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-interface {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 179
    sput-boolean v3, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsSDKInitialized:Z

    :cond_3
    return-void

    .line 152
    :cond_4
    :goto_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "Invalid Pangle app ID. Ensure the app id is valid on the MoPub dashboard."

    aput-object v0, p1, v3

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setMediaExtra(Ljava/lang/String;)V
    .locals 0

    .line 262
    sput-object p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaExtra:Ljava/lang/String;

    return-void
.end method

.method public static setMediaViewHeight(I)V
    .locals 0

    .line 282
    sput p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaViewHeight:I

    return-void
.end method

.method public static setMediaViewWidth(I)V
    .locals 0

    .line 274
    sput p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mMediaViewWidth:I

    return-void
.end method

.method public static setRewardAmount(I)V
    .locals 0

    .line 246
    sput p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mRewardAmount:I

    return-void
.end method

.method public static setRewardName(Ljava/lang/String;)V
    .locals 0

    .line 238
    sput-object p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mRewardName:Ljava/lang/String;

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 0

    .line 254
    sput-object p0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->mUserID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0"

    return-object v0
.end method

.method public getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 82
    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getPangleSdkManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMoPubNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 3

    .line 94
    sget-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsSDKInitialized:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
    .locals 6
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

    .line 114
    const-class v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    sget-object v1, Lcom/mopub/mobileads/PangleAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    monitor-enter v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v4

    const-string v5, "pangle_app_id"

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_2

    .line 121
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "support_multiprocess"

    .line 123
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "support_multiprocess"

    .line 124
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sput-boolean v5, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsSupportMultiProcess:Z

    const-string v5, "allow_lock_screen"

    .line 125
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "allow_lock_screen"

    .line 126
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    sput-boolean p2, Lcom/mopub/mobileads/PangleAdapterConfiguration;->sIsAllowAdShowInLockScreen:Z

    .line 128
    :cond_2
    invoke-static {p1, v4}, Lcom/mopub/mobileads/PangleAdapterConfiguration;->pangleSdkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 131
    :try_start_1
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Initializing Pangle has encountered an exception."

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {p2, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 134
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    sget-object p1, Lcom/mopub/mobileads/PangleAdapterConfiguration;->networkInitializationSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_INITIALIZATION_SUCCESS:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, v0, p1}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 140
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p3, v0, p1}, Lcom/mopub/common/OnNetworkInitializationFinishedListener;->onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_4

    .line 134
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :goto_4
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

    .line 105
    sget-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->cachedInitializationParametersSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    sput-boolean v0, Lcom/mopub/mobileads/PangleAdapterConfiguration;->cachedInitializationParametersSet:Z

    .line 107
    invoke-super {p0, p1, p2}, Lcom/mopub/common/BaseAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
