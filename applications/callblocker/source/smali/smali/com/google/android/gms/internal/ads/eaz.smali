.class public abstract Lcom/google/android/gms/internal/ads/eaz;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eba;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eba;
    .locals 2

    .prologue
    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 8
    :goto_0
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/eba;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/eba;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ebc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ebc;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->a()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->b()V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 16
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/eaz;->a(Z)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 20
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->d()Z

    move-result v0

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 24
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->e()I

    move-result v0

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 28
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->f()F

    move-result v0

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 32
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->g()F

    move-result v0

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 36
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/eaz;->a(Lcom/google/android/gms/internal/ads/ebb;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 39
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v2, :cond_1

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/ads/ebb;

    goto :goto_2

    .line 42
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ebd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ebd;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 47
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->i()F

    move-result v0

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 51
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->j()Z

    move-result v0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 55
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->h()Lcom/google/android/gms/internal/ads/ebb;

    move-result-object v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 59
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->k()Z

    move-result v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 63
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/eaz;->c()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
