.class public abstract Lcom/google/android/gms/internal/ads/g80;
.super Lcom/google/android/gms/internal/ads/k2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/h80;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/h80;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/h80;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/h80;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/f80;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/f80;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final D6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->K()F

    move-result p1

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->u()F

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->q()F

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/h80;->k2(Lcom/google/android/gms/dynamic/a;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p4

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p2

    .line 16
    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/h80;->y1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a$a;->D0(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/h80;->g0(Lcom/google/android/gms/dynamic/a;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 21
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->w()V

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 23
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->zzu()Z

    move-result p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 26
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->zzt()Z

    move-result p1

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->b(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 29
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->o()Landroid/os/Bundle;

    move-result-object p1

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->e(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 32
    :pswitch_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->s()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 35
    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->k()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 38
    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->l()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 41
    :pswitch_d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x0

    .line 42
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_0

    .line 43
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->m()Lcom/google/android/gms/internal/ads/ju;

    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 46
    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->j()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_10
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->i()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->h()D

    move-result-wide p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 55
    :pswitch_12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->g()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->f()Lcom/google/android/gms/internal/ads/gz;

    move-result-object p1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/l2;->f(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_0

    .line 64
    :pswitch_15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->d()Ljava/util/List;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 70
    :pswitch_17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/h80;->a()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
