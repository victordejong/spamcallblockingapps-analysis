.class public Lcom/verizon/ads/omsdk/OpenMeasurementService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static b:Lcom/verizon/ads/omsdk/OpenMeasurementService;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->c:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 55
    invoke-static {p1}, Lcom/iab/omid/library/verizonmedia/a;->a(Landroid/content/Context;)V

    return-void

    .line 50
    :cond_0
    sget-object p1, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a:Lcom/verizon/ads/Logger;

    const-string v0, "context is null."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a()Lcom/verizon/ads/omsdk/OpenMeasurementService;
    .locals 1

    .line 41
    sget-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->b:Lcom/verizon/ads/omsdk/OpenMeasurementService;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->b:Lcom/verizon/ads/omsdk/OpenMeasurementService;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;

    invoke-direct {v0, p0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->b:Lcom/verizon/ads/omsdk/OpenMeasurementService;

    :cond_0
    return-void
.end method


# virtual methods
.method public enhanceHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a:Lcom/verizon/ads/Logger;

    const-string v1, "context is null. Cannot enhance HTML with omsdk js."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getOMSDKJS()Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {v0, p1}, Lcom/iab/omid/library/verizonmedia/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOMSDKJS()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a:Lcom/verizon/ads/Logger;

    const-string v1, "context is null. Cannot load omsdk js"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "omsdk/omsdk-v1.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-object v1
.end method

.method public getPartner()Lcom/iab/omid/library/verizonmedia/adsession/i;
    .locals 3

    :try_start_0
    const-string v0, "Verizonmedia"

    .line 1105
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSDKInfo()Lcom/verizon/ads/SDKInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/verizon/ads/SDKInfo;->version:Ljava/lang/String;

    const-string v2, "Name is null or empty"

    .line 2000
    invoke-static {v0, v2}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version is null or empty"

    invoke-static {v1, v2}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/iab/omid/library/verizonmedia/adsession/i;

    invoke-direct {v2, v0, v1}, Lcom/iab/omid/library/verizonmedia/adsession/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/verizon/ads/omsdk/OpenMeasurementService;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error creating partner"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
