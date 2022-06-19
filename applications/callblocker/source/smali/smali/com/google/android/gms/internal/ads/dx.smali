.class public abstract Lcom/google/android/gms/internal/ads/dx;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/du;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->b()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->c()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->d()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v0

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->e()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->f()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->g()D

    move-result-wide v0

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_1

    .line 32
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->h()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->i()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 44
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->k()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->l()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 51
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->m()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 55
    :pswitch_d
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->a(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 59
    :pswitch_e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->b(Landroid/os/Bundle;)Z

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 64
    :pswitch_f
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->c(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 68
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->n()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 72
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->o()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 76
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->p()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 80
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 81
    if-nez v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 88
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->a(Lcom/google/android/gms/internal/ads/dt;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 83
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dt;

    if-eqz v2, :cond_1

    .line 85
    check-cast v0, Lcom/google/android/gms/internal/ads/dt;

    goto :goto_2

    .line 86
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dv;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 91
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->q()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 94
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->r()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 98
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->s()Z

    move-result v0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 102
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ean;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eal;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->a(Lcom/google/android/gms/internal/ads/eal;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 106
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eak;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eah;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->a(Lcom/google/android/gms/internal/ads/eah;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 110
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->t()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 113
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->u()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 116
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->v()Lcom/google/android/gms/internal/ads/bt;

    move-result-object v0

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 120
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->w()Z

    move-result v0

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 124
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dx;->x()Lcom/google/android/gms/internal/ads/eav;

    move-result-object v0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 128
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eat;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eau;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dx;->a(Lcom/google/android/gms/internal/ads/eau;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x2
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
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method
