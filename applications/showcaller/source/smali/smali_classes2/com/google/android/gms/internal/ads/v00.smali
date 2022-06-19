.class public abstract Lcom/google/android/gms/internal/ads/v00;
.super Lcom/google/android/gms/internal/ads/k2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w00;


# direct methods
.method public static E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/w00;
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/w00;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/w00;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/u00;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/u00;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
