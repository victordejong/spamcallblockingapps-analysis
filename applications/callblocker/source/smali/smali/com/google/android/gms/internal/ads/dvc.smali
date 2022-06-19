.class public abstract Lcom/google/android/gms/internal/ads/dvc;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dvd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

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

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvc;->a()Lcom/google/android/gms/internal/ads/dzn;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 20
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 16
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dvc;->a(Lcom/google/android/gms/internal/ads/dvi;)V

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 11
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 12
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/dvi;

    if-eqz v2, :cond_1

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/dvi;

    goto :goto_2

    .line 14
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dvj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dvj;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
