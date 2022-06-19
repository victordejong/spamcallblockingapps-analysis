.class public final Lcom/google/android/gms/internal/ads/i04;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oz3;)Lcom/google/android/gms/internal/ads/gz3;
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/pz3;

    new-instance v0, Lcom/google/android/gms/internal/ads/c04;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/c04;-><init>(Lcom/google/android/gms/internal/ads/b04;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/pz3;-><init>(Lcom/google/android/gms/internal/ads/oz3;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/h04;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/h04;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/gz3;

    new-instance v1, Lcom/google/android/gms/internal/ads/wz3;

    const/high16 v2, 0x500000

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/wz3;-><init>(Lcom/google/android/gms/internal/ads/vz3;I)V

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/gz3;-><init>(Lcom/google/android/gms/internal/ads/py3;Lcom/google/android/gms/internal/ads/xy3;I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gz3;->a()V

    return-object p0
.end method
