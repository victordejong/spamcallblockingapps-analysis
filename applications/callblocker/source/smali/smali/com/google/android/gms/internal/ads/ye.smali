.class public final Lcom/google/android/gms/internal/ads/ye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/dxq;
    .locals 4

    .prologue
    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/iy;

    new-instance v1, Lcom/google/android/gms/internal/ads/ro;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ro;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/iy;-><init>(Lcom/google/android/gms/internal/ads/ga;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/xe;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/xe;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/dxq;

    new-instance v3, Lcom/google/android/gms/internal/ads/jy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/nr;)V

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/ads/dxq;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/dqu;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dxq;->a()V

    .line 9
    return-object v1
.end method
