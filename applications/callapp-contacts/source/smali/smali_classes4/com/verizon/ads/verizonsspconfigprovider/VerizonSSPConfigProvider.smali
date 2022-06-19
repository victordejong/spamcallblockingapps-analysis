.class public Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/ConfigurationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_HANDSHAKE_BASE_URL:Ljava/lang/String; = "https://ads.nexage.com"

.field private static final DOMAIN_VERIZON_ADS:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_CORE:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_INLINEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_INTERSTITIALPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_NATIVEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_OMSDK:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_VAST:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final DOMAIN_VERIZON_ADS_VPAID:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

.field private static final ERROR_BUSY:I = -0x5

.field private static final ERROR_HTTP_REQUEST:I = -0x4

.field private static final ERROR_INCOMPATIBLE_VERSION:I = -0x3

.field private static final ERROR_INVALID_VERSION:I = -0x2

.field private static final ERROR_PARSING:I = -0x1

.field private static final HANDSHAKE_JSON:Ljava/lang/String; = "handshake.json"

.field private static final HANDSHAKE_PATH:Ljava/lang/String; = "/admax/sdk/handshake/1"

.field private static final HANDSHAKE_REQUEST_TIMEOUT:I = 0x3a98

.field private static final HANDSHAKE_VERSION:Ljava/lang/String; = "1"

.field private static final KEY_EDITION_NAME:Ljava/lang/String; = "editionName"

.field private static final KEY_EDITION_VERSION:Ljava/lang/String; = "editionVersion"

.field private static final KEY_HANDSHAKE_BASE_URL:Ljava/lang/String; = "handshakeBaseUrl"

.field private static final MAX_HANDSHAKE_ATTEMPTS:I = 0xa

.field private static final VERIZON_ADS_DIRECTORY:Ljava/lang/String; = "/.com.verizon.ads/"

.field private static final WHO:Ljava/lang/String;

.field private static final logger:Lcom/verizon/ads/Logger;


# instance fields
.field private final appId:Ljava/lang/String;

.field private handshakeAttempts:I

