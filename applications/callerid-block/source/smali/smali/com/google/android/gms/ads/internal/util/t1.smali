.class public Lcom/google/android/gms/ads/internal/util/t1;
.super Lcom/google/android/gms/ads/internal/util/s1;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public final p(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzvy;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/l1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzvy;->c:Lcom/google/android/gms/internal/ads/zzvy;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    :goto_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzvy;->b:Lcom/google/android/gms/internal/ads/zzvy;

    return-object p1
.end method
