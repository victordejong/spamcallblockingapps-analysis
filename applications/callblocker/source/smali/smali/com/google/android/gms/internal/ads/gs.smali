.class public abstract Lcom/google/android/gms/internal/ads/gs;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gs;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 32
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gs;->c()V

    .line 9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 20
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/gs;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gu;)V

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 15
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 16
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/gu;

    if-eqz v3, :cond_1

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/gu;

    goto :goto_2

    .line 18
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/gw;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/gw;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 23
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/gs;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 27
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gs;->d()Lcom/google/android/gms/internal/ads/bt;

    move-result-object v0

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 3
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
