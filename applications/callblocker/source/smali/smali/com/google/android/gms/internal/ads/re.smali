.class public abstract Lcom/google/android/gms/internal/ads/re;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/rb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/rb;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/rb;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/rb;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/rd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 10
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->a()V

    .line 36
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->b()V

    goto :goto_1

    .line 14
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->c()V

    goto :goto_1

    .line 16
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->d()V

    goto :goto_1

    .line 18
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 26
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/re;->a(Lcom/google/android/gms/internal/ads/qr;)V

    goto :goto_1

    .line 21
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 22
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/qr;

    if-eqz v2, :cond_1

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/qr;

    goto :goto_2

    .line 24
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/qt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/qt;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 28
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->e()V

    goto :goto_1

    .line 30
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/re;->a(I)V

    goto :goto_1

    .line 33
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re;->f()V

    goto :goto_1

    .line 9
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
    .end packed-switch
.end method
