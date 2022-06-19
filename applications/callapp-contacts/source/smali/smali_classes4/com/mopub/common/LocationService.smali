.class public Lcom/mopub/common/LocationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/LocationService$ValidLocationProvider;,
        Lcom/mopub/common/LocationService$LocationAwareness;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/mopub/common/LocationService;


# instance fields
.field a:Landroid/location/Location;

.field b:J

.field volatile c:Lcom/mopub/common/MoPub$LocationAwareness;

.field volatile d:I

.field volatile e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    iput-object v0, p0, Lcom/mopub/common/LocationService;->c:Lcom/mopub/common/MoPub$LocationAwareness;

    const/4 v0, 0x6

    .line 65
    iput v0, p0, Lcom/mopub/common/LocationService;->d:I

    const-wide/32 v0, 0x927c0

    .line 66
    iput-wide v0, p0, Lcom/mopub/common/LocationService;->e:J

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;
    .locals 6

    const-string v0, " location provider."

    const-string v1, "Failed to retrieve location: device has no "

    .line 204
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 211
    :cond_0
    invoke-static {p1, p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->access$000(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    const-string v2, "location"

    .line 216
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 227
    :catch_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 227
    invoke-static {p0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :catch_1
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 224
    invoke-static {p0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :catch_2
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v4, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Failed to retrieve location from "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider: access appears to be disabled."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 221
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-object v3
.end method

.method static a()Lcom/mopub/common/LocationService;
    .locals 2

    .line 74
    sget-object v0, Lcom/mopub/common/LocationService;->f:Lcom/mopub/common/LocationService;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/mopub/common/LocationService;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/mopub/common/LocationService;->f:Lcom/mopub/common/LocationService;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/mopub/common/LocationService;

    invoke-direct {v0}, Lcom/mopub/common/LocationService;-><init>()V

    .line 80
    sput-object v0, Lcom/mopub/common/LocationService;->f:Lcom/mopub/common/LocationService;

    .line 82
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static clearLastKnownLocation()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mopub/common/LocationService;->a:Landroid/location/Location;

    return-void
.end method

.method public static getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    .line 162
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 166
    :cond_0
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v0

    .line 168
    iget-object v2, v0, Lcom/mopub/common/LocationService;->c:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 169
    iget v3, v0, Lcom/mopub/common/LocationService;->d:I

    .line 171
    sget-object v4, Lcom/mopub/common/MoPub$LocationAwareness;->DISABLED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne v2, v4, :cond_1

    return-object v1

    .line 1270
    :cond_1
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object v4

    .line 1271
    iget-object v5, v4, Lcom/mopub/common/LocationService;->a:Landroid/location/Location;

    if-eqz v5, :cond_2

    .line 1274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/mopub/common/LocationService;->b:J

    sub-long/2addr v5, v7

    .line 2144
    iget-wide v7, v4, Lcom/mopub/common/LocationService;->e:J

    cmp-long v4, v5, v7

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 176
    iget-object p0, v0, Lcom/mopub/common/LocationService;->a:Landroid/location/Location;

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    return-object v1

    .line 183
    :cond_4
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v1}, Lcom/mopub/common/LocationService;->a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_5

    .line 185
    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {p0, v1}, Lcom/mopub/common/LocationService;->a(Landroid/content/Context;Lcom/mopub/common/LocationService$ValidLocationProvider;)Landroid/location/Location;

    move-result-object v1

    .line 189
    :cond_5
    sget-object p0, Lcom/mopub/common/MoPub$LocationAwareness;->TRUNCATED:Lcom/mopub/common/MoPub$LocationAwareness;

    if-ne v2, p0, :cond_7

    if-eqz v1, :cond_7

    if-gez v3, :cond_6

    goto :goto_1

    .line 2256
    :cond_6
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 2257
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v2, 0x5

    .line 2258
    invoke-virtual {p0, v3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2259
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    .line 2260
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 2262
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2263
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2264
    invoke-virtual {p0, v3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 2265
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 2266
    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    if-eqz v1, :cond_8

    .line 2288
    invoke-static {}, Lcom/mopub/common/LocationService;->a()Lcom/mopub/common/LocationService;

    move-result-object p0

    .line 2289
    iput-object v1, p0, Lcom/mopub/common/LocationService;->a:Landroid/location/Location;

    .line 2290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mopub/common/LocationService;->b:J

    .line 197
    :cond_8
    iget-object p0, v0, Lcom/mopub/common/LocationService;->a:Landroid/location/Location;

    return-object p0
.end method
