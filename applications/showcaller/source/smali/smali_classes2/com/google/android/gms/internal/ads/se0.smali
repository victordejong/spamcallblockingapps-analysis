.class public final Lcom/google/android/gms/internal/ads/se0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/fe0;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/re0;->a:Lcom/google/android/gms/internal/ads/gi0;

    .line 2
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/hi0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gi0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/je0;

    const v2, 0xcbe6bb0

    .line 3
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/je0;->a3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 4
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/fe0;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/fe0;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/de0;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/de0;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    const-string p1, "#007 Could not call remote method."

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
