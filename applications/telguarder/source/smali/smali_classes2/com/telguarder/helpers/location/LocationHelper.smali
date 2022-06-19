.class public Lcom/telguarder/helpers/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/location/LocationHelper;


# instance fields
.field private mCurrentCoarseLocation:Landroid/location/Location;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/location/LocationHelper;)Landroid/location/Location;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$002(Lcom/telguarder/helpers/location/LocationHelper;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    return-object p1
.end method

.method public static getInstance()Lcom/telguarder/helpers/location/LocationHelper;
    .locals 2

    .line 29
    sget-object v0, Lcom/telguarder/helpers/location/LocationHelper;->mInstance:Lcom/telguarder/helpers/location/LocationHelper;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/telguarder/helpers/location/LocationHelper;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/telguarder/helpers/location/LocationHelper;->mInstance:Lcom/telguarder/helpers/location/LocationHelper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/telguarder/helpers/location/LocationHelper;

    invoke-direct {v1}, Lcom/telguarder/helpers/location/LocationHelper;-><init>()V

    sput-object v1, Lcom/telguarder/helpers/location/LocationHelper;->mInstance:Lcom/telguarder/helpers/location/LocationHelper;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/telguarder/helpers/location/LocationHelper;->mInstance:Lcom/telguarder/helpers/location/LocationHelper;

    return-object v0
.end method


# virtual methods
.method public getCurrentCoarseLocation()Landroid/location/Location;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/location/LocationHelper;->mCurrentCoarseLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isCoarseLocationPermitted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 72
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateCoarseLocation(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method public updateCoarseLocation(Landroid/content/Context;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/location/LocationHelper;->isCoarseLocationPermitted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/telguarder/helpers/location/LocationHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/telguarder/helpers/location/LocationHelper$1;-><init>(Lcom/telguarder/helpers/location/LocationHelper;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
