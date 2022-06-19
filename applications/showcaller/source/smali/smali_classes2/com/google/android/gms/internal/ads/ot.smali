.class public abstract Lcom/google/android/gms/internal/ads/ot;
.super Lcom/google/android/gms/internal/ads/k2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pt;


# direct methods
.method public static E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/pt;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IMuteThisAdListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/pt;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/pt;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/nt;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nt;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
