.class public Lcom/verizon/ads/edition/StandardEdition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/verizon/ads/edition/StandardEdition;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    :try_start_0
    const-string v0, "com.flurry.android.FlurryAgent"

    .line 265
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 267
    sget-object v1, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Flurry Analytics library not found"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 12

    const-string v0, "com.verizon.ads.standardedition"

    const-string v1, "flurry.api-key"

    const/4 v2, 0x0

    .line 2217
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 2223
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 137
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v0, "No Flurry Analytics api-key provided."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V

    return v3

    .line 142
    :cond_1
    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 143
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to initialize Flurry Analytics. The flurry.api-key is empty."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v5

    .line 148
    :cond_2
    invoke-static {}, Lcom/verizon/ads/edition/StandardEdition;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 149
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to initialize Flurry Analytics. The flurry.api-key has been set but no Flurry Analytics library can be found."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v5

    .line 157
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->isSessionActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Flurry Analytics session already initialized."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->v(Ljava/lang/String;)V

    return v3

    .line 163
    :cond_4
    new-instance v4, Lcom/flurry/android/FlurryAgent$Builder;

    invoke-direct {v4}, Lcom/flurry/android/FlurryAgent$Builder;-><init>()V

    const/4 v6, 0x3

    .line 166
    invoke-static {v6}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_a

    .line 167
    invoke-static {}, Lcom/verizon/ads/Logger;->getLogLevel()I

    move-result v7

    .line 168
    invoke-virtual {v4, v3}, Lcom/flurry/android/FlurryAgent$Builder;->withLogEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;

    .line 169
    invoke-virtual {v4, v7}, Lcom/flurry/android/FlurryAgent$Builder;->withLogLevel(I)Lcom/flurry/android/FlurryAgent$Builder;

    .line 170
    sget-object v9, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Flurry Analytics logLevel is set to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v7, v8, :cond_9

    if-eq v7, v6, :cond_8

    const/4 v11, 0x4

    if-eq v7, v11, :cond_7

    const/4 v11, 0x5

    if-eq v7, v11, :cond_6

    const/4 v11, 0x6

    if-eq v7, v11, :cond_5

    const-string v7, "UNKNOWN"

    goto :goto_1

    :cond_5
    const-string v7, "ERROR"

    goto :goto_1

    :cond_6
    const-string v7, "WARN"

    goto :goto_1

    :cond_7
    const-string v7, "INFO"

    goto :goto_1

    :cond_8
    const-string v7, "DEBUG"

    goto :goto_1

    :cond_9
    const-string v7, "VERBOSE"

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_a
    const-string v7, "flurry.isGdprScope"

    .line 3229
    invoke-static {v0, v7, v2}, Lcom/verizon/ads/Configuration;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3231
    instance-of v9, v7, Ljava/lang/Boolean;

    if-nez v9, :cond_b

    move-object v7, v2

    goto :goto_2

    .line 3235
    :cond_b
    check-cast v7, Ljava/lang/Boolean;

    :goto_2
    if-nez v7, :cond_c

    .line 176
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to initialize Flurry Analytics. The flurry.isGdprScope key must be set."

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v5

    :cond_c
    const-string v9, "com.verizon.ads.core"

    const-string v10, "userPrivacyData"

    .line 3249
    invoke-static {v9, v10, v2}, Lcom/verizon/ads/Configuration;->getMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 3252
    new-instance v2, Lcom/verizon/ads/PrivacyDataHelper;

    invoke-direct {v2, v9}, Lcom/verizon/ads/PrivacyDataHelper;-><init>(Ljava/util/Map;)V

    .line 3253
    invoke-virtual {v2}, Lcom/verizon/ads/PrivacyDataHelper;->getGDPRConsentMap()Ljava/util/Map;

    move-result-object v2

    .line 182
    :cond_d
    new-instance v9, Lcom/flurry/android/FlurryConsent;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v9, v10, v2}, Lcom/flurry/android/FlurryConsent;-><init>(ZLjava/util/Map;)V

    invoke-virtual {v4, v9}, Lcom/flurry/android/FlurryAgent$Builder;->withConsent(Lcom/flurry/android/Consent;)Lcom/flurry/android/FlurryAgent$Builder;

    const-string v9, "flurry.dataSaleOptOutCCPA"

    .line 4241
    invoke-static {v0, v9, v5}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    invoke-virtual {v4, v0}, Lcom/flurry/android/FlurryAgent$Builder;->withDataSaleOptOut(Z)Lcom/flurry/android/FlurryAgent$Builder;

    .line 188
    invoke-static {v6}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 189
    sget-object v6, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v9, "Flurry Analytics api-key is set to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const-string v9, "Flurry Analytics isGdprScope is set to "

    .line 190
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const-string v7, "Flurry Analytics consentStrings is set to "

    .line 191
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const-string v2, "Flurry Analytics dataSaleOptOut is set to "

    .line 192
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 196
    :cond_e
    invoke-virtual {v4, p0, v1}, Lcom/flurry/android/FlurryAgent$Builder;->build(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "%s-%s"

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "standard-edition"

    aput-object v1, v0, v5

    const-string v1, "1.9.0"

    aput-object v1, v0, v3

    .line 198
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vas"

    .line 199
    invoke-static {v0, p0}, Lcom/flurry/android/FlurryAgent;->addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 206
    sget-object v0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to initialize Flurry Analytics."

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5

    :catch_1
    move-exception p0

    .line 202
    sget-object v0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to initialize Flurry Analytics. Invalid flurry.api-key."

    invoke-virtual {v0, v1, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method public static initialize(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 5

    .line 71
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string p1, "siteId cannot be null or empty."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1101
    new-instance v2, Lcom/verizon/ads/support/SupportPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/support/SupportPlugin;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1102
    new-instance v2, Lcom/verizon/ads/inlineplacement/InlinePlacementPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/inlineplacement/InlinePlacementPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1103
    new-instance v2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapterPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapterPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1104
    new-instance v2, Lcom/verizon/ads/interstitialplacement/InterstitialPlacementPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialPlacementPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1105
    new-instance v2, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapterPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1106
    new-instance v2, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapterPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1107
    new-instance v2, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/nativeplacement/NativePlacementPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1108
    new-instance v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeControllerPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1109
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTControllerPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/vastcontroller/VASTControllerPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1110
    new-instance v2, Lcom/verizon/ads/videoplayer/VideoPlayerPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/videoplayer/VideoPlayerPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1111
    new-instance v2, Lcom/verizon/ads/webcontroller/WebControllerPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/webcontroller/WebControllerPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1112
    new-instance v2, Lcom/verizon/ads/webview/WebViewPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/webview/WebViewPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1113
    new-instance v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1114
    new-instance v2, Lcom/verizon/ads/omsdk/OMSDKPlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/omsdk/OMSDKPlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    .line 1115
    new-instance v2, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;

    invoke-direct {v2, v0}, Lcom/verizon/ads/uriexperience/UriExperiencePlugin;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/verizon/ads/VASAds;->registerPlugin(Lcom/verizon/ads/Plugin;Z)Z

    const-string v0, "waterfallprovider/verizonssp"

    const-string v2, "com.verizon.ads.core"

    const-string v3, "defaultWaterfallProvider"

    const-string v4, "vas-core-key"

    .line 1118
    invoke-static {v0, v2, v3, v4}, Lcom/verizon/ads/Configuration;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "standard-edition"

    const-string v2, "com.verizon.ads"

    const-string v3, "editionName"

    .line 2093
    invoke-static {v0, v2, v3, v4}, Lcom/verizon/ads/Configuration;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1.9.0"

    const-string v3, "editionVersion"

    .line 2094
    invoke-static {v0, v2, v3, v4}, Lcom/verizon/ads/Configuration;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/edition/StandardEdition;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-object p0, Lcom/verizon/ads/edition/StandardEdition;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Flurry Analytics initialization failed. Unable to initialize Verizon Ads SDK."

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 87
    :cond_1
    invoke-static {p0, p1}, Lcom/verizon/ads/VASAds;->initialize(Landroid/app/Application;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
