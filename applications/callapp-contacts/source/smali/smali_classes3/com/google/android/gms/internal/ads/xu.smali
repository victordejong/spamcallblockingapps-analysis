.class public final Lcom/google/android/gms/internal/ads/xu;
.super Lcom/google/android/gms/internal/ads/dvb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xt;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/xo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xc365f90

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGenerator"

    .line 11
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/xo;

    if-eqz v1, :cond_1

    .line 13
    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/internal/ads/xo;

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/xq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/xq;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
