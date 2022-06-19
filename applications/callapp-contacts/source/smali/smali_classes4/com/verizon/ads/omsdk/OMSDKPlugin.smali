.class public Lcom/verizon/ads/omsdk/OMSDKPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->j:Ljava/net/URI;

    .line 30
    sput-object v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->k:Ljava/net/URL;

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 43
    sget-object v6, Lcom/verizon/ads/omsdk/OMSDKPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/omsdk/OMSDKPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.omsdk"

    const-string v3, "OMSDK"

    const-string v4, "1.5.1-752bdf8"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method

.method public static getMeasurementService()Lcom/verizon/ads/omsdk/OpenMeasurementService;
    .locals 3

    .line 86
    sget-boolean v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "com.verizon.ads.omsdk"

    const-string v2, "omsdkEnabled"

    invoke-static {v1, v2, v0}, Lcom/verizon/ads/Configuration;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a()Lcom/verizon/ads/omsdk/OpenMeasurementService;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->l:Z

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    sput-boolean v0, Lcom/verizon/ads/omsdk/OMSDKPlugin;->l:Z

    return-void
.end method

.method public final prepare()Z
    .locals 3

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/omsdk/OMSDKPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/verizon/ads/omsdk/OMSDKPlugin;->i:Lcom/verizon/ads/Logger;

    const-string v2, "An error occurred instantiating the Open Measurement Service."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
