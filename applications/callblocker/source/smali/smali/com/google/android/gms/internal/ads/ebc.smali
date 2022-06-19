.class public final Lcom/google/android/gms/internal/ads/ebc;
.super Lcom/google/android/gms/internal/ads/dkj;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eba;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dkj;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebb;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 35
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    .line 11
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 12
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 7
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 8
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method public final d()Z
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
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    return v1
.end method

.method public final e()I
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
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    return v1
.end method

.method public final f()F
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return v1
.end method

.method public final g()F
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return v1
.end method

.method public final h()Lcom/google/android/gms/internal/ads/ebb;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 58
    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v3, :cond_1

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/ads/ebb;

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ebd;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ebd;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final i()F
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 38
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return v1
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 43
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return v1
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    return v1
.end method
