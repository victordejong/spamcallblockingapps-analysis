.class public Ld2/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/k2;


# direct methods
.method public constructor <init>(Ld2/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/i2;->a:Ld2/k2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/i2;->a:Ld2/k2;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AdColony session ending, releasing Context."

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v3, v5, v4, v2, v5}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v2, Ld2/f1;->B:Z

    .line 8
    sput-object v1, Ld2/t;->a:Landroid/content/Context;

    .line 9
    iget-object v1, v0, Ld2/k2;->d:Ld2/g2;

    .line 10
    iput-boolean v3, v1, Ld2/g2;->i:Z

    .line 11
    iput-boolean v3, v1, Ld2/g2;->j:Z

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    .line 13
    iget-object v2, v2, Ld2/h0;->d:Ld2/d2;

    .line 14
    iput-boolean v5, v1, Ld2/g2;->f:Z

    .line 15
    iput-boolean v5, v1, Ld2/g2;->d:Z

    if-eqz v2, :cond_1

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v4, v2, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    iget-object v4, v2, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-interface {v4, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    iget-object v4, v2, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 20
    iget-object v4, v2, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Ld2/d2;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": ScheduledExecutorService did not terminate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catch_0
    :try_start_2
    iget-object v4, v2, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 24
    :cond_1
    :goto_1
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Ld2/g2;->c:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-string v1, "session_length"

    .line 26
    invoke-static {v2, v1, v6, v7}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 27
    new-instance v1, Ld2/t0;

    const-string v4, "SessionInfo.on_stop"

    invoke-direct {v1, v4, v3, v2}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 28
    invoke-static {}, Ld2/t;->g()V

    .line 29
    sget-object v1, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 30
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    invoke-virtual {v1}, Ld2/u0;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    iget-object v1, v0, Ld2/k2;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, v0, Ld2/k2;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 33
    :cond_2
    :try_start_3
    iget-object v1, v0, Ld2/k2;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ld2/j2;

    invoke-direct {v2, v0}, Ld2/j2;-><init>(Ld2/k2;)V

    const-wide/16 v6, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v6, v7, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Ld2/k2;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "RejectedExecutionException when scheduling message pumping stop "

    .line 34
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v5, v5, v0, v3}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method
