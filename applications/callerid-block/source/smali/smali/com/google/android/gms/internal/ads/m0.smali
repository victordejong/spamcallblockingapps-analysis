.class public final Lcom/google/android/gms/internal/ads/m0;
.super Lcom/google/android/gms/internal/ads/ik2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/o0;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final H3(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/kk2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/internal/ads/he;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/kk2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final e5(Lcom/google/android/gms/internal/ads/zzads;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/kk2;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ik2;->r1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ik2;->r1(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final s2(Lcom/google/android/gms/internal/ads/wa;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/kk2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method
