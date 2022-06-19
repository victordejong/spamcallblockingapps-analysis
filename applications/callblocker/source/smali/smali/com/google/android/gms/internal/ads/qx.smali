.class public abstract Lcom/google/android/gms/internal/ads/qx;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/qy;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/qy;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/qy;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ra;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ra;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 10
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/rh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rh;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Lcom/google/android/gms/internal/ads/rh;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->a()V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 17
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 25
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Lcom/google/android/gms/internal/ads/rb;)V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 20
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 21
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/rb;

    if-eqz v2, :cond_1

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/rb;

    goto :goto_2

    .line 23
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/rd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 28
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->b()Z

    move-result v0

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 32
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->c()V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 35
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->d()V

    .line 36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 38
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->e()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 41
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 45
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->b(Lcom/google/android/gms/dynamic/a;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 49
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->c(Lcom/google/android/gms/dynamic/a;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 53
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->f()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 57
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 61
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dzu;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dzr;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Lcom/google/android/gms/internal/ads/dzr;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 65
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 69
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 70
    if-nez v1, :cond_2

    .line 77
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Lcom/google/android/gms/internal/ads/qw;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 72
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/qw;

    if-eqz v2, :cond_3

    .line 74
    check-cast v0, Lcom/google/android/gms/internal/ads/qw;

    goto :goto_3

    .line 75
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/qv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/qv;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 80
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->b(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 84
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->d(Lcom/google/android/gms/dynamic/a;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 88
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->c(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 92
    :pswitch_13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/qx;->a(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 96
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->h()Z

    move-result v0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 100
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qx;->i()Lcom/google/android/gms/internal/ads/eav;

    move-result-object v0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method
