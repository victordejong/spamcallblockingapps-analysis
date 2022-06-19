.class public final Lcom/google/android/gms/internal/ads/dbv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/dag<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dbu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dbu;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/dag;)V

    return-object v0
.end method
