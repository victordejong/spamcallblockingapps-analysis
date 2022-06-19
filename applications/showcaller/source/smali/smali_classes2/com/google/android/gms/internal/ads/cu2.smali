.class public final Lcom/google/android/gms/internal/ads/cu2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/g<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/z03;->E()Lcom/google/android/gms/internal/ads/z03;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/y03;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bu2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/bu2;-><init>(Lcom/google/android/gms/internal/ads/z03;)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/g;->c(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-object v0
.end method
