.class public abstract Lcom/google/android/gms/internal/ads/cq;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 69
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->b()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->c()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 16
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->d()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->e()Lcom/google/android/gms/internal/ads/bu;

    move-result-object v0

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 24
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->f()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->g()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 36
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->i()V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 39
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->j()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 43
    :pswitch_a
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cq;->a(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 47
    :pswitch_b
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cq;->b(Landroid/os/Bundle;)Z

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 52
    :pswitch_c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cq;->c(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 56
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->k()Lcom/google/android/gms/internal/ads/bn;

    move-result-object v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 60
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->l()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 64
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cq;->m()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
    .end packed-switch
.end method
