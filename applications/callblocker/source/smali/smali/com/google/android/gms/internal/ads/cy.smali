.class public abstract Lcom/google/android/gms/internal/ads/cy;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cv;
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
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cv;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/cv;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cx;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cy;->a(Lcom/google/android/gms/internal/ads/cj;)V

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 21
    :goto_1
    return v0

    .line 13
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 14
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/cj;

    if-eqz v3, :cond_1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/cj;

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cl;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/cl;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
