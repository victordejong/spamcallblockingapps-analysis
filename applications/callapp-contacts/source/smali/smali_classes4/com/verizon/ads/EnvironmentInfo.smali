.class public final Lcom/verizon/ads/EnvironmentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;,
        Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;,
        Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;,
        Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;,
        Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;,
        Lcom/verizon/ads/EnvironmentInfo$CameraType;,
        Lcom/verizon/ads/EnvironmentInfo$NetworkType;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static volatile b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

.field private final e:Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-class v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo;->c:Landroid/content/Context;

    .line 1003
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    invoke-direct {v0, p1}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->d:Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    .line 1004
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    invoke-direct {v0, p1}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->e:Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    .line 1006
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo$1;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/EnvironmentInfo$1;-><init>(Lcom/verizon/ads/EnvironmentInfo;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 74
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/verizon/ads/EnvironmentInfo;

    monitor-enter v0

    .line 1174
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1175
    monitor-exit v0

    return-void

    .line 1178
    :cond_0
    :try_start_1
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    .line 1182
    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 1184
    new-instance v2, Lcom/verizon/ads/GoogleAdvertisingIdInfo;

    invoke-direct {v2, v1}, Lcom/verizon/ads/GoogleAdvertisingIdInfo;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)V

    sput-object v2, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1197
    :try_start_3
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to get google play services advertising info, error obtaining advertising info from google play services"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1195
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1193
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to get google play services advertising info, illegal state"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 1191
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to get google play services advertising info, google play services is not available"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 1187
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn\'t support getting advertising ID)"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1202
    :goto_0
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_1

    .line 1205
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "limit_ad_tracking"

    .line 1208
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "advertising_id"

    .line 1211
    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1213
    new-instance v2, Lcom/verizon/ads/AmazonAdvertisingIdInfo;

    invoke-direct {v2, p0, v1}, Lcom/verizon/ads/AmazonAdvertisingIdInfo;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_4
    move-exception p0

    .line 1216
    :try_start_5
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Amazon advertiser info not available."

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1221
    :cond_1
    :goto_1
    sget-object p0, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    if-nez p0, :cond_2

    const-string p0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1222
    sget-object p0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "No advertiser ID could be found. Please include Google Play Services Ads in your application if available."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 1225
    :cond_2
    sget-object p0, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1226
    sget-object p0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1229
    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/verizon/ads/EnvironmentInfo;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1320
    sget-object p0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Context is null.  Unable to get networkInfo."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 1325
    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "connectivity"

    .line 1329
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 1333
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getNetworkType()Lcom/verizon/ads/EnvironmentInfo$NetworkType;
    .locals 2

    .line 1281
    sget-object v0, Lcom/verizon/ads/VASAds;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 1283
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Application context is null.  Unable to get network type."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1284
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->UNKNOWN:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0

    .line 1287
    :cond_0
    sget-object v0, Lcom/verizon/ads/VASAds;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1289
    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1292
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->UNKNOWN:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0

    .line 1295
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->OFFLINE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0

    .line 1299
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1305
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->UNKNOWN:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0

    .line 1303
    :cond_3
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->WIFI:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0

    .line 1301
    :cond_4
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkType;->MOBILE:Lcom/verizon/ads/EnvironmentInfo$NetworkType;

    return-object v0
.end method

.method public static isNetworkAvailable()Z
    .locals 3

    .line 1252
    sget-object v0, Lcom/verizon/ads/VASAds;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1254
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Application context is null.  Unable to get networkInfo."

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 1258
    :cond_0
    sget-object v0, Lcom/verizon/ads/VASAds;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1260
    invoke-static {v0}, Lcom/verizon/ads/EnvironmentInfo;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final getAdvertisingIdInfo()Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;
    .locals 1

    .line 1082
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1086
    :cond_0
    sget-object v0, Lcom/verizon/ads/EnvironmentInfo;->b:Lcom/verizon/ads/EnvironmentInfo$AdvertisingIdInfo;

    return-object v0
.end method

.method public final getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->e:Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    return-object v0
.end method

.method public final getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1135
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1146
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string v6, "UTF-8"

    .line 1147
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 2234
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2235
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-byte v9, v5, v8

    const-string v10, "%02X"

    new-array v11, v3, [Ljava/lang/Object;

    .line 2236
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2239
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v5

    .line 1152
    sget-object v6, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object v0, v2, v3

    const-string p1, "Exception calculating <%s> hashed device id with ANDROID_ID <%s>"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1, v5}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 3

    .line 1098
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/verizon/ads/VASAds;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->c:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->c:Landroid/content/Context;

    const-string v2, "location"

    .line 1104
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const-string v1, "passive"

    .line 1107
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getNetworkOperatorInfo()Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;
    .locals 1

    .line 1067
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo;->d:Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    return-object v0
.end method

.method public final getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1122
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSDKInfo()Lcom/verizon/ads/SDKInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/SDKInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized isCustomTabsSupported()Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1028
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.yahoo.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1030
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1031
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1032
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.support.customtabs.action.CustomTabsService"

    .line 1033
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1037
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Custom tabs is supported by at least one installed browser."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 1038
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 1042
    :try_start_1
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Verification of custom tabs support requires the custom tabs support lib."

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    :cond_1
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Custom tabs is not supported."

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1045
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
