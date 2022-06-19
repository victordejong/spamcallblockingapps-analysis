.class Lcom/amazon/device/ads/DtbGeoLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DtbGeoLocation"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unable to initialize DtbGeoLocation without setting app context"

    .line 18
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->b(Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a()Landroid/location/Location;
    .locals 7

    .line 43
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/amazon/device/ads/DtbGeoLocation;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "gps"

    .line 50
    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbGeoLocation;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    const-string v3, "network"

    .line 51
    invoke-static {v0, v3}, Lcom/amazon/device/ads/DtbGeoLocation;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 58
    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 62
    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    goto :goto_0

    :cond_1
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    :goto_0
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    :cond_2
    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 65
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_1

    .line 68
    :cond_3
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 73
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_1

    .line 77
    :cond_5
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 82
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :goto_1
    move-object v2, v1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 85
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :goto_2
    move-object v2, v0

    :cond_8
    :goto_3
    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    const-string v0, "location"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to retrieve location: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "not found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to retrieve location: No permissions to access "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