.field private requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final vasAdsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const-class v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 59
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.omsdk"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_OMSDK:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 60
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.verizonssp"

    const-string v3, "verizon-ssp-config-key"

    invoke-direct {v0, v1, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 61
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.core"

    const-string v3, "vas-core-key"

    invoke-direct {v0, v1, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_CORE:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 62
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.nativeplacement"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_NATIVEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 63
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.inlineplacement"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_INLINEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 64
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.interstitialplacement"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_INTERSTITIALPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 67
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.vast"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VAST:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    .line 68
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "com.verizon.ads.vpaid"

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VPAID:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.com.verizon.ads/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->vasAdsDirectory:Ljava/io/File;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->appId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    return p0
.end method

.method static synthetic access$002(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    return p1
.end method

.method static synthetic access$008(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)I
    .locals 2

    .line 37
    iget v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    return v0
.end method

.method static synthetic access$100()Lcom/verizon/ads/Logger;
    .locals 1

    .line 37
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->saveHandshakeToFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static getHandshakeBaseUrl()Ljava/lang/String;
    .locals 3

    .line 232
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    iget-object v0, v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    const-string v1, "handshakeBaseUrl"

    const-string v2, "https://ads.nexage.com"

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConfigProviderEnabled()Z
    .locals 3

    .line 238
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    iget-object v0, v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    const-string v1, "configProviderEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static processHandshake(Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "autoPlayAudioEnabled"

    const-string v2, "config"

    const-string v3, "vastSkipOffsetMin"

    const-string v4, "vastSkipOffsetMax"

    const-string v5, "vastSkipRule"

    const-string v6, "sdkEnabled"

    const-string v7, "geoIpCheckUrl"

    const-string v8, "handshakeBaseUrl"

    const-string v9, "1"

    const-string v10, "cacheReplenishmentThreshold"

    const-string v11, "minImpressionDuration"

    const-string v12, "minImpressionViewabilityPercent"

    const/4 v13, -0x1

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    const-string v2, "Handshake content is null -- nothing to parse"

    invoke-direct {v0, v1, v2, v13}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const/4 v14, 0x3

    .line 99
    invoke-static {v14}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 100
    sget-object v14, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "Parsing handshake:\n"

    invoke-virtual {v13, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 104
    :cond_1
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ver"

    .line 107
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-le v15, v14, :cond_2

    .line 118
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    const-string v2, "Handshake response did not contain a compatible version. Received version, %d and expected max version of %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v9, v3, v4

    .line 119
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_2
    const-string v9, "playlistServer"

    .line 126
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v14, "name"

    .line 129
    invoke-static {v9, v14}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "orange"

    .line 130
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "green"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    const-string v14, "com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider"

    .line 134
    :cond_4
    sget-object v15, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    move-object/from16 v16, v1

    const-string v1, "waterfallProviderClass"

    invoke-static {v15, v1, v14}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "waterfallProviderBaseUrl"

    const-string v14, "baseUrl"

    .line 135
    invoke-static {v9, v14}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v1, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "enableBackgroundAdRequest"

    const-string v9, "enableBgAdRequest"

    .line 136
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v15, v1, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    invoke-static {v13, v8}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "reportingBaseUrl"

    const-string v9, "rptBaseUrl"

    .line 138
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    sget-object v8, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_CORE:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    invoke-static {v13, v7}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "locationRequiresConsentTtl"

    const-string v9, "geoIpCheckTtl"

    .line 140
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-static {v13, v6}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "configurationProviderRefreshInterval"

    const-string v7, "ttl"

    .line 143
    invoke-static {v13, v7}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "version"

    .line 144
    invoke-static {v1, v6, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_INTERSTITIALPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v6, "interstitialAdExpirationTimeout"

    const-string v7, "instlExpDur"

    .line 146
    invoke-static {v13, v7}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 145
    invoke-static {v0, v6, v7}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    sget-object v6, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_NATIVEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v7, "nativeAdExpirationTimeout"

    const-string v8, "nativeExpDur"

    .line 149
    invoke-static {v13, v8}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 148
    invoke-static {v6, v7, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    sget-object v7, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_INLINEPLACEMENT:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v8, "inlineAdExpirationTimeout"

    const-string v9, "inlineExpDur"

    .line 152
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 151
    invoke-static {v7, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "minInlineRefreshInterval"

    const-string v9, "minInlineRefresh"

    .line 155
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 154
    invoke-static {v7, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-static {v13, v12}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 158
    invoke-static {v7, v12, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {v6, v12, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-static {v13, v11}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 162
    invoke-static {v7, v11, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-static {v6, v11, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "reportingBatchFrequency"

    const-string v9, "rptFreq"

    .line 165
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "reportingBatchSize"

    const-string v9, "rptBatchSize"

    .line 166
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "inlineAdRequestTimeout"

    const-string v9, "inlineTmax"

    .line 167
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "interstitialAdRequestTimeout"

    const-string v9, "instlTmax"

    .line 171
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 170
    invoke-static {v0, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "nativeAdRequestTimeout"

    const-string v9, "nativeTmax"

    .line 173
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "nativeAdComponentsTimeout"

    const-string v9, "nativeComponentsTmax"

    .line 176
    invoke-static {v13, v9}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "inlineCacheReplenishmentThreshold"

    .line 180
    invoke-static {v13, v8}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 179
    invoke-static {v7, v10, v8}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "interstitialCacheReplenishmentThreshold"

    .line 183
    invoke-static {v13, v7}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 182
    invoke-static {v0, v10, v7}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nativeCacheReplenishmentThreshold"

    .line 186
    invoke-static {v13, v0}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 185
    invoke-static {v6, v10, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "clientMediationRequestTimeout"

    const-string v6, "clientAdTmax"

    .line 189
    invoke-static {v13, v6}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 188
    invoke-static {v1, v0, v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "serverMediationRequestTimeout"

    const-string v6, "serverAdTmax"

    .line 191
    invoke-static {v13, v6}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 190
    invoke-static {v1, v0, v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "exchangeRequestTimeout"

    const-string v6, "exTmax"

    .line 192
    invoke-static {v13, v6}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bidExpirationTimeout"

    const-string v6, "saCacheTimeout"

    .line 193
    invoke-static {v13, v6}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VAST:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    invoke-static {v13, v5}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-static {v13, v4}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-static {v13, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {v13, v2}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_OMSDK:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v1, "omsdkEnabled"

    const-string v2, "moatEnabled"

    invoke-static {v13, v2}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    .line 203
    invoke-static {v13, v0}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v15, v0, v1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "vpaid"

    .line 205
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VPAID:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    const-string v2, "vpaidStartAdTimeout"

    const-string v3, "startAdTimeout"

    invoke-static {v0, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "vpaidSkipAdTimeout"

    const-string v3, "skipAdTimeout"

    .line 207
    invoke-static {v0, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "vpaidAdUnitTimeout"

    const-string v3, "adUnitTimeout"

    .line 208
    invoke-static {v0, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "vpaidHtmlEndCardTimeout"

    const-string v3, "htmlEndCardTimeout"

    .line 209
    invoke-static {v0, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "vpaidMaxBackButtonDelay"

    const-string v3, "maxBackButtonDelay"

    .line 210
    invoke-static {v0, v3}, Lcom/verizon/ads/verizonsspconfigprovider/JSONUtils;->optInteger(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v1, "Handshake successfully parsed"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 114
    :catch_0
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    const-string v3, "Handshake version is not a valid integer, %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x2

    invoke-direct {v1, v2, v0, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    .line 215
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v2, "An error occurred parsing the handshake"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    const-string v2, "An error occurred parsing the handshake response"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private saveHandshakeToFile(Ljava/lang/String;)V
    .locals 4

    .line 389
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v1, "Saving handshake file"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->vasAdsDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 397
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->vasAdsDirectory:Ljava/io/File;

    const-string v3, "handshake.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 400
    :try_start_1
    invoke-static {v2, p1}, Lcom/verizon/ads/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-static {v2}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 403
    :goto_0
    :try_start_2
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v2, "Could not write handshake handshake.json"

    invoke-virtual {v1, v2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 405
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-void

    :goto_1
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 406
    throw p1
.end method

.method private static setConfigValue(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->b:Ljava/lang/String;

    invoke-static {p2, v0, p1, p0}, Lcom/verizon/ads/Configuration;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getHandshakeJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 436
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 437
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 439
    sget-object v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    iget-object v3, v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    const-string v4, "editionName"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    iget-object v2, v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    const-string v4, "editionVersion"

    invoke-static {v2, v4, v5}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "sdkVer"

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    aput-object v2, v7, v5

    const-string v2, "%s-%s"

    .line 443
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "editionId"

    .line 445
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 447
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSDKInfo()Lcom/verizon/ads/SDKInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/verizon/ads/SDKInfo;->version:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "core-%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "ver"

    const-string v3, "1"

    .line 450
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os"

    const-string v3, "android"

    .line 451
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osv"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    iget-object v2, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->appId:Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSDKInfo()Lcom/verizon/ads/SDKInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/verizon/ads/SDKInfo;->version:Ljava/lang/String;

    const-string v3, "coreVer"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    invoke-static {}, Lcom/verizon/ads/VASAds;->getRegisteredPlugins()Ljava/util/Set;

    move-result-object v2

    .line 458
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 459
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 461
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/verizon/ads/Plugin;

    .line 462
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 463
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getAuthor()Ljava/lang/String;

    move-result-object v6

    const-string v7, "author"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getEmail()Ljava/net/URI;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 467
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getEmail()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "email"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    :cond_1
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getWebsite()Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 470
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getWebsite()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "website"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    :cond_2
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getMinApiLevel()I

    move-result v6

    const-string v7, "minApiLevel"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/verizon/ads/VASAds;->isPluginEnabled(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "enabled"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {v4}, Lcom/verizon/ads/Plugin;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v2, "sdkPlugins"

    .line 478
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "sdkInfo"

    .line 480
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 269
    const-class v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadHandshakeFromFile()Ljava/lang/String;
    .locals 8

    const-string v0, "handshake.json"

    .line 363
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v2, "Loading handshake file"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 369
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->vasAdsDirectory:Ljava/io/File;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "UTF-8"

    .line 372
    invoke-static {v5, v4}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    :goto_0
    invoke-static {v5}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v5, v3

    .line 377
    :goto_1
    :try_start_2
    sget-object v6, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v7, "Could not read handshake \'%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v4}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-object v5, v3

    .line 375
    :catch_3
    sget-object v4, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v6, "Saved handshake \'%s\' does not exists"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v5

    .line 379
    :goto_3
    invoke-static {v3}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 380
    throw v0
.end method

.method public prepare()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    :try_start_0
    sget-object v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    iget-object v3, v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/verizon/ads/Configuration;->protectDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    .line 250
    :cond_0
    sget-object v3, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v4, "An error occurred while attempting to protect the domain \'%s\'."

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    aput-object v2, v5, v1

    .line 251
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v3, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    .line 257
    sget-object v3, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->DOMAIN_VERIZON_ADS_VERIZONSSP:Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;

    iget-object v4, v4, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$DomainInfo;->a:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string v4, "An exception occurred while attempting to protect the domain \'%s\'."

    .line 258
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v3, v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method requestHandshake(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    .locals 6

    .line 414
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->getHandshakeJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 418
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    sget-object v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v3, "Requesting handshake.\n\tattempt: %d\n\turl: %s\n\tpost data: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->handshakeAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    const/4 v4, 0x2

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const-string v1, "application/json"

    const/16 v2, 0x3a98

    .line 423
    invoke-static {p1, v0, v1, v2}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 427
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v1, "Cannot build the handshake request data"

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public restoreHandshakeValues()V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->loadHandshakeFromFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v1, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v2, "Restoring from saved handshake file"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 356
    invoke-static {v0}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->processHandshake(Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;

    :cond_0
    return-void
.end method

.method public update(Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V
    .locals 5

    .line 276
    sget-object v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->logger:Lcom/verizon/ads/Logger;

    const-string v1, "Processing configuration update request"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 280
    new-instance v1, Lcom/verizon/ads/ErrorInfo;

    sget-object v2, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;->WHO:Ljava/lang/String;

    const/4 v3, -0x5

    const-string v4, "Handshake request already in progress"

    invoke-direct {v1, v2, v4, v3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x3

    .line 281
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 286
    invoke-interface {p1, p0, v1}, Lcom/verizon/ads/ConfigurationProvider$UpdateListener;->onComplete(Lcom/verizon/ads/ConfigurationProvider;Lcom/verizon/ads/ErrorInfo;)V

    :cond_1
    return-void

    .line 293
    :cond_2
    new-instance v0, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider$1;-><init>(Lcom/verizon/ads/verizonsspconfigprovider/VerizonSSPConfigProvider;Lcom/verizon/ads/ConfigurationProvider$UpdateListener;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
