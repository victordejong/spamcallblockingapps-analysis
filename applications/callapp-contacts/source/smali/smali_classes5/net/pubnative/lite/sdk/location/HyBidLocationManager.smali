.class public Lnet/pubnative/lite/sdk/location/HyBidLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final LOCATION_UPDATE_TIMEOUT:I = 0x2710

.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentBestLocation:Landroid/location/Location;

.field private final mManager:Landroid/location/LocationManager;

.field private mStopUpdatesRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager$1;-><init>(Lnet/pubnative/lite/sdk/location/HyBidLocationManager;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mStopUpdatesRunnable:Ljava/lang/Runnable;

    const-string v0, "location"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    .line 55
    iput-object p1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getLastKnownGPSLocation()Landroid/location/Location;
    .locals 2

    .line 63
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasGPSProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLastKnownNetworkLocation()Landroid/location/Location;
    .locals 2

    .line 59
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasNetworkProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocationFromProviders()Landroid/location/Location;
    .locals 3

    .line 157
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasCoarsePermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasFinePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getLastKnownNetworkLocation()Landroid/location/Location;

    move-result-object v0

    .line 158
    :goto_1
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasFinePermission()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getLastKnownGPSLocation()Landroid/location/Location;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p0, v2, v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    :goto_3
    move-object v1, v2

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_6

    :cond_5
    move-object v1, v0

    :cond_6
    :goto_4
    return-object v1
.end method

.method private hasCoarsePermission()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNPermissionUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasFinePermission()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNPermissionUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasGPSProvider()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasNetworkProvider()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasPermission()Z
    .locals 1

    .line 75
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasCoarsePermission()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasFinePermission()Z

    move-result v0

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

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 151
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getUserLocation()Landroid/location/Location;
    .locals 2

    .line 177
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->getLocationFromProviders()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mCurrentBestLocation:Landroid/location/Location;

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iput-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mCurrentBestLocation:Landroid/location/Location;

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mCurrentBestLocation:Landroid/location/Location;

    .line 186
    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->isLocationTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/pubnative/lite/sdk/HyBid;->areLocationUpdatesEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->startLocationUpdates()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-wide/32 v6, -0x1d4c0

    cmp-long v4, v1, v6

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz v4, :cond_5

    return v5

    .line 130
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-gez v2, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    const/16 v6, 0xc8

    if-le v2, v6, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 136
    :goto_5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v4, :cond_9

    return v0

    :cond_9
    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    if-eqz p1, :cond_b

    return v0

    :cond_b
    return v5
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mCurrentBestLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iput-object p1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mCurrentBestLocation:Landroid/location/Location;

    .line 204
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->stopLocationUpdates()V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public startLocationUpdates()V
    .locals 7

    .line 90
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasFinePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasGPSProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "gps"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasNetworkProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "network"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->hasCoarsePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "network"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 100
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mStopUpdatesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopLocationUpdates()V
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/location/HyBidLocationManager;->mManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
