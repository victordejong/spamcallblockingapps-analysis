.class public Lcom/google/android/gms/location/zzan;
.super Lcom/google/android/gms/internal/location/zza;
.source ""

# interfaces
.implements Lcom/google/android/gms/location/zzak;


# direct methods
.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzak;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/location/zzak;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/zzak;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/zzam;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
