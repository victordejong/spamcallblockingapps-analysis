.class Lcom/amazon/device/ads/DtbDeviceRegistration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.amazon.device.ads.DtbDeviceRegistration"

.field private static b:Lcom/amazon/device/ads/DtbDeviceRegistration;

.field private static c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/amazon/device/ads/DtbMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/amazon/device/ads/DtbMetrics;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbMetrics;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    .line 34
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 35
    invoke-direct {p0}, Lcom/amazon/device/ads/DtbDeviceRegistration;->b()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 25
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->b:Lcom/amazon/device/ads/DtbDeviceRegistration;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/amazon/device/ads/DtbDeviceRegistration;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbDeviceRegistration;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->b:Lcom/amazon/device/ads/DtbDeviceRegistration;

    .line 28
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/-$$Lambda$DtbDeviceRegistration$ofNbqsXNwlAtmTE3_DvMQ3lnMOs;->INSTANCE:Lcom/amazon/device/ads/-$$Lambda$DtbDeviceRegistration$ofNbqsXNwlAtmTE3_DvMQ3lnMOs;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "ttl"

    const-string v1, "aaxHostname"

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 216
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->k()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 217
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->n()J

    move-result-wide v6

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Config last checkin duration: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", Expiration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    const/4 v6, 0x0

    const-wide/32 v7, 0xa4cb800

    cmp-long v9, v4, v7

    if-gtz v9, :cond_0

    .line 221
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    return v6

    .line 226
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    return v6

    .line 231
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mads.amazon-adsystem.com"

    invoke-static {v5}, Lcom/amazon/device/ads/DtbDebugProperties;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/msdk/getConfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    new-instance v5, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-direct {v5, v4}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    const-string v4, "Accept"

    const-string v7, "application/json"

    .line 234
    invoke-virtual {v5, v4, v7}, Lcom/amazon/device/ads/DtbHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v4

    .line 10089
    iput-boolean v4, v5, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    .line 10348
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v7, "appId"

    .line 10349
    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10350
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->b()Ljava/lang/String;

    move-result-object p1

    const-string v7, "sdkVer"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fp"

    const-string v7, "false"

    .line 10351
    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10352
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v7, "testMode"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10354
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->a()Lcom/amazon/device/ads/DtbDeviceData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/DtbDeviceData;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v7, "dinfo"

    .line 10356
    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11069
    iput-object v4, v5, Lcom/amazon/device/ads/DtbHttpClient;->a:Ljava/util/HashMap;

    .line 240
    :try_start_0
    iget-object p1, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    sget-object v4, Lcom/amazon/device/ads/DtbMetric;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {p1, v4}, Lcom/amazon/device/ads/DtbMetrics;->b(Lcom/amazon/device/ads/DtbMetric;)V

    .line 241
    invoke-virtual {v5}, Lcom/amazon/device/ads/DtbHttpClient;->b()V

    .line 242
    iget-object p1, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    sget-object v4, Lcom/amazon/device/ads/DtbMetric;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {p1, v4}, Lcom/amazon/device/ads/DtbMetrics;->d(Lcom/amazon/device/ads/DtbMetric;)V

    .line 12039
    iget-object p1, v5, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 243
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 246
    new-instance p1, Lorg/json/JSONTokener;

    .line 13039
    iget-object v4, v5, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 247
    invoke-direct {p1, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 249
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "sisURL"

    if-nez v4, :cond_3

    :try_start_1
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 261
    :cond_2
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad configuration failed load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "ad configuration failed load"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/DtbSharedPreferences;->d(Ljava/lang/String;)V

    .line 252
    :cond_4
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 253
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/DtbSharedPreferences;->e(Ljava/lang/String;)Z

    move-result v6

    .line 254
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->g(Ljava/lang/String;)J

    move-result-wide v0

    .line 256
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbSharedPreferences;->c(J)V

    .line 258
    :cond_6
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->b(J)V

    .line 259
    sget-object p1, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v0, "ad configuration loaded successfully."

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 244
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Config Response is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching DTB config: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    :goto_1
    return v6
.end method

.method private static b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->a()Lcom/amazon/device/ads/DtbDeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/DtbDeviceData;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 287
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adId"

    .line 289
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->g()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DtbSharedPreferences;->h()Ljava/lang/Boolean;

    move-result-object v2

    .line 295
    invoke-static {v1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "idfa"

    .line 296
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 298
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceData;->a()Lcom/amazon/device/ads/DtbDeviceData;

    move-result-object v1

    .line 13124
    iget-object v1, v1, Lcom/amazon/device/ads/DtbDeviceData;->b:Ljava/util/HashMap;

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_0
    const-string v1, "1"

    const-string v3, "0"

    if-eqz v2, :cond_2

    .line 13280
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    const-string v4, "oo"

    .line 301
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_3

    const-string v2, "appId"

    .line 304
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_3
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/device/ads/DtbPackageNativeData;->a(Landroid/content/Context;)Lcom/amazon/device/ads/DtbPackageNativeData;

    move-result-object p0

    .line 14063
    iget-object p0, p0, Lcom/amazon/device/ads/DtbPackageNativeData;->a:Lorg/json/JSONObject;

    if-eqz p0, :cond_4

    const-string v2, "pkg"

    .line 310
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_4
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 315
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "IABTCF_gdprApplies"

    .line 316
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_2
    const-string v4, "IABTCF_TCString"

    .line 317
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_b

    .line 320
    :try_start_0
    instance-of v4, v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "gdpr"

    if-eqz v4, :cond_7

    :try_start_1
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_7

    .line 321
    :cond_6
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 322
    :cond_7
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 323
    :cond_9
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 325
    :cond_a
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 327
    :catch_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    :cond_b
    :goto_3
    if-eqz p0, :cond_c

    const-string v1, "gdpr_consent"

    .line 332
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_c
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->o()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "gdpr_custom"

    .line 339
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 12

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->j()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v0, v4

    if-gtz v6, :cond_0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SIS call not required, last registration duration:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", expiration:86400000"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 45
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 50
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v1, "Unable to fetch advertising indentifier information on main thread."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    monitor-exit p0

    return-void

    .line 61
    :cond_2
    :try_start_3
    new-instance v0, Lcom/amazon/device/ads/DtbAdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbAdvertisingInfo;-><init>()V

    .line 64
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->a()Lcom/amazon/device/ads/DtbDebugProperties;

    .line 66
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DtbDeviceRegistration;->a(Ljava/lang/String;)Z

    .line 67
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 71
    monitor-exit p0

    return-void

    .line 74
    :cond_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/device/ads/DtbDebugProperties;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_4

    .line 78
    sget-object v2, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v3, "Trying to register ad id.."

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/generate_did"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 82
    :cond_4
    sget-object v2, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v3, "Trying to update ad id.."

    invoke-static {v2, v3}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/update_dev_info"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 88
    :goto_0
    sget-object v3, Lcom/amazon/device/ads/DtbDeviceRegistration;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/device/ads/DtbDeviceRegistration;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x0

    .line 91
    :try_start_5
    new-instance v5, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v1

    .line 1089
    iput-boolean v1, v5, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    .line 2069
    iput-object v3, v5, Lcom/amazon/device/ads/DtbHttpClient;->a:Ljava/util/HashMap;

    .line 2093
    iput-boolean v7, v5, Lcom/amazon/device/ads/DtbHttpClient;->d:Z

    if-eqz v2, :cond_5

    .line 98
    sget-object v1, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/DtbMetric;

    goto :goto_1

    .line 101
    :cond_5
    sget-object v1, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/DtbMetric;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    :goto_1
    :try_start_6
    iget-object v2, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/DtbMetrics;->b(Lcom/amazon/device/ads/DtbMetric;)V

    .line 105
    invoke-virtual {v5}, Lcom/amazon/device/ads/DtbHttpClient;->a()V

    .line 106
    iget-object v2, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/DtbMetrics;->d(Lcom/amazon/device/ads/DtbMetric;)V

    .line 3039
    iget-object v2, v5, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 108
    invoke-static {v2}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 112
    new-instance v2, Lorg/json/JSONTokener;

    .line 4039
    iget-object v3, v5, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 113
    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 115
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    const-string v3, "rcode"

    .line 4363
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x65

    const/16 v8, 0x67

    if-eqz v3, :cond_9

    .line 4364
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(J)V

    const-string v3, "rcode"

    .line 4365
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_7

    const-string v3, "adId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "adId"

    .line 4366
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "idChanged"

    .line 4367
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "idChanged"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4368
    sget-object v9, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v10, "ad id has changed, updating.."

    invoke-static {v9, v10}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4369
    iget-object v9, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    sget-object v10, Lcom/amazon/device/ads/DtbMetric;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v9, v10}, Lcom/amazon/device/ads/DtbMetrics;->a(Lcom/amazon/device/ads/DtbMetric;)V

    .line 4371
    :cond_6
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->b(Ljava/lang/String;)V

    .line 4372
    sget-object v3, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v9, "ad id is registered or updated successfully."

    invoke-static {v3, v9}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v3, "rcode"

    .line 4374
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_8

    const-string v3, "rcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_9

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 4375
    :cond_8
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->f()V

    .line 4376
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 115
    :goto_3
    invoke-static {v3}, Lcom/amazon/device/ads/DtbSharedPreferences;->a(Z)V

    .line 116
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->a()Z

    move-result v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_a

    .line 131
    :try_start_7
    iget-object v2, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/DtbMetrics;->c(Lcom/amazon/device/ads/DtbMetric;)V

    .line 136
    :cond_a
    sget-object v1, Lcom/amazon/device/ads/DtbDeviceRegistration;->c:Ljava/lang/String;

    .line 5140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5141
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->r()J

    move-result-wide v9

    sub-long/2addr v2, v9

    const-wide v9, 0x9a7ec800L

    cmp-long v11, v2, v9

    if-ltz v11, :cond_1c

    .line 5147
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 5148
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_b

    goto/16 :goto_8

    .line 5154
    :cond_b
    :try_start_8
    invoke-static {}, Lcom/amazon/device/ads/DtbCommonUtils;->e()Z

    move-result v3

    if-nez v3, :cond_c

    .line 5155
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5156
    monitor-exit p0

    return-void

    .line 5158
    :cond_c
    :try_start_9
    new-instance v3, Lcom/amazon/device/ads/DtbHttpClient;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ping"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 5159
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v0

    .line 6089
    iput-boolean v0, v3, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    .line 5160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v9, "appId"

    .line 5161
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adId"

    .line 5162
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5163
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 5165
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IABTCF_gdprApplies"

    .line 5166
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    const-string v9, "IABTCF_gdprApplies"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_d
    move-object v2, v4

    :goto_4
    const-string v9, "IABTCF_TCString"

    .line 5167
    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_13

    .line 5170
    :try_start_a
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_f

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v7, :cond_e

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    const-string v4, "gdpr"

    .line 5171
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 5172
    :cond_f
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v9, "1"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    const-string v4, "gdpr"

    .line 5173
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 5175
    :cond_12
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    .line 5177
    :catch_0
    :try_start_b
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    :cond_13
    :goto_5
    if-eqz v1, :cond_14

    const-string v2, "gdpr_consent"

    .line 5182
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5187
    :cond_14
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->o()Ljava/lang/String;

    move-result-object v1

    .line 5188
    invoke-static {v1}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "gdpr_custom"

    .line 5189
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7069
    :cond_15
    iput-object v0, v3, Lcom/amazon/device/ads/DtbHttpClient;->a:Ljava/util/HashMap;

    .line 5193
    invoke-virtual {v3}, Lcom/amazon/device/ads/DtbHttpClient;->b()V

    .line 8039
    iget-object v0, v3, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 5194
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5198
    new-instance v0, Lorg/json/JSONTokener;

    .line 9039
    iget-object v1, v3, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 5199
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "rcode"

    .line 9385
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "rcode"

    .line 9386
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_16

    .line 9387
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbSharedPreferences;->f(J)V

    .line 9388
    sget-object v1, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    const-string v2, "ad id is registered or updated successfully."

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_16
    const-string v1, "rcode"

    .line 9390
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v8, :cond_17

    const-string v1, "rcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_18

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_18

    .line 9391
    :cond_17
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbSharedPreferences;->f(J)V

    .line 9392
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    :cond_18
    :goto_7
    if-eqz v6, :cond_19

    .line 5208
    monitor-exit p0

    return-void

    .line 5201
    :cond_19
    :try_start_c
    sget-object v1, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sis ping failed failed registration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "sis ping failed registration: "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5195
    :cond_1a
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 5196
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ping SIS Response is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_1
    move-exception v0

    .line 5207
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error pinging sis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    goto :goto_9

    .line 5149
    :cond_1b
    :goto_8
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 5150
    monitor-exit p0

    return-void

    .line 137
    :cond_1c
    :goto_9
    monitor-exit p0

    return-void

    .line 117
    :cond_1d
    :try_start_e
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad id failed registration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "ad id failed registration: "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1e
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 110
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "SIS Response is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v4, v1

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    .line 126
    :goto_a
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error registering device for ads:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v4, :cond_1f

    .line 131
    :try_start_10
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/DtbMetrics;->c(Lcom/amazon/device/ads/DtbMetric;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 127
    :cond_1f
    monitor-exit p0

    return-void

    :catch_5
    move-exception v0

    .line 122
    :goto_b
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON error parsing return from SIS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v4, :cond_20

    .line 131
    :try_start_12
    iget-object v0, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/DtbMetrics;->c(Lcom/amazon/device/ads/DtbMetric;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 124
    :cond_20
    monitor-exit p0

    return-void

    :goto_c
    if-eqz v4, :cond_21

    .line 131
    :try_start_13
    iget-object v1, p0, Lcom/amazon/device/ads/DtbDeviceRegistration;->d:Lcom/amazon/device/ads/DtbMetrics;

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/DtbMetrics;->c(Lcom/amazon/device/ads/DtbMetric;)V

    .line 134
    :cond_21
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static synthetic c()V
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/device/ads/DtbDeviceRegistration;->b:Lcom/amazon/device/ads/DtbDeviceRegistration;

    invoke-direct {v0}, Lcom/amazon/device/ads/DtbDeviceRegistration;->b()V

    return-void
.end method

.method public static synthetic lambda$ofNbqsXNwlAtmTE3_DvMQ3lnMOs()V
    .locals 0

    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceRegistration;->c()V

    return-void
.end method
