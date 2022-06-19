.class public Lcom/pubmatic/sdk/common/utility/POBLocationDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/location/Location;

.field private c:Landroid/location/LocationManager;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->d:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->e:J

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;)Landroid/location/Location;
    .locals 4

    const-string v0, "Error : "

    const-string v1, "PMLocationDetector"

    invoke-virtual {p2, p1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Unable to fetch the location due to unknown reason."

    invoke-static {v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "Unable to fetch the location as user has restricted/denied location access to this app."

    invoke-static {v1, p2, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Unable to fetch the location."

    invoke-static {v1, p1, p2}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    return-object p1
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 5

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private a(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->c:Landroid/location/LocationManager;

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->c:Landroid/location/LocationManager;

    return-object p1
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v0, "PMLocationDetector"

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    sget-object v2, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    :goto_0
    iget-object v3, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Requesting %s location"

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v3, v4}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "No permission to fetch GPS location"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "Location Manager is not available to fetch GPS location"

    invoke-static {v0, v2, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private b()Z
    .locals 6

    iget-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->d:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->d:J

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->e:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 3

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a()V

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    sget-object v1, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->b:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    sget-object v2, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->c:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-direct {p0, v1, v2}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a:Landroid/content/Context;

    sget-object v1, Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;->d:Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;

    invoke-direct {p0, v0, v1}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->a(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBLocationDetector$b;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->d:J

    :cond_3
    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->c()V

    :cond_4
    iget-object v0, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PMLocationDetector"

    const-string v2, "On location changed : %s on time : %s"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->b:Landroid/location/Location;

    invoke-direct {p0}, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->c()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PMLocationDetector"

    const-string v1, "On location provider disabled"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PMLocationDetector"

    const-string v1, "On location provider enabled"

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "PMLocationDetector"

    const-string p3, "On location provider status changed : %s"

    invoke-static {p2, p3, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLocationUpdateIntervalInMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/pubmatic/sdk/common/utility/POBLocationDetector;->e:J

    return-void
.end method
