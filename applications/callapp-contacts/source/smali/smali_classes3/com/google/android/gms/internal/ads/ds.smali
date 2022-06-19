.class public final Lcom/google/android/gms/internal/ads/ds;
.super Lcom/google/android/gms/internal/ads/dvb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dq;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ff;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/dynamic/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final c()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final d()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/emk;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x7

    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/emn;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/emk;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x8

    .line 33
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
