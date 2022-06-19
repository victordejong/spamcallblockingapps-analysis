.class public final Lcom/google/android/gms/internal/ads/m32;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/v02;)Lcom/google/android/gms/internal/ads/n02;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/o32;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/o32;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m12;->e(Lcom/google/android/gms/internal/ads/e12;)V

    const-class v0, Lcom/google/android/gms/internal/ads/n02;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/v02;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/n02;

    return-object p0
.end method
