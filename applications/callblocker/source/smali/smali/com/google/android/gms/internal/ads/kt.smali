.class public abstract Lcom/google/android/gms/internal/ads/kt;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ku;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ku;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/ku;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/kw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/kw;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->a()V

    .line 76
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->b()V

    goto :goto_1

    .line 14
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(I)V

    goto :goto_1

    .line 17
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->c()V

    goto :goto_1

    .line 19
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->d()V

    goto :goto_1

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->e()V

    goto :goto_1

    .line 23
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(Lcom/google/android/gms/internal/ads/kv;)V

    goto :goto_1

    .line 26
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/kv;

    if-eqz v2, :cond_1

    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/kv;

    goto :goto_2

    .line 29
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ky;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ky;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 33
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->f()V

    goto :goto_1

    .line 35
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/kt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cu;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cr;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/kt;->a(Lcom/google/android/gms/internal/ads/cr;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->g()V

    goto :goto_1

    .line 45
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->h()V

    goto :goto_1

    .line 50
    :pswitch_d
    sget-object v0, Lcom/google/android/gms/internal/ads/rr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rr;

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(Lcom/google/android/gms/internal/ads/rr;)V

    goto :goto_1

    .line 53
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->i()V

    goto :goto_1

    .line 55
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rs;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rt;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(Lcom/google/android/gms/internal/ads/rt;)V

    goto/16 :goto_1

    .line 58
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->b(I)V

    goto/16 :goto_1

    .line 61
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->j()V

    goto/16 :goto_1

    .line 63
    :pswitch_12
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->a(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 66
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/kt;->k()V

    goto/16 :goto_1

    .line 68
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/kt;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/kt;->a(ILjava/lang/String;)V

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
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
