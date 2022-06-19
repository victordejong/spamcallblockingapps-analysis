.class public Lcom/millennialmedia/internal/utils/EnvironmentUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    }
.end annotation


# static fields
.field private static final MILLENNIAL_DIRECTORY:Ljava/lang/String; = "/.com.millennialmedia/"

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final TAG:Ljava/lang/String; = "EnvironmentUtils"

.field private static application:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static applicationContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

.field private static bluetoothPermissionGranted:Z

.field private static cellSignalDbm:Ljava/lang/Integer;

.field private static deviceId:Ljava/lang/String;

.field private static fineLocationPermissionGranted:Z

.field private static microphonePermissionGranted:Z

.field private static nfcPermissionGranted:Z

.field private static readExternalStoragePermissionGranted:Z

.field private static volatile userAgent:Ljava/lang/String;

.field private static vibratePermissionGranted:Z

.field private static wifiStatePermissionGranted:Z

.field private static writeExternalStoragePermissionGranted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->readExternalStoragePermissionGranted:Z

    return v0
.end method

.method public static synthetic access$1000()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    return-object v0
.end method

.method public static synthetic access$1002(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->writeExternalStoragePermissionGranted:Z

    return v0
.end method

.method public static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->wifiStatePermissionGranted:Z

    return v0
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->fineLocationPermissionGranted:Z

    return v0
.end method

.method public static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->vibratePermissionGranted:Z

    return v0
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->bluetoothPermissionGranted:Z

    return v0
.end method

.method public static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->nfcPermissionGranted:Z

    return v0
.end method

.method public static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->microphonePermissionGranted:Z

    return v0
.end method

.method public static synthetic access$900()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0
.end method

.method public static areHeadphonesPluggedIn()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public static checkPermissionGranted(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lg8;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to check permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static extractPermissions()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->writeExternalStoragePermissionGranted:Z

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->readExternalStoragePermissionGranted:Z

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->wifiStatePermissionGranted:Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->fineLocationPermissionGranted:Z

    const-string v0, "android.permission.VIBRATE"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->vibratePermissionGranted:Z

    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->bluetoothPermissionGranted:Z

    const-string v0, "android.permission.NFC"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->nfcPermissionGranted:Z

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->checkPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->microphonePermissionGranted:Z

    return-void
.end method

.method private static extractUserAgentFromWebSettings()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get user agent from call to getDefaultUserAgent"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static extractUserAgentFromWebView()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$3;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$3;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAdInfo()Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get AdInfo instance on UI thread!"

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/internal/utils/GoogleAdvertisingIdInfo;

    invoke-direct {v2, v0}, Lcom/millennialmedia/internal/utils/GoogleAdvertisingIdInfo;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, error obtaining advertising info from google play services"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled"

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, illegal state"

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services is not available"

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn\'t support getting advertising ID)"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    :try_start_1
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "limit_ad_tracking"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const-string v3, "advertising_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/millennialmedia/internal/utils/AmazonAdvertisingIdInfo;

    invoke-direct {v3, v0, v2}, Lcom/millennialmedia/internal/utils/AmazonAdvertisingIdInfo;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v3

    goto :goto_2

    :catch_4
    nop

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Amazon advertiser info not available."

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public static getAdvertisingId(Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get advertisering id value"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to determine package name"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0
.end method

.method public static getAvailableExternalStorageSize()J
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getAvailableInternalStorageSize()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAvailableSize(Ljava/lang/String;)J
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method public static getAvailableStorageSize()J
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableInternalStorageSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableExternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getBatteryIntent()Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel()Ljava/lang/Integer;
    .locals 5

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getCameraInfo()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    iput-boolean v1, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget-object v5, v2, v1

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v3, v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    goto :goto_1

    :cond_0
    if-ne v5, v3, :cond_1

    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v3, v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_5

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_3

    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v3, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v3, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError while retrieving camera info <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> -- ignored"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error retrieving camera information for device"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0
.end method

.method public static getCellSignalDbm()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConfigOrientationFromRequestedOrientation(I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result p0

    return p0

    :cond_0
    :pswitch_0
    return v0

    :cond_1
    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentConfigOrientation()I
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getCurrentConfigOrientationString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "landscape"

    return-object v0

    :cond_1
    const-string v0, "portrait"

    return-object v0
.end method

.method public static declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-class v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mmh_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v3

    :try_start_5
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception calculating device id hash with ANDROID_ID <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDisplayDensity()F
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDisplayDensityDpi()I
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static declared-synchronized getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-class v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception calculating <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> hashed device id with ANDROID_ID <"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    instance-of v1, v2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to determine IP address for device"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLocaleCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->fineLocationPermissionGranted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMcc()Ljava/lang/Integer;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse mcc from network operator"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to retrieve mcc"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getMillennialDir()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/.com.millennialmedia/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method

.method public static getMnc()Ljava/lang/Integer;
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse mnc from network operator"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to retrieve mnc"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getNaturalConfigOrientation()I
    .locals 4

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public static getNaturalConfigOrientationString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "landscape"

    return-object v0

    :cond_0
    const-string v0, "portrait"

    return-object v0
.end method

.method public static getNetworkConnectionType()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "unknown"

    if-ne v1, v2, :cond_0

    const-string v3, "wifi"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "hspap"

    goto :goto_0

    :pswitch_1
    const-string v3, "ehrpd"

    goto :goto_0

    :pswitch_2
    const-string v3, "lte"

    goto :goto_0

    :pswitch_3
    const-string v3, "evdo_b"

    goto :goto_0

    :pswitch_4
    const-string v3, "iden"

    goto :goto_0

    :pswitch_5
    const-string v3, "hspa"

    goto :goto_0

    :pswitch_6
    const-string v3, "hsupa"

    goto :goto_0

    :pswitch_7
    const-string v3, "hsdpa"

    goto :goto_0

    :pswitch_8
    const-string v3, "1xrtt"

    goto :goto_0

    :pswitch_9
    const-string v3, "evdo_a"

    goto :goto_0

    :pswitch_a
    const-string v3, "evdo_0"

    goto :goto_0

    :pswitch_b
    const-string v3, "cdma"

    goto :goto_0

    :pswitch_c
    const-string v3, "umts"

    goto :goto_0

    :pswitch_d
    const-string v3, "edge"

    goto :goto_0

    :pswitch_e
    const-string v3, "gprs"

    goto :goto_0

    :cond_1
    const-string v3, "offline"

    :cond_2
    :goto_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPicturesDirectory()Ljava/io/File;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AOL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static getResourceValueFrom(Ljava/lang/String;Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->extractUserAgentFromWebSettings()V

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->extractUserAgentFromWebView()V

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getVolume(I)I
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v2

    float-to-int p0, p0

    return p0
.end method

.method public static hasBluetooth()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasBluetoothPermission()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->bluetoothPermissionGranted:Z

    return v0
.end method

.method public static hasCamera()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v1, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static hasFineLocationPermission()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->fineLocationPermissionGranted:Z

    return v0
.end method

.method public static hasGps()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophone()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophonePermission()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->microphonePermissionGranted:Z

    return v0
.end method

.method public static hasNfc()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNfcPermission()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->nfcPermissionGranted:Z

    return v0
.end method

.method public static hasVibratePermission()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->vibratePermissionGranted:Z

    return v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->registerWebViewUsageWithAndroid()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->extractUserAgentFromWebView()V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->extractPermissions()V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->registerSignalStrengthListener()V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCameraInfo()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object p0

    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    sget-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/MediaContentProvider;->verifyMediaContentProvider(Landroid/content/Context;)V

    new-instance p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;

    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;-><init>()V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isDeviceIdle()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDevicePlugged()Z
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "plugged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->readExternalStoragePermissionGranted:Z

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExternalStorageSupported()Z
    .locals 1

    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->writeExternalStoragePermissionGranted:Z

    return v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->writeExternalStoragePermissionGranted:Z

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLimitAdTrackingEnabled(Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;)Z
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unable to get limit ad tracking value, ad info is null"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/millennialmedia/internal/utils/AdvertisingIdInfo;->isLimitAdTrackingEnabled()Z

    move-result p0

    return p0
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSmsSupported()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTelSupported()Z
    .locals 2

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static registerSignalStrengthListener()V
    .locals 3

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;

    invoke-direct {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private static registerWebViewUsageWithAndroid()V
    .locals 3

    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find system webview class"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/millennialmedia/MMInitializationException;

    const-string v1, "Unable to initialize SDK. The system webview class is currently unavailable, most likely due to a system update in progress. Reinitialize the SDK after the system webview update has finished."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMInitializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resourceExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->resourceExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static resourceExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
