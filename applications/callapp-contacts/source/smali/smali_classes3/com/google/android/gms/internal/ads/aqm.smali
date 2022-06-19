.class public final Lcom/google/android/gms/internal/ads/aqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aro;
.implements Lcom/google/android/gms/internal/ads/asd;
.implements Lcom/google/android/gms/internal/ads/avw;
.implements Lcom/google/android/gms/internal/ads/axx;


# instance fields
.field a:Lcom/google/android/gms/internal/ads/dcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dcc<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/asc;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/asc;Lcom/google/android/gms/internal/ads/cov;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcc;->h()Lcom/google/android/gms/internal/ads/dcc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aqm;->b:Lcom/google/android/gms/internal/ads/asc;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aqm;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aqm;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aqm;)Lcom/google/android/gms/internal/ads/asc;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aqm;->b:Lcom/google/android/gms/internal/ads/asc;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized H_()V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dag;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcc;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 5

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bb:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->S:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->p:I

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->b:Lcom/google/android/gms/internal/ads/asc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asc;->a()V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    new-instance v1, Lcom/google/android/gms/internal/ads/aqo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aqo;-><init>(Lcom/google/android/gms/internal/ads/aqm;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqm;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/aql;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aql;-><init>(Lcom/google/android/gms/internal/ads/aqm;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v2, v2, Lcom/google/android/gms/internal/ads/cov;->p:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a_(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dag;->isDone()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqm;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 23
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aqm;->a:Lcom/google/android/gms/internal/ads/dcc;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dcc;->a(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->S:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->c:Lcom/google/android/gms/internal/ads/cov;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cov;->S:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aqm;->b:Lcom/google/android/gms/internal/ads/asc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asc;->a()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method
