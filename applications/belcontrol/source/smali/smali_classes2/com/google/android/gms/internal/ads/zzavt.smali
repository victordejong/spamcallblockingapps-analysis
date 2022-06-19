.class public final Lcom/google/android/gms/internal/ads/zzavt;
.super Lcom/google/android/gms/internal/ads/zzgw;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavr;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onRewardedAdOpened()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzavl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgw;->zzdo()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
