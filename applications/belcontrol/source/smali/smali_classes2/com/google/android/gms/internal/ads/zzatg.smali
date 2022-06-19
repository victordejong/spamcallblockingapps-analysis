.class public abstract Lcom/google/android/gms/internal/ads/zzatg;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzath;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 p4, 0x1

    if-eq p1, p4, :cond_f

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    const-string v2, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatk;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatk;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzath;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto/16 :goto_5

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatk;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatk;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzath;->zzc(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto/16 :goto_5

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatk;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatk;

    goto :goto_2

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzath;->zzb(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto :goto_5

    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzatk;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatk;

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzath;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V

    goto :goto_5

    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatb;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_4

    :cond_d
    const-string v0, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzati;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzati;

    goto :goto_4

    :cond_e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatl;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-interface {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzath;->zza(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/zzati;)V

    :goto_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_6

    :cond_f
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatb;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzath;->zza(Lcom/google/android/gms/internal/ads/zzatb;)Lcom/google/android/gms/internal/ads/zzatd;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzgx;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_6
    return p4
.end method
