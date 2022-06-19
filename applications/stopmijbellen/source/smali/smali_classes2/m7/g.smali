.class public Lm7/g;
.super Lm7/f;
.source "SourceFile"

# interfaces
.implements Lm7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/g$b;,
        Lm7/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/f;",
        "Lm7/c;"
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public d:Lk7/e;

.field public e:Ljava/lang/Exception;

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Lm7/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/g$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm7/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lm7/f;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lm7/g;->q(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cancel()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lm7/g;->g:Z

    invoke-virtual {p0, v0}, Lm7/g;->e(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lm7/g;->cancel()Z

    move-result p1

    return p1
.end method

.method public d(Lm7/a;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm7/f;->d(Lm7/a;)Z

    move-result p1

    return p1
.end method

.method public final e(Z)Z
    .locals 1

    .line 1
    invoke-super {p0}, Lm7/f;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lm7/g;->e:Ljava/lang/Exception;

    .line 4
    invoke-virtual {p0}, Lm7/g;->j()V

    .line 5
    invoke-virtual {p0}, Lm7/g;->i()Lm7/g$a;

    move-result-object v0

    .line 6
    iput-boolean p1, p0, Lm7/g;->g:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lm7/g;->h(Lm7/g$b;Lm7/g$a;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Lm7/b;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/b;",
            ")",
            "Lm7/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly2/l;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 2
    new-instance p1, Lm7/g;

    invoke-direct {p1}, Lm7/g;-><init>()V

    .line 3
    invoke-super {p1, p0}, Lm7/f;->d(Lm7/a;)Z

    .line 4
    new-instance v1, Lz2/n;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2}, Lz2/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/g;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm7/g;->f:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lm7/g;->e:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lm7/f;->a:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lm7/g;->d:Lk7/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lk7/e;

    invoke-direct {v0}, Lk7/e;-><init>()V

    iput-object v0, p0, Lm7/g;->d:Lk7/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lm7/g;->d:Lk7/e;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Lk7/w;->b(Ljava/lang/Thread;)Lk7/w;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lk7/w;->a:Lk7/e;

    .line 11
    iput-object v0, v1, Lk7/w;->a:Lk7/e;

    .line 12
    iget-object v3, v1, Lk7/w;->b:Ljava/util/concurrent/Semaphore;

    .line 13
    :try_start_1
    iget-object v4, v0, Lk7/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lk7/w;->c()Ljava/lang/Runnable;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 16
    invoke-virtual {v3, v4}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 17
    iget-object v4, v0, Lk7/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 18
    :goto_1
    iput-object v2, v1, Lk7/w;->a:Lk7/e;

    .line 19
    invoke-virtual {p0}, Lm7/g;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 20
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    iput-object v2, v1, Lk7/w;->a:Lk7/e;

    throw v0

    .line 22
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lm7/g;->g()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-boolean v0, p0, Lm7/f;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 27
    :cond_0
    iget-object v0, p0, Lm7/g;->d:Lk7/e;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lk7/e;

    invoke-direct {v0}, Lk7/e;-><init>()V

    iput-object v0, p0, Lm7/g;->d:Lk7/e;

    .line 29
    :cond_1
    iget-object v0, p0, Lm7/g;->d:Lk7/e;

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-static {p3}, Lk7/w;->b(Ljava/lang/Thread;)Lk7/w;

    move-result-object p3

    .line 34
    iget-object v1, p3, Lk7/w;->a:Lk7/e;

    .line 35
    iput-object v0, p3, Lk7/w;->a:Lk7/e;

    .line 36
    iget-object v2, p3, Lk7/w;->b:Ljava/util/concurrent/Semaphore;

    .line 37
    :try_start_1
    iget-object v3, v0, Lk7/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 39
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lk7/w;->c()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_7

    .line 40
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, p1, p2, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 42
    :cond_4
    iget-object v3, v0, Lk7/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 43
    :goto_1
    iput-object v1, p3, Lk7/w;->a:Lk7/e;

    goto :goto_3

    .line 44
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v7, v5

    cmp-long v3, v7, p1

    if-ltz v3, :cond_3

    .line 45
    :goto_2
    iput-object v1, p3, Lk7/w;->a:Lk7/e;

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 46
    invoke-virtual {p0}, Lm7/g;->g()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :cond_6
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 48
    :cond_7
    :try_start_3
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 49
    iput-object v1, p3, Lk7/w;->a:Lk7/e;

    throw p1

    .line 50
    :cond_8
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lm7/g;->g()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 51
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final h(Lm7/g$b;Lm7/g$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/g$b;",
            "Lm7/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lm7/g;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 2
    new-instance p1, Lm7/g$b;

    invoke-direct {p1}, Lm7/g$b;-><init>()V

    .line 3
    :cond_2
    iput-object p2, p1, Lm7/g$b;->c:Lm7/g$a;

    .line 4
    iget-object p2, p0, Lm7/g;->e:Ljava/lang/Exception;

    iput-object p2, p1, Lm7/g$b;->a:Ljava/lang/Exception;

    .line 5
    iget-object p2, p0, Lm7/g;->f:Ljava/lang/Object;

    iput-object p2, p1, Lm7/g$b;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 6
    :goto_0
    iget-object p2, p1, Lm7/g$b;->c:Lm7/g$a;

    if-eqz p2, :cond_3

    .line 7
    iget-object v0, p1, Lm7/g$b;->a:Ljava/lang/Exception;

    .line 8
    iget-object v1, p1, Lm7/g$b;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    iput-object v2, p1, Lm7/g$b;->c:Lm7/g$a;

    .line 10
    iput-object v2, p1, Lm7/g$b;->a:Ljava/lang/Exception;

    .line 11
    iput-object v2, p1, Lm7/g$b;->b:Ljava/lang/Object;

    .line 12
    invoke-interface {p2, v0, v1, p1}, Lm7/g$a;->f(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final i()Lm7/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm7/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm7/g;->h:Lm7/g$a;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lm7/g;->h:Lm7/g$a;

    return-object v0
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm7/g;->d:Lk7/e;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, v0, Lk7/e;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 3
    sget-object v1, Lk7/w;->c:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/w;

    .line 5
    iget-object v4, v3, Lk7/w;->a:Lk7/e;

    if-ne v4, v0, :cond_0

    .line 6
    iget-object v3, v3, Lk7/w;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lm7/g;->d:Lk7/e;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public k(Lm7/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ly2/l;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    return-void
.end method

.method public l(Lm7/g$b;Lm7/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/g$b;",
            "Lm7/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p2, p0, Lm7/g;->h:Lm7/g$a;

    .line 3
    iget-boolean p2, p0, Lm7/f;->a:Z

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lm7/f;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lm7/g;->i()Lm7/g$a;

    move-result-object p2

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0, p1, p2}, Lm7/g;->h(Lm7/g$b;Lm7/g$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(Lm7/c;Lm7/g$b;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/c<",
            "TT;>;",
            "Lm7/g$b;",
            ")",
            "Lm7/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm7/f;->d(Lm7/a;)Z

    .line 2
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 3
    instance-of v1, p1, Lm7/g;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lm7/g;

    new-instance v1, Ly2/m;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v1}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ly2/f;

    invoke-direct {p2, p0, v0}, Ly2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p1, Lm7/g;

    invoke-virtual {p1, p2}, Lm7/g;->k(Lm7/d;)V

    :goto_0
    return-object v0
.end method

.method public n(Ljava/lang/Exception;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/Exception;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;",
            "Lm7/g$b;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lm7/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return p1

    .line 4
    :cond_0
    iput-object p2, p0, Lm7/g;->f:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lm7/g;->e:Ljava/lang/Exception;

    .line 6
    invoke-virtual {p0}, Lm7/g;->j()V

    .line 7
    invoke-virtual {p0}, Lm7/g;->i()Lm7/g$a;

    move-result-object p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, p3, p1}, Lm7/g;->h(Lm7/g$b;Lm7/g$a;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    return p1
.end method

.method public r(Ls2/b;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/b;",
            ")",
            "Lm7/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 2
    invoke-super {v0, p0}, Lm7/f;->d(Lm7/a;)Z

    .line 3
    new-instance v1, Ly2/m;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    return-object v0
.end method

.method public s(Lm7/i;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm7/i<",
            "TR;TT;>;)",
            "Lm7/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 2
    invoke-super {v0, p0}, Lm7/f;->d(Lm7/a;)Z

    .line 3
    new-instance v1, Lz2/n;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lz2/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    return-object v0
.end method

.method public t(Lm7/h;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lm7/h<",
            "TR;TT;>;)",
            "Lm7/c<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly2/p;

    invoke-direct {v0, p1}, Ly2/p;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lm7/g;

    invoke-direct {p1}, Lm7/g;-><init>()V

    .line 3
    invoke-super {p1, p0}, Lm7/f;->d(Lm7/a;)Z

    .line 4
    new-instance v1, Lz2/n;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lz2/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lm7/g;->l(Lm7/g$b;Lm7/g$a;)V

    return-object p1
.end method
