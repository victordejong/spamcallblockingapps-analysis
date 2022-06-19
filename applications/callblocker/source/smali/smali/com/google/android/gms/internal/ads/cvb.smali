.class public final Lcom/google/android/gms/internal/ads/cvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/csy;Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/cst;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/csy;",
            "Lcom/google/android/gms/internal/ads/css",
            "<",
            "Lcom/google/android/gms/internal/ads/cst;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/cst;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/cva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cva;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cth;)V

    .line 2
    const/4 v0, 0x0

    const-class v1, Lcom/google/android/gms/internal/ads/cst;

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/csy;Lcom/google/android/gms/internal/ads/css;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ctf;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/ctf;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cst;

    return-object v0
.end method
