.class public final Lcom/google/android/gms/internal/ads/km2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/am2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/bm2;Lcom/google/android/gms/internal/ads/cm2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/jl2;",
            "Lcom/google/android/gms/internal/ads/bm2<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/km2;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/km2;->d:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/km2;->a:Lcom/google/android/gms/internal/ads/cm2;

    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/bm2;->b(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/hm2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/hm2;-><init>(Lcom/google/android/gms/internal/ads/km2;Lcom/google/android/gms/internal/ads/bm2;Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/cm2;)V

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/cm2;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/im2;

    .line 4
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/im2;-><init>(Lcom/google/android/gms/internal/ads/km2;Lcom/google/android/gms/internal/ads/bm2;)V

    const-class p2, Ljava/lang/Exception;

    .line 5
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/cm2;->zza()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 6
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/km2;->b:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/f03;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/f03<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/km2;->b:Lcom/google/android/gms/internal/ads/r03;

    sget-object v1, Lcom/google/android/gms/internal/ads/jm2;->a:Lcom/google/android/gms/internal/ads/uz2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/km2;->a:Lcom/google/android/gms/internal/ads/cm2;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/cm2;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/km2;->a:Lcom/google/android/gms/internal/ads/cm2;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cm2;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/am2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/km2;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/km2;->c:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/km2;->a:Lcom/google/android/gms/internal/ads/cm2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/km2;->a:Lcom/google/android/gms/internal/ads/cm2;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/rl2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/km2;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/km2;->b:Lcom/google/android/gms/internal/ads/r03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 3
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/bm2;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    .line 1
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/km2;->d:Z

    throw p2

    :catchall_0
    move-exception p1

    .line 2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/bm2;Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/cm2;Lcom/google/android/gms/internal/ads/ql2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/km2;->d:Z

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/bm2;->a(Lcom/google/android/gms/internal/ads/ql2;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/km2;->c:Z

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Lcom/google/android/gms/internal/ads/jl2;->d(Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/ql2;)Z

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/am2;

    .line 4
    invoke-direct {p1, p4, p3}, Lcom/google/android/gms/internal/ads/am2;-><init>(Lcom/google/android/gms/internal/ads/ql2;Lcom/google/android/gms/internal/ads/cm2;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
