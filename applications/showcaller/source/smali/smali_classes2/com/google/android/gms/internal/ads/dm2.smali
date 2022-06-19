.class public final Lcom/google/android/gms/internal/ads/dm2;
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
.field private final a:Lcom/google/android/gms/internal/ads/jl2;

.field private final b:Lcom/google/android/gms/internal/ads/bm2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bm2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/el2;

.field private final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/km2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/km2<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/bm2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/jl2;",
            "Lcom/google/android/gms/internal/ads/el2;",
            "Lcom/google/android/gms/internal/ads/bm2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dm2;->f:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dm2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dm2;->c:Lcom/google/android/gms/internal/ads/el2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dm2;->b:Lcom/google/android/gms/internal/ads/bm2;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/yl2;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/yl2;-><init>(Lcom/google/android/gms/internal/ads/dm2;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/el2;->a(Lcom/google/android/gms/internal/ads/dl2;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dm2;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dm2;Lcom/google/android/gms/internal/ads/km2;)Lcom/google/android/gms/internal/ads/km2;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dm2;->e:Lcom/google/android/gms/internal/ads/km2;

    return-object p1
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/dm2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dm2;->h()V

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/dm2;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/dm2;->f:I

    return p0
.end method

.method private final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->D4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/q1;->m()Lcom/google/android/gms/internal/ads/jh0;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jh0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dm2;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cm2;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dm2;->a:Lcom/google/android/gms/internal/ads/jl2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cm2;->b()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/jl2;->e(Lcom/google/android/gms/internal/ads/rl2;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/km2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dm2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dm2;->b:Lcom/google/android/gms/internal/ads/bm2;

    .line 14
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/km2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/bm2;Lcom/google/android/gms/internal/ads/cm2;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dm2;->e:Lcom/google/android/gms/internal/ads/km2;

    new-instance v2, Lcom/google/android/gms/internal/ads/zl2;

    .line 15
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zl2;-><init>(Lcom/google/android/gms/internal/ads/dm2;Lcom/google/android/gms/internal/ads/cm2;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/km2;->a(Lcom/google/android/gms/internal/ads/f03;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized i()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->e:Lcom/google/android/gms/internal/ads/km2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/cm2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cm2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
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

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dm2;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dm2;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dm2;->e:Lcom/google/android/gms/internal/ads/km2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/km2;->b(Lcom/google/android/gms/internal/ads/cm2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic f()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/dm2;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dm2;->h()V

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
