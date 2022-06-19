.class public Lcom/telguarder/ApplicationObject;
.super Landroidx/multidex/MultiDexApplication;
.source "ApplicationObject.java"


# static fields
.field private static mContext:Landroid/content/Context; = null

.field private static mobileAdsInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 34
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/telguarder/ApplicationObject;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    .line 76
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    iput-object p1, v0, Lcom/telguarder/helpers/country/CountryManager;->newConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 42
    invoke-virtual {p0}, Lcom/telguarder/ApplicationObject;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    .line 45
    :try_start_0
    sget-boolean v1, Lcom/telguarder/ApplicationObject;->mobileAdsInitialized:Z

    if-nez v1, :cond_0

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/telguarder/ApplicationObject;->mobileAdsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_0
    :try_start_1
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->initAnalytics(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/telguarder/helpers/backend/VolleyHelper;->initWithContext(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/country/CountryManager;->initCountryManager()V

    .line 61
    invoke-static {}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->getInstance()Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->init()V

    .line 62
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->initBlockedNumberManager(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->init(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getInstance()Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    move-result-object v0

    sget-object v1, Lcom/telguarder/ApplicationObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->init(Landroid/content/Context;)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const-string v1, "SETTINGS_LOOK_UP_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveSettingEnabled(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
