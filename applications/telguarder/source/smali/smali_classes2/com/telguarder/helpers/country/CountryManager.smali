.class public Lcom/telguarder/helpers/country/CountryManager;
.super Ljava/lang/Object;
.source "CountryManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/country/CountryManager;


# instance fields
.field private lastMCCQuery:Ljava/lang/String;

.field private lastMCCQueryTime:J

.field private mCountryIso:Ljava/lang/String;

.field public newConfig:Landroid/content/res/Configuration;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQueryTime:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/helpers/country/CountryManager;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/country/CountryManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/telguarder/helpers/country/CountryManager;->mInstance:Lcom/telguarder/helpers/country/CountryManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/telguarder/helpers/country/CountryManager;

    invoke-direct {v1}, Lcom/telguarder/helpers/country/CountryManager;-><init>()V

    sput-object v1, Lcom/telguarder/helpers/country/CountryManager;->mInstance:Lcom/telguarder/helpers/country/CountryManager;

    .line 47
    :cond_0
    sget-object v1, Lcom/telguarder/helpers/country/CountryManager;->mInstance:Lcom/telguarder/helpers/country/CountryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMccHomeNetFromCdma()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 207
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 208
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.cdma.home.operator.numeric"

    aput-object v3, v2, v5

    .line 209
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x3

    .line 210
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMccHomeNetFromResourceConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 258
    iget p1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isMccUsable(Ljava/lang/String;)Z
    .locals 1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/telguarder/helpers/country/CountryManager;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/country/CountryManager;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/country/CountryManager;->mCountryIso:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/country/CountryManager;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public getDefaultRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getDefaultRegionForCalls(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultRegionForCalls(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getDeviceLanguage()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es-US"

    const-string v3, "es-AR"

    const-string v4, "es-BO"

    const-string v5, "es-CL"

    const-string v6, "es-CO"

    const-string v7, "es-CR"

    const-string v8, "es-DO"

    const-string v9, "es-EC"

    const-string v10, "es-SV"

    const-string v11, "es-GT"

    const-string v12, "es-HN"

    const-string v13, "es-MX"

    const-string v14, "es-NI"

    const-string v15, "es-PA"

    const-string v16, "es-PY"

    const-string v17, "es-PE"

    const-string v18, "es-PR"

    const-string v19, "es-UY"

    const-string v20, "es-VE"

    .line 58
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "esLA"

    return-object v1

    :cond_0
    const-string v2, "pt-BR"

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ptBR"

    return-object v1

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/telguarder/helpers/country/CountryManager;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/country/CountryManager;->getNewConfigLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLanguageTag()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/telguarder/helpers/country/CountryManager;->newConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/telguarder/helpers/country/CountryManager;->getNewConfigLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMCC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQueryTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 169
    iget-object p1, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQuery:Ljava/lang/String;

    return-object p1

    .line 171
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCachedMCC()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getMccFromNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {p0, v1}, Lcom/telguarder/helpers/country/CountryManager;->isMccUsable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "phone"

    .line 174
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/telguarder/helpers/country/CountryManager;->getMccHomeNetFromCdma()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getMccFromSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-direct {p0, v1}, Lcom/telguarder/helpers/country/CountryManager;->isMccUsable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getMccHomeNetFromResourceConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 182
    :cond_2
    invoke-direct {p0, v1}, Lcom/telguarder/helpers/country/CountryManager;->isMccUsable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 191
    :cond_4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 192
    :cond_5
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCachedMCC(Ljava/lang/String;)V

    .line 194
    :cond_6
    iput-object v1, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQuery:Ljava/lang/String;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telguarder/helpers/country/CountryManager;->lastMCCQueryTime:J

    return-object v1
.end method

.method public getMccFromNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 262
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 266
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMccFromSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x16

    if-lt v0, v3, :cond_7

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 219
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "telephony_subscription_service"

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    move-object v3, v2

    .line 224
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1d

    if-ge v1, v4, :cond_5

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 226
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/telephony/SubscriptionManager;->isNetworkRoaming(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 227
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_1

    .line 228
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 230
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-ge v5, v6, :cond_4

    :cond_3
    move-object v3, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    .line 236
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_6

    .line 237
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 239
    :cond_6
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "phone"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_8

    .line 246
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x3

    .line 248
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_8
    return-object v2
.end method

.method public getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNewConfigLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getSystemLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getSystemLocaleLegacy(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_7

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 138
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "telephony_subscription_service"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    .line 141
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 143
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 145
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/telephony/SubscriptionManager;->isNetworkRoaming(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ge v4, v5, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 152
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "phone"

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_8

    .line 156
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public getSystemLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    .line 99
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public getSystemLocaleLegacy(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 0

    .line 94
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p1
.end method

.method public initCountryManager()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPhoneLanguageVsBackendParamLangCode()V

    return-void
.end method
