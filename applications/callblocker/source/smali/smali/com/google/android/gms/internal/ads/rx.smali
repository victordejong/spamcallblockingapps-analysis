.class public abstract Lcom/google/android/gms/internal/ads/rx;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ru;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ru;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ru;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/ru;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/rw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/rw;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 10
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 19
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo v1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 15
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/sa;

    if-eqz v3, :cond_1

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/sa;

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/sb;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 22
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 23
    if-nez v2, :cond_2

    .line 30
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/ry;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 25
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ry;

    if-eqz v1, :cond_3

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/ads/ry;

    move-object v1, v0

    goto :goto_3

    .line 28
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/rz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/rz;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 33
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rx;->a()Z

    move-result v0

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto :goto_2

    .line 37
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rx;->b()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 41
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 45
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 53
    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/sd;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 48
    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/sd;

    if-eqz v1, :cond_5

    .line 50
    check-cast v0, Lcom/google/android/gms/internal/ads/sd;

    move-object v1, v0

    goto :goto_4

    .line 51
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/sc;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/sc;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 56
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/sh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sh;

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/sh;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 60
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eas;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eap;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/eap;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 64
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rx;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 68
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/dynamic/a;Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 73
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rx;->d()Lcom/google/android/gms/internal/ads/rt;

    move-result-object v0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 77
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rx;->e()Lcom/google/android/gms/internal/ads/eav;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 81
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eat;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eau;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rx;->a(Lcom/google/android/gms/internal/ads/eau;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 85
    :pswitch_d
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 87
    if-nez v2, :cond_6

    .line 94
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/rx;->b(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 89
    :cond_6
    const-string/jumbo v1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    invoke-interface {v2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 90
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/sa;

    if-eqz v3, :cond_7

    .line 91
    check-cast v1, Lcom/google/android/gms/internal/ads/sa;

    goto :goto_5

    .line 92
    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/sb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/sb;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

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
        :pswitch_d
    .end packed-switch
.end method
