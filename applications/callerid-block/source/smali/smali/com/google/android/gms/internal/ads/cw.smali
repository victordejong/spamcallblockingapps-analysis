.class public final Lcom/google/android/gms/internal/ads/cw;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fe;)Lcom/google/android/gms/internal/ads/w3;
    .locals 3

    new-instance p1, Lcom/google/android/gms/internal/ads/ff;

    new-instance v0, Lcom/google/android/gms/internal/ads/cq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/cq;-><init>(Lcom/google/android/gms/internal/ads/dp;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/ff;-><init>(Lcom/google/android/gms/internal/ads/fe;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/dv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dv;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/w3;

    new-instance v1, Lcom/google/android/gms/internal/ads/fl;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/fl;-><init>(Lcom/google/android/gms/internal/ads/gk;I)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/w3;-><init>(Lcom/google/android/gms/internal/ads/do2;Lcom/google/android/gms/internal/ads/kw2;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/w3;->a()V

    return-object p0
.end method
