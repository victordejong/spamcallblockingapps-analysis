.class public Lnet/pubnative/lite/sdk/HyBid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;
    }
.end annotation


# static fields
.field public static final HYBID_VERSION:Ljava/lang/String; = "2.4.3"

.field public static final OMSDK_VERSION:Ljava/lang/String; = "1.3.17"

.field public static final OM_PARTNER_NAME:Ljava/lang/String; = "pubnativenet"

.field private static final REPORTING_URL:Ljava/lang/String; = "https://rta-analytics.pubnative.io/event"

.field private static final TAG:Ljava/lang/String; = "HyBid"

.field private static sAdCache:Lnet/pubnative/lite/sdk/AdCache; = null

.field private static sAge:Ljava/lang/String; = null

.field private static sApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient; = null

.field private static sAppToken:Ljava/lang/String; = null

.field private static sAppVersion:Ljava/lang/String; = null

.field private static sBrowserManager:Lnet/pubnative/lite/sdk/browser/BrowserManager; = null

.field private static sBundleId:Ljava/lang/String; = null

.field private static sConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager; = null

.field private static sContentAgeRating:Ljava/lang/String; = null

.field private static sCoppaEnabled:Z = false

.field private static sDeveloperDomain:Ljava/lang/String; = null

.field private static sDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo; = null

.field private static sGender:Ljava/lang/String; = null

.field private static sIabCategory:Ljava/lang/String; = null

.field private static sIabSubcategory:Ljava/lang/String; = null

.field private static sInitialized:Z = false

.field private static sInterstitialSkipOffset:Ljava/lang/Integer; = null

.field private static sKeywords:Ljava/lang/String; = null

.field private static sLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager; = null

.field private static sLocationTrackingEnabled:Z = true

.field private static sLocationUpdatesEnabled:Z = true

.field private static sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController; = null

.field private static sReportingDelegate:Lnet/pubnative/lite/sdk/reporting/ReportingDelegate; = null

.field private static sTestMode:Z = false

.field private static sUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

.field private static sVgiIdManager:Lnet/pubnative/lite/sdk/VgiIdManager;

.field private static sVideoAdCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

.field private static sViewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sInterstitialSkipOffset:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/pubnative/lite/sdk/DeviceInfo;
    .locals 1

    .line 41
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$100()Lnet/pubnative/lite/sdk/UserDataManager;
    .locals 1

    .line 41
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    return-object v0
.end method

.method public static addReportingCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)V
    .locals 1

    .line 259
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->addCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)V

    return-void
.end method

.method public static areLocationUpdatesEnabled()Z
    .locals 1

    .line 215
    sget-boolean v0, Lnet/pubnative/lite/sdk/HyBid;->sLocationUpdatesEnabled:Z

    return v0
.end method

.method public static getAdCache()Lnet/pubnative/lite/sdk/AdCache;
    .locals 1

    .line 175
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sAdCache:Lnet/pubnative/lite/sdk/AdCache;

    return-object v0
.end method

.method public static getAge()Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sAge:Ljava/lang/String;

    return-object v0
.end method

.method public static getApiClient()Lnet/pubnative/lite/sdk/api/PNApiClient;
    .locals 1

    .line 147
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    return-object v0
.end method

.method public static getAppToken()Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sAppToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 300
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrowserManager()Lnet/pubnative/lite/sdk/browser/BrowserManager;
    .locals 1

    .line 183
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sBrowserManager:Lnet/pubnative/lite/sdk/browser/BrowserManager;

    return-object v0
.end method

.method public static getBundleId()Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigManager()Lnet/pubnative/lite/sdk/config/ConfigManager;
    .locals 1

    .line 159
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager;

    return-object v0
.end method

.method public static getContentAgeRating()Ljava/lang/String;
    .locals 1

    .line 316
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sContentAgeRating:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeveloperDomain()Ljava/lang/String;
    .locals 1

    .line 308
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sDeveloperDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInfo()Lnet/pubnative/lite/sdk/DeviceInfo;
    .locals 1

    .line 151
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    return-object v0
.end method

.method public static getGender()Ljava/lang/String;
    .locals 1

    .line 239
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sGender:Ljava/lang/String;

    return-object v0
.end method

.method public static getHyBidVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.4.3"

    return-object v0
.end method

.method public static getIabCategory()Ljava/lang/String;
    .locals 1

    .line 284
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sIabCategory:Ljava/lang/String;

    return-object v0
