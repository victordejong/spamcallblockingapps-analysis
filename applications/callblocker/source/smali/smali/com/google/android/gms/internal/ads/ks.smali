.class public abstract Lcom/google/android/gms/internal/ads/ks;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/kp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 219
    :pswitch_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 4
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/dyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dyd;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 9
    if-nez v7, :cond_0

    move-object v5, v6

    :goto_1
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_1

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    move-object v5, v0

    goto :goto_1

    .line 14
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 19
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 23
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 27
    if-nez v4, :cond_2

    .line 34
    :goto_3
    invoke-virtual {p0, v2, v0, v3, v6}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 29
    :cond_2
    const-string/jumbo v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 30
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_3

    .line 31
    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    move-object v6, v1

    goto :goto_3

    .line 32
    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 37
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->b()V

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 40
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->c()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 43
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/dyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dyd;

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 49
    if-nez v7, :cond_4

    :goto_4
    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 51
    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v6, :cond_5

    .line 53
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    move-object v6, v0

    goto :goto_4

    .line 54
    :cond_5
    new-instance v6, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 59
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dya;

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 64
    if-nez v7, :cond_6

    move-object v5, v6

    :goto_5
    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 66
    :cond_6
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_7

    .line 68
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    move-object v5, v0

    goto :goto_5

    .line 69
    :cond_7
    new-instance v5, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 74
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->d()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 77
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->e()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 80
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dya;

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rl;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rm;

    move-result-object v4

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rm;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 88
    :pswitch_b
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 93
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->f()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 96
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->g()Z

    move-result v0

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_2

    .line 100
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dya;

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 105
    if-nez v7, :cond_8

    move-object v5, v6

    .line 112
    :goto_6
    sget-object v0, Lcom/google/android/gms/internal/ads/bl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/bl;

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, p0

    .line 114
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/bl;Ljava/util/List;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 107
    :cond_8
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_9

    .line 109
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    move-object v5, v0

    goto :goto_6

    .line 110
    :cond_9
    new-instance v5, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 117
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->h()Lcom/google/android/gms/internal/ads/kx;

    move-result-object v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 121
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->i()Lcom/google/android/gms/internal/ads/ld;

    move-result-object v0

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 125
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 129
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->k()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 133
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->l()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 137
    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 143
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 147
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->m()Z

    move-result v0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_2

    .line 151
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rl;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rm;

    move-result-object v1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/rm;Ljava/util/List;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 157
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->n()Lcom/google/android/gms/internal/ads/cr;

    move-result-object v0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 161
    :pswitch_19
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ks;->a(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 165
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->o()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 169
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->p()Lcom/google/android/gms/internal/ads/le;

    move-result-object v0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_2

    .line 173
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 177
    if-nez v4, :cond_a

    .line 184
    :goto_7
    invoke-virtual {p0, v2, v0, v3, v6}, Lcom/google/android/gms/internal/ads/ks;->b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 179
    :cond_a
    const-string/jumbo v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 180
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_b

    .line 181
    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    move-object v6, v1

    goto :goto_7

    .line 182
    :cond_b
    new-instance v6, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    .line 187
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ks;->b(Lcom/google/android/gms/dynamic/a;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 191
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gg;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gd;

    move-result-object v1

    .line 193
    sget-object v2, Lcom/google/android/gms/internal/ads/gl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ks;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 197
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 198
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dya;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 201
    if-nez v4, :cond_c

    .line 208
    :goto_8
    invoke-virtual {p0, v2, v0, v3, v6}, Lcom/google/android/gms/internal/ads/ks;->c(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 203
    :cond_c
    const-string/jumbo v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {v4, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 204
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v5, :cond_d

    .line 205
    check-cast v1, Lcom/google/android/gms/internal/ads/ku;

    move-object v6, v1

    goto :goto_8

    .line 206
    :cond_d
    new-instance v6, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_8

    .line 211
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->q()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 215
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ks;->r()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method
