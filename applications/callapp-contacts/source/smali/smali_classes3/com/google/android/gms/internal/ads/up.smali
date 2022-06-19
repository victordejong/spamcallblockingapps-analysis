.class public abstract Lcom/google/android/gms/internal/ads/up;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/uq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/uq;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/uq;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/us;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/us;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 97
    :pswitch_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/up;->a(Z)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 85
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 90
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/uy;

    if-eqz v0, :cond_1

    .line 91
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/uy;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/va;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/va;-><init>(Landroid/os/IBinder;)V

    .line 94
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/up;->b(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 81
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/emh;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/emd;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/emd;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/up;->e()Lcom/google/android/gms/internal/ads/emj;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_5

    .line 73
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/up;->d()Lcom/google/android/gms/internal/ads/ul;

    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_5

    .line 68
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;)Z

    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/dynamic/b;Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 64
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/up;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_5

    .line 60
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener"

    .line 1005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 1006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/emc;

    if-eqz p4, :cond_3

    .line 1007
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/emc;

    goto :goto_1

    .line 1008
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/eme;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/eme;-><init>(Landroid/os/IBinder;)V

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/emc;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 56
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaww;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaww;

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/zzaww;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 45
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    .line 48
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 49
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/uz;

    if-eqz p4, :cond_5

    .line 50
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/uz;

    goto :goto_2

    .line 51
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/vc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/vc;-><init>(Landroid/os/IBinder;)V

    .line 53
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/uz;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 41
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/dynamic/b;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 37
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/up;->c()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 33
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/up;->b()Z

    move-result p1

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Z)V

    goto :goto_5

    .line 22
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 25
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 26
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ur;

    if-eqz p4, :cond_7

    .line 27
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/ur;

    goto :goto_3

    .line 28
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/ut;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ut;-><init>(Landroid/os/IBinder;)V

    .line 30
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/ur;)V

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 10
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 15
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/uy;

    if-eqz v0, :cond_9

    .line 16
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/internal/ads/uy;

    goto :goto_4

    .line 17
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/va;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/va;-><init>(Landroid/os/IBinder;)V

    .line 19
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/up;->a(Lcom/google/android/gms/internal/ads/zzvq;Lcom/google/android/gms/internal/ads/uy;)V

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_5
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
