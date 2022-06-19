.class public abstract Lcom/google/android/gms/internal/ads/gy;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gv;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/gv;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/gv;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/gv;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/gx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/gx;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 23
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 18
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/gy;->a(Lcom/google/android/gms/internal/ads/gp;)V

    .line 24
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    const/4 v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/gp;

    if-eqz v2, :cond_1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/gp;

    goto :goto_1

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/gr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/gr;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 20
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/gy;->a(I)V

    goto :goto_2

    .line 9
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
