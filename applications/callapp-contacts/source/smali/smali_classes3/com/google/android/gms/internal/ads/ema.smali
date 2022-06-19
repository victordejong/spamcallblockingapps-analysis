.class public final Lcom/google/android/gms/internal/ads/ema;
.super Lcom/google/android/gms/internal/ads/dvb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ely;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdReason"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dvb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvb;->zzdp()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dvb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
