.class public final Lcom/google/android/gms/internal/ads/r43;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/x13;)Lcom/google/android/gms/internal/ads/n13;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/t43;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/t43;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    const-class v0, Lcom/google/android/gms/internal/ads/n13;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/x13;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/n13;

    return-object p0
.end method
