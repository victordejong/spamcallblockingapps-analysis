.class public Lcom/flurry/sdk/jx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/ly$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jx$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "jx"

.field private static b:I = -0x1

.field private static c:I = -0x1

.field private static d:I = -0x1

.field private static e:Lcom/flurry/sdk/jx;


# instance fields
.field private f:Z

.field private g:Landroid/location/Location;

.field private h:J

.field private i:Landroid/location/LocationManager;

.field private j:Lcom/flurry/sdk/jx$a;

.field private k:Landroid/location/Location;

.field private l:Z

.field private m:I

.field private n:Ljava/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/jx;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/jx;->l:Z

    iput v0, p0, Lcom/flurry/sdk/jx;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/sdk/jx;->i:Landroid/location/LocationManager;

    new-instance v0, Lcom/flurry/sdk/jx$a;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jx$a;-><init>(Lcom/flurry/sdk/jx;)V

    iput-object v0, p0, Lcom/flurry/sdk/jx;->j:Lcom/flurry/sdk/jx$a;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/sdk/jx;->f:Z

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    sget-object v1, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportLocation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/jx;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "ExplicitLocation"

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    iput-object v4, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, ExplicitLocation = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/jx;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/jx;->h:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/flurry/sdk/jx;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/jx;->k:Landroid/location/Location;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jx;->i:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jx;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jx;->e:Lcom/flurry/sdk/jx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/jx;

    invoke-direct {v1}, Lcom/flurry/sdk/jx;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jx;->e:Lcom/flurry/sdk/jx;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/jx;->e:Lcom/flurry/sdk/jx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/flurry/sdk/jx;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/flurry/sdk/jx;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jx;->i()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/flurry/sdk/jx;->c:I

    return v0
.end method

.method public static synthetic c(Lcom/flurry/sdk/jx;)I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/jx;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/jx;->m:I

    return v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/flurry/sdk/jx;->d:I

    return v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 4

    iget-boolean v0, p0, Lcom/flurry/sdk/jx;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jx;->i:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/sdk/jx;->j:Lcom/flurry/sdk/jx$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/jx;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/flurry/sdk/jx;->h:J

    sget-object v1, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "Unregister location timer"

    invoke-static {v2, v1, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/jx;->l:Z

    const-string v0, "LocationProvider stopped"

    invoke-static {v2, v1, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "ReportLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    const-string v0, "ExplicitLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    sget-object p2, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    const-string v0, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key."

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    sget-object p1, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, ExplicitLocation = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/jx;->f:Z

    sget-object p1, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, ReportLocation = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/jx;->f:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    const-string v1, "Location update requested"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/flurry/sdk/jx;->m:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/flurry/sdk/jx;->l:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/flurry/sdk/jx;->f:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/flurry/sdk/jx;->m:I

    invoke-static {v1}, Lcom/flurry/sdk/jx;->a(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v1, "passive"

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/flurry/sdk/jx;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "network"

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/flurry/sdk/jx;->i:Landroid/location/LocationManager;

    const-wide/16 v7, 0x2710

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/flurry/sdk/jx;->j:Lcom/flurry/sdk/jx$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    move-object v6, v1

    invoke-virtual/range {v5 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jx;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/jx;->k:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x15f90

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/flurry/sdk/jx;->h:J

    iget-object v1, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iput-object v4, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    :cond_4
    const-string v1, "Register location timer"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/jx;->n:Ljava/util/Timer;

    new-instance v3, Lcom/flurry/sdk/jx$1;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/jx$1;-><init>(Lcom/flurry/sdk/jx;)V

    invoke-virtual {v1, v3, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/jx;->l:Z

    const-string v1, "LocationProvider started"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    const-string v2, "Stop update location requested"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/jx;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()Landroid/location/Location;
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/jx;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jx;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/sdk/jx;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/flurry/sdk/jx;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/flurry/sdk/jx;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "passive"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/flurry/sdk/jx;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network"

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jx;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/flurry/sdk/jx;->k:Landroid/location/Location;

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/jx;->k:Landroid/location/Location;

    :cond_5
    const/4 v0, 0x4

    sget-object v2, Lcom/flurry/sdk/jx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocation() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