.end method

.method public static getInterstitialSkipOffset()Ljava/lang/Integer;
    .locals 1

    .line 272
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sInterstitialSkipOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    .line 247
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocationManager()Lnet/pubnative/lite/sdk/location/HyBidLocationManager;
    .locals 1

    .line 171
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    return-object v0
.end method

.method public static getReportingController()Lnet/pubnative/lite/sdk/analytics/ReportingController;
    .locals 1

    .line 255
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    return-object v0
.end method

.method public static getUserDataManager()Lnet/pubnative/lite/sdk/UserDataManager;
    .locals 1

    .line 155
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    return-object v0
.end method

.method public static getVgiIdManager()Lnet/pubnative/lite/sdk/VgiIdManager;
    .locals 1

    .line 167
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sVgiIdManager:Lnet/pubnative/lite/sdk/VgiIdManager;

    return-object v0
.end method

.method public static declared-synchronized getVideoAdCache()Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;
    .locals 2

    const-class v0, Lnet/pubnative/lite/sdk/HyBid;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/HyBid;->sVideoAdCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getViewabilityManager()Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;
    .locals 1

    .line 163
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sViewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    return-object v0
.end method

.method public static getsIabSubcategory()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sIabSubcategory:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/HyBid;->initialize(Ljava/lang/String;Landroid/app/Application;Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V

    return-void
.end method

.method public static initialize(Ljava/lang/String;Landroid/app/Application;Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V
    .locals 2

    .line 95
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sAppToken:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sBundleId:Ljava/lang/String;

    .line 97
    new-instance v0, Lnet/pubnative/lite/sdk/api/PNApiClient;

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/api/PNApiClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sApiClient:Lnet/pubnative/lite/sdk/api/PNApiClient;

    const-string v0, "location"

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    invoke-direct {v0, p1}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    .line 100
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isLocationTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->areLocationUpdatesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sLocationManager:Lnet/pubnative/lite/sdk/location/HyBidLocationManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->startLocationUpdates()V

    .line 104
    :cond_0
    new-instance v0, Lnet/pubnative/lite/sdk/DeviceInfo;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    .line 105
    new-instance v0, Lnet/pubnative/lite/sdk/UserDataManager;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/pubnative/lite/sdk/UserDataManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sUserDataManager:Lnet/pubnative/lite/sdk/UserDataManager;

    .line 106
    new-instance v0, Lnet/pubnative/lite/sdk/config/ConfigManager;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/pubnative/lite/sdk/config/ConfigManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/HyBid;->sConfigManager:Lnet/pubnative/lite/sdk/config/ConfigManager;

    .line 107
    new-instance p0, Lnet/pubnative/lite/sdk/AdCache;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/AdCache;-><init>()V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sAdCache:Lnet/pubnative/lite/sdk/AdCache;

    .line 108
    new-instance p0, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;-><init>()V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sVideoAdCache:Lnet/pubnative/lite/sdk/vpaid/VideoAdCache;

    .line 109
    new-instance p0, Lnet/pubnative/lite/sdk/browser/BrowserManager;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/browser/BrowserManager;-><init>()V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sBrowserManager:Lnet/pubnative/lite/sdk/browser/BrowserManager;

    .line 110
    new-instance p0, Lnet/pubnative/lite/sdk/VgiIdManager;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/VgiIdManager;-><init>(Landroid/content/Context;)V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sVgiIdManager:Lnet/pubnative/lite/sdk/VgiIdManager;

    .line 111
    new-instance p0, Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;-><init>()V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    .line 112
    new-instance p0, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;-><init>(Landroid/app/Application;Lnet/pubnative/lite/sdk/analytics/ReportingController;)V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sViewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    .line 113
    new-instance p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "https://rta-analytics.pubnative.io/event"

    invoke-direct {p0, p1, v0}, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sReportingDelegate:Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;

    .line 114
    sget-object p0, Lnet/pubnative/lite/sdk/HyBid;->sDeviceInfo:Lnet/pubnative/lite/sdk/DeviceInfo;

    new-instance p1, Lnet/pubnative/lite/sdk/HyBid$1;

    invoke-direct {p1, p2}, Lnet/pubnative/lite/sdk/HyBid$1;-><init>(Lnet/pubnative/lite/sdk/HyBid$InitialisationListener;)V

    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/DeviceInfo;->initialize(Lnet/pubnative/lite/sdk/DeviceInfo$Listener;)V

    const/4 p0, 0x1

    .line 127
    sput-boolean p0, Lnet/pubnative/lite/sdk/HyBid;->sInitialized:Z

    return-void
.end method

.method public static isCoppaEnabled()Z
    .locals 1

    .line 199
    sget-boolean v0, Lnet/pubnative/lite/sdk/HyBid;->sCoppaEnabled:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 187
    sget-boolean v0, Lnet/pubnative/lite/sdk/HyBid;->sInitialized:Z

    return v0
.end method

.method public static isLocationTrackingEnabled()Z
    .locals 1

    .line 223
    sget-boolean v0, Lnet/pubnative/lite/sdk/HyBid;->sLocationTrackingEnabled:Z

    return v0
.end method

.method public static isTestMode()Z
    .locals 1

    .line 207
    sget-boolean v0, Lnet/pubnative/lite/sdk/HyBid;->sTestMode:Z

    return v0
.end method

.method public static isViewabilityMeasurementActivated()Z
    .locals 1

    .line 191
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sViewabilityManager:Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/viewability/ViewabilityManager;->isViewabilityMeasurementActivated()Z

    move-result v0

    return v0
.end method

.method public static removeReportingCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)Z
    .locals 1

    .line 263
    sget-object v0, Lnet/pubnative/lite/sdk/HyBid;->sReportingController:Lnet/pubnative/lite/sdk/analytics/ReportingController;

    invoke-virtual {v0, p0}, Lnet/pubnative/lite/sdk/analytics/ReportingController;->removeCallback(Lnet/pubnative/lite/sdk/analytics/ReportingEventCallback;)Z

    move-result p0

    return p0
.end method

.method public static setAge(Ljava/lang/String;)V
    .locals 0

    .line 227
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sAge:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized setAppToken(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/HyBid;

    monitor-enter v0

    .line 139
    :try_start_0
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sAppToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 296
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sAppVersion:Ljava/lang/String;

    return-void
.end method

.method public static setContentAgeRating(Ljava/lang/String;)V
    .locals 0

    .line 312
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sContentAgeRating:Ljava/lang/String;

    return-void
.end method

.method public static setCoppaEnabled(Z)V
    .locals 0

    .line 195
    sput-boolean p0, Lnet/pubnative/lite/sdk/HyBid;->sCoppaEnabled:Z

    return-void
.end method

.method public static setDeveloperDomain(Ljava/lang/String;)V
    .locals 0

    .line 304
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sDeveloperDomain:Ljava/lang/String;

    return-void
.end method

.method public static setGender(Ljava/lang/String;)V
    .locals 0

    .line 235
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sGender:Ljava/lang/String;

    return-void
.end method

.method public static setIabCategory(Ljava/lang/String;)V
    .locals 0

    .line 280
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sIabCategory:Ljava/lang/String;

    return-void
.end method

.method public static setIabSubcategory(Ljava/lang/String;)V
    .locals 0

    .line 288
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sIabSubcategory:Ljava/lang/String;

    return-void
.end method

.method public static setInterstitialSkipOffset(Ljava/lang/Integer;)V
    .locals 1

    .line 267
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 268
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sInterstitialSkipOffset:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 243
    sput-object p0, Lnet/pubnative/lite/sdk/HyBid;->sKeywords:Ljava/lang/String;

    return-void
.end method

.method public static setLocationTrackingEnabled(Z)V
    .locals 0

    .line 219
    sput-boolean p0, Lnet/pubnative/lite/sdk/HyBid;->sLocationTrackingEnabled:Z

    return-void
.end method

.method public static setLocationUpdatesEnabled(Z)V
    .locals 0

    .line 211
    sput-boolean p0, Lnet/pubnative/lite/sdk/HyBid;->sLocationUpdatesEnabled:Z

    return-void
.end method

.method public static setLogLevel(Lnet/pubnative/lite/sdk/utils/Logger$Level;)V
    .locals 0

    .line 251
    invoke-static {p0}, Lnet/pubnative/lite/sdk/utils/Logger;->setLogLevel(Lnet/pubnative/lite/sdk/utils/Logger$Level;)V

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    .line 203
    sput-boolean p0, Lnet/pubnative/lite/sdk/HyBid;->sTestMode:Z

    return-void
.end method
