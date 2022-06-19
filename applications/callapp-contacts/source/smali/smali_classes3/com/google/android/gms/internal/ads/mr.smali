.class public abstract Lcom/google/android/gms/internal/ads/mr;
.super Lcom/google/android/gms/internal/ads/dvd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ms;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ms;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ms;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/ms;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/mu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 78
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->b(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto/16 :goto_2

    .line 75
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvh;

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    goto/16 :goto_2

    .line 71
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mr;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 68
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 66
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->k()V

    goto/16 :goto_2

    .line 63
    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->a(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 61
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->j()V

    goto/16 :goto_2

    .line 58
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->b(I)V

    goto/16 :goto_2

    .line 55
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    .line 1005
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 1006
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/ul;

    if-eqz p4, :cond_1

    .line 1007
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/ul;

    goto :goto_0

    .line 1008
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/un;-><init>(Landroid/os/IBinder;)V

    .line 56
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/mr;->a(Lcom/google/android/gms/internal/ads/ul;)V

    goto/16 :goto_2

    .line 53
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->i()V

    goto/16 :goto_2

    .line 50
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/dvc;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->a(Lcom/google/android/gms/internal/ads/zzavy;)V

    goto/16 :goto_2

    .line 48
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->h()V

    goto/16 :goto_2

    .line 45
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->g()V

    goto :goto_2

    .line 39
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/er;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eo;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mr;->a(Lcom/google/android/gms/internal/ads/eo;Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/mr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->f()V

    goto :goto_2

    .line 23
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    .line 26
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 27
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/my;

    if-eqz p4, :cond_3

    .line 28
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/my;

    goto :goto_1

    .line 29
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/mx;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/mx;-><init>(Landroid/os/IBinder;)V

    .line 31
    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/mr;->a(Lcom/google/android/gms/internal/ads/my;)V

    goto :goto_2

    .line 21
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->e()V

    goto :goto_2

    .line 19
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->d()V

    goto :goto_2

    .line 17
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->c()V

    goto :goto_2

    .line 14
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/mr;->a(I)V

    goto :goto_2

    .line 12
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->b()V

    goto :goto_2

    .line 10
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mr;->a()V

    .line 82
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
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
