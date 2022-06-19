.class public Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final a:Lcom/verizon/ads/Logger;

.field private static volatile b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/verizon/ads/EnvironmentInfo$CameraType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 335
    const-class v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 336
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Android %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    .line 360
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;-><init>(Landroid/content/Context;Lcom/verizon/ads/EnvironmentInfo$1;)V

    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->d:Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    .line 362
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_7

    .line 363
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_4

    const-string v0, "camera"

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_3

    .line 371
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 372
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v5, v1, v2

    .line 373
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 374
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 376
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_0

    .line 377
    iget-object v5, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    sget-object v6, Lcom/verizon/ads/EnvironmentInfo$CameraType;->FRONT:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 379
    iget-object v5, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    sget-object v6, Lcom/verizon/ads/EnvironmentInfo$CameraType;->BACK:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_1
    sget-object v5, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v6, "Camera detected but lens facing characteristic returned null."

    invoke-virtual {v5, v6}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 387
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "An error occurred determining camera availability."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 391
    :cond_3
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Could not determine camera availability. Unable to access Camera Service."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 395
    :cond_4
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 396
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_7

    .line 398
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 399
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_5

    .line 400
    iget-object v4, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    sget-object v5, Lcom/verizon/ads/EnvironmentInfo$CameraType;->FRONT:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 401
    :cond_5
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_6

    .line 402
    iget-object v4, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    sget-object v5, Lcom/verizon/ads/EnvironmentInfo$CameraType;->BACK:Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 408
    :cond_7
    :goto_4
    invoke-direct {p0, p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 5

    .line 935
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 938
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 333
    sput-object p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 414
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 416
    :try_start_1
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 418
    :try_start_2
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "An exception occurred obtaining user agent from WebSettings."

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 419
    monitor-exit p0

    return-void

    .line 422
    :cond_0
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 423
    new-instance v1, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo$1;-><init>(Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 432
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAvailableStorage()Ljava/lang/Long;
    .locals 4

    .line 792
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 796
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "mounted"

    .line 802
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    .line 803
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 808
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a(Ljava/io/File;)J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/Float;
    .locals 4

    .line 520
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "level"

    const/4 v2, -0x1

    .line 527
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 528
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 530
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCameras()[Lcom/verizon/ads/EnvironmentInfo$CameraType;
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/verizon/ads/EnvironmentInfo$CameraType;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/EnvironmentInfo$CameraType;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/verizon/ads/EnvironmentInfo$CameraType;

    return-object v0
.end method

.method public getConfigurationOrientation()Ljava/lang/String;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getNaturalOrientation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "landscape"

    return-object v0

    :cond_1
    const-string v0, "portrait"

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 6

    .line 888
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 889
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "INTERNET permission is required."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 893
    :cond_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 899
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    .line 900
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 902
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 905
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 906
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 907
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 909
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_4
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 916
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 918
    instance-of v3, v4, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    const/16 v0, 0x25

    .line 919
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_5

    return-object v2

    :cond_5
    const/4 v1, 0x0

    .line 921
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    .line 926
    :goto_1
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "An exception occurred while determining device IP."

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :cond_6
    return-object v2
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 509
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 472
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 476
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 442
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 446
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 457
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 461
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getNaturalOrientation()Ljava/lang/String;
    .locals 5

    .line 719
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    .line 722
    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 723
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 725
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const-string v3, "landscape"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    return-object v3

    .line 729
    :cond_1
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    return-object v3

    :cond_3
    const-string v0, "portrait"

    return-object v0

    .line 738
    :cond_4
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Window Service unavailable. Could not determine orientation."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 873
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOSBuildNumber()Ljava/lang/String;
    .locals 1

    .line 781
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .line 770
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenInfo()Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->d:Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 832
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume(I)Ljava/lang/Float;
    .locals 4

    .line 845
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 853
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-float v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 855
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    .line 858
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Audio Service unavailable. Could not determine volume for stream type %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public hasBluetooth()Ljava/lang/Boolean;
    .locals 2

    .line 629
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    .line 634
    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 633
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasCameraPermission()Ljava/lang/Boolean;
    .locals 2

    .line 584
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasGPS()Ljava/lang/Boolean;
    .locals 2

    .line 661
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 666
    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 665
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasHeadphonesPluggedIn()Ljava/lang/Boolean;
    .locals 6

    .line 679
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    .line 686
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    const/4 v1, 0x2

    .line 687
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 689
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 690
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 691
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 692
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 694
    :cond_2
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 698
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 701
    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 705
    :cond_5
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Cannot determine headphone status. No Audio Service available."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public hasMicrophone()Ljava/lang/Boolean;
    .locals 2

    .line 645
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 650
    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 649
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasNFC()Ljava/lang/Boolean;
    .locals 2

    .line 600
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    .line 605
    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 604
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isCharging()Ljava/lang/Boolean;
    .locals 4

    .line 545
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    const-string v2, "status"

    .line 552
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 554
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public isExternalStorageWritable()Z
    .locals 5

    .line 819
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-gt v1, v4, :cond_1

    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->c:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1617
    invoke-static {v1, v4}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "mounted"

    .line 821
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method
