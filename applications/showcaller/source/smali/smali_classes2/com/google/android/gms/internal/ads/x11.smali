.class public final Lcom/google/android/gms/internal/ads/x11;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y21;
.implements Lcom/google/android/gms/internal/ads/aa1;
.implements Lcom/google/android/gms/internal/ads/w71;
.implements Lcom/google/android/gms/internal/ads/o31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/q31;

.field private final e:Lcom/google/android/gms/internal/ads/ej2;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lcom/google/android/gms/internal/ads/z03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z03<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q31;Lcom/google/android/gms/internal/ads/ej2;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/z03;->E()Lcom/google/android/gms/internal/ads/z03;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x11;->d:Lcom/google/android/gms/internal/ads/q31;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x11;->e:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x11;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/x11;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/x11;)Lcom/google/android/gms/internal/ads/q31;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/x11;->d:Lcom/google/android/gms/internal/ads/q31;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->a1:Lcom/google/android/gms/internal/ads/cw;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v1, v0, Lcom/google/android/gms/internal/ads/ej2;->U:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/gms/internal/ads/ej2;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->d:Lcom/google/android/gms/internal/ads/q31;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    new-instance v1, Lcom/google/android/gms/internal/ads/w11;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/w11;-><init>(Lcom/google/android/gms/internal/ads/x11;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x11;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/v11;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/v11;-><init>(Lcom/google/android/gms/internal/ads/x11;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x11;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v2, v2, Lcom/google/android/gms/internal/ads/ej2;->q:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->i:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fz2;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z03;->u(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->e:Lcom/google/android/gms/internal/ads/ej2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ej2;->U:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->d:Lcom/google/android/gms/internal/ads/q31;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q31;->zza()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method final synthetic h()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fz2;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/z03;->u(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized l(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fz2;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x11;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x11;->h:Lcom/google/android/gms/internal/ads/z03;

    new-instance v0, Ljava/lang/Exception;

    .line 3
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/z03;->v(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final n(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method
