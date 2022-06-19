.class public final Lcom/google/android/gms/internal/ads/bhx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/aql;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/auq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/auq;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/ads/a/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/arg;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/apv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/app;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/aqi;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/dxs;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/clg;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lcom/google/android/gms/internal/ads/bih;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bih;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/auq",
            "<",
            "Lcom/google/android/gms/internal/ads/ash;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bhx;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
