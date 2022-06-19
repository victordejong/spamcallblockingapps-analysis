.class public abstract Lcom/google/android/gms/location/v;
.super Lcom/google/android/gms/internal/location/q;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/location/w;
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/location/w;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/location/w;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/u;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/location/u;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/ai;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/v;->a(Landroid/location/Location;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
