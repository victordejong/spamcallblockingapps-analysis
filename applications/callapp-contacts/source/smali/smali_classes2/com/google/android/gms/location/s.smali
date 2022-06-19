.class public abstract Lcom/google/android/gms/location/s;
.super Lcom/google/android/gms/internal/location/q;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/location/t;
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/location/t;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/location/t;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/r;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/location/r;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/ai;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/s;->a(Lcom/google/android/gms/location/LocationAvailability;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/ai;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/s;->a(Lcom/google/android/gms/location/LocationResult;)V

    :goto_0
    return v0
.end method
