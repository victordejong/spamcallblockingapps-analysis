.class public Lcom/amazon/device/ads/DTBMetricsConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONFIG_DIR:Ljava/lang/String; = "config"

.field static final CONFIG_WITH_JSON:Ljava/lang/String; = "aps_mobile_client_config.json"

.field static final SAMPLE_RATES_KEY_NAME:Ljava/lang/String; = "sample_rates"

.field static final WRAPPING_PIXEL_DEFAULT_VALUE:Ljava/lang/Integer;

.field static final WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME:Ljava/lang/String; = "wrapping_pixel"

.field private static theInstance:Lcom/amazon/device/ads/DTBMetricsConfiguration;


# instance fields
.field private configuration:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->WRAPPING_PIXEL_DEFAULT_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config"

    .line 29
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->loadConfiguration()V

    .line 31
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBMetricsConfiguration$Z49TfNyrz-7IxpaCd6SMbUPz0p0;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBMetricsConfiguration$Z49TfNyrz-7IxpaCd6SMbUPz0p0;-><init>(Lcom/amazon/device/ads/DTBMetricsConfiguration;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;
    .locals 2

    const-class v0, Lcom/amazon/device/ads/DTBMetricsConfiguration;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsConfiguration;->theInstance:Lcom/amazon/device/ads/DTBMetricsConfiguration;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/amazon/device/ads/DTBMetricsConfiguration;

    invoke-direct {v1}, Lcom/amazon/device/ads/DTBMetricsConfiguration;-><init>()V

    sput-object v1, Lcom/amazon/device/ads/DTBMetricsConfiguration;->theInstance:Lcom/amazon/device/ads/DTBMetricsConfiguration;

    .line 24
    :cond_0
    sget-object v1, Lcom/amazon/device/ads/DTBMetricsConfiguration;->theInstance:Lcom/amazon/device/ads/DTBMetricsConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSampleRateForWrappingPixel()Ljava/lang/Integer;
    .locals 2

    .line 118
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getInstance()Lcom/amazon/device/ads/DTBMetricsConfiguration;

    move-result-object v0

    .line 119
    invoke-direct {v0}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getSampleRates()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "wrapping_pixel"

    .line 122
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Unable to get sample rates for wrapping pixel from configuration. Using default value"

    .line 124
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->WRAPPING_PIXEL_DEFAULT_VALUE:Ljava/lang/Integer;

    return-object v0
.end method

.method private getSampleRates()Lorg/json/JSONObject;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->configuration:Lorg/json/JSONObject;

    const-string v1, "sample_rates"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->configuration:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Unable to get sample rates from configuration"

    .line 110
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWorkingDirContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "aps_mobile_client_config.json"

    const-string v1, "config"

    .line 132
    invoke-static {v0, v1}, Lcom/amazon/device/ads/DTBAdUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadConfigurationFromWeb()V
    .locals 4

    .line 56
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/DtbHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "aps_mobile_client_config.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v1

    .line 1089
    iput-boolean v1, v0, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    .line 59
    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbHttpClient;->b()V

    .line 2047
    iget v1, v0, Lcom/amazon/device/ads/DtbHttpClient;->b:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 3039
    iget-object v0, v0, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "temp"

    const-string v3, "json"

    .line 68
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 70
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 71
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config/aps_mobile_client_config.json"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 78
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Rename failed"

    .line 81
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->loadConfiguration()V

    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "resource aps_mobile_client_config.json not available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading configuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method declared-synchronized isTypeEnabled(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->configuration:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v1, "metrics"

    .line 94
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    :try_start_2
    const-string p1, "Unable to get metrics from configuration"

    .line 99
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$new$0$DTBMetricsConfiguration()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->loadConfigurationFromWeb()V

    return-void
.end method

.method declared-synchronized loadConfiguration()V
    .locals 2

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getWorkingDirContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "aps_mobile_client_config.json"

    .line 39
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBMetricsConfiguration;->configuration:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "Invalid configuration"

    .line 48
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0

    .line 49
    :catch_1
    monitor-exit p0

    return-void
.end method
