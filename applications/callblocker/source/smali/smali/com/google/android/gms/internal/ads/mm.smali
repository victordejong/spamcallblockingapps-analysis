.class public abstract Lcom/google/android/gms/internal/ads/mm;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/mn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/mn;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/mn;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/mp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mp;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    .line 10
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 13
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/dyd;

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 16
    if-nez v7, :cond_0

    :goto_1
    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mm;->a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/mo;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 19
    instance-of v6, v0, Lcom/google/android/gms/internal/ads/mo;

    if-eqz v6, :cond_1

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/mo;

    move-object v6, v0

    goto :goto_1

    .line 21
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/mq;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/mq;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 26
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mm;->a()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 30
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mm;->b()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v0

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 34
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mm;->c()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_2

    .line 38
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mm;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 42
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/mm;->a([Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 47
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 52
    if-nez v7, :cond_2

    move-object v5, v6

    .line 59
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v6

    .line 60
    sget-object v0, Lcom/google/android/gms/internal/ads/dyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/dyd;

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mb;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/dyd;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 54
    :cond_2
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/mb;

    if-eqz v5, :cond_3

    .line 56
    check-cast v0, Lcom/google/android/gms/internal/ads/mb;

    move-object v5, v0

    goto :goto_3

    .line 57
    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/ads/md;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/md;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    .line 64
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 69
    if-nez v7, :cond_4

    move-object v5, v6

    .line 76
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v6

    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mc;Lcom/google/android/gms/internal/ads/ku;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 71
    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/mc;

    if-eqz v5, :cond_5

    .line 73
    check-cast v0, Lcom/google/android/gms/internal/ads/mc;

    move-object v5, v0

    goto :goto_4

    .line 74
    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/ads/me;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/me;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    .line 80
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mm;->b(Lcom/google/android/gms/dynamic/a;)Z

    move-result v0

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_2

    .line 85
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 90
    if-nez v7, :cond_6

    move-object v5, v6

    .line 97
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v6

    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 92
    :cond_6
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 93
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/mi;

    if-eqz v5, :cond_7

    .line 94
    check-cast v0, Lcom/google/android/gms/internal/ads/mi;

    move-object v5, v0

    goto :goto_5

    .line 95
    :cond_7
    new-instance v5, Lcom/google/android/gms/internal/ads/mk;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/mk;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    .line 101
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mm;->c(Lcom/google/android/gms/dynamic/a;)Z

    move-result v0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_2

    .line 106
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 111
    if-nez v7, :cond_8

    move-object v5, v6

    .line 118
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v6

    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mh;Lcom/google/android/gms/internal/ads/ku;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 113
    :cond_8
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 114
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/mh;

    if-eqz v5, :cond_9

    .line 115
    check-cast v0, Lcom/google/android/gms/internal/ads/mh;

    move-object v5, v0

    goto :goto_6

    .line 116
    :cond_9
    new-instance v5, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/mj;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    .line 122
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mm;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 126
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    sget-object v0, Lcom/google/android/gms/internal/ads/dya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dya;

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 131
    if-nez v7, :cond_a

    move-object v5, v6

    .line 138
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;

    move-result-object v6

    move-object v0, p0

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mm;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 133
    :cond_a
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback"

    invoke-interface {v7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/mi;

    if-eqz v5, :cond_b

    .line 135
    check-cast v0, Lcom/google/android/gms/internal/ads/mi;

    move-object v5, v0

    goto :goto_7

    .line 136
    :cond_b
    new-instance v5, Lcom/google/android/gms/internal/ads/mk;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/mk;-><init>(Landroid/os/IBinder;)V

    goto :goto_7

    .line 9
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
