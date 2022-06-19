.class public Lcom/google/android/gms/location/p;
.super Lcom/google/android/gms/internal/location/q;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/q;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/location/q;
    .locals 2

    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/location/q;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/location/q;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/o;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/location/o;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
