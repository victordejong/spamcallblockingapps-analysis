.class public final Lcom/google/android/gms/internal/ads/cp;
.super Lcom/google/android/gms/internal/ads/dkj;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cn;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dkj;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 59
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 60
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    return-object v1
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 63
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 64
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    return v1
.end method

.method public final c()Ljava/util/List;
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    return-object v1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 70
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    return-object v1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/bu;
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 34
    return-object v0

    .line 28
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/bu;

    if-eqz v3, :cond_1

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/bu;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/bw;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 36
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-object v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 41
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    return-object v1
.end method

.method public final h()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 47
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 51
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/ads/eba;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/eaz;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    return-object v1
.end method

.method public final k()Lcom/google/android/gms/internal/ads/bn;
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 83
    return-object v0

    .line 77
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/bn;

    if-eqz v3, :cond_1

    .line 79
    check-cast v0, Lcom/google/android/gms/internal/ads/bn;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/bp;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/bp;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final l()Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    return-object v1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-object v1
.end method
