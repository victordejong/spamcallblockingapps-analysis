.class public final Lcom/google/android/gms/internal/ads/lz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lz0;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lz0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lz0;->c:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/lz0;Ljava/util/List;Lcom/google/android/gms/internal/ads/f03;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/f03<",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/r03;

    new-instance v2, Lcom/google/android/gms/internal/ads/gz0;

    .line 4
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/gz0;-><init>(Lcom/google/android/gms/internal/ads/f03;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Throwable;

    .line 5
    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/hz0;

    .line 6
    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/hz0;-><init>(Lcom/google/android/gms/internal/ads/lz0;Lcom/google/android/gms/internal/ads/f03;Lcom/google/android/gms/internal/ads/r03;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/kz0;

    .line 8
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/kz0;-><init>(Lcom/google/android/gms/internal/ads/lz0;Lcom/google/android/gms/internal/ads/f03;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void

    .line 9
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/fz0;

    .line 10
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/fz0;-><init>(Lcom/google/android/gms/internal/ads/f03;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/lz0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->e:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/iz0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/iz0;-><init>(Lcom/google/android/gms/internal/ads/lz0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/f03;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/f03<",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lz0;->c:Lcom/google/android/gms/internal/ads/r03;

    new-instance v1, Lcom/google/android/gms/internal/ads/jz0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jz0;-><init>(Lcom/google/android/gms/internal/ads/lz0;Lcom/google/android/gms/internal/ads/f03;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lz0;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lz0;->d:Z

    return v0
.end method

.method final synthetic e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lz0;->d:Z

    return-void
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/f03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/xy0;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/f03;->b(Ljava/lang/Object;)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/ky;->b:Lcom/google/android/gms/internal/ads/nx;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/lz0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-static {p2, v0, v1, p1, p3}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
