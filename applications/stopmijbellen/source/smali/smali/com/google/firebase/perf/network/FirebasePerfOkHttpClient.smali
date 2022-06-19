.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lp9/b0;Lh6/b;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/b0;->a:Lp9/y;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lp9/y;->a:Lp9/s;

    .line 3
    invoke-virtual {v1}, Lp9/s;->q()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 4
    iget-object v1, v0, Lp9/y;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Lh6/b;->c(Ljava/lang/String;)Lh6/b;

    .line 6
    iget-object v0, v0, Lp9/y;->d:Lp9/a0;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, Lp9/z;

    .line 8
    iget v0, v0, Lp9/z;->b:I

    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1, v3, v4}, Lh6/b;->f(J)Lh6/b;

    .line 10
    :cond_1
    iget-object v0, p0, Lp9/b0;->g:Lp9/d0;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lp9/d0;->d()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {p1, v3, v4}, Lh6/b;->i(J)Lh6/b;

    .line 13
    :cond_2
    invoke-virtual {v0}, Lp9/d0;->k()Lp9/u;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Lp9/u;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Lh6/b;->h(Ljava/lang/String;)Lh6/b;

    .line 16
    :cond_3
    iget p0, p0, Lp9/b0;->c:I

    .line 17
    invoke-virtual {p1, p0}, Lh6/b;->e(I)Lh6/b;

    .line 18
    invoke-virtual {p1, p2, p3}, Lh6/b;->g(J)Lh6/b;

    .line 19
    invoke-virtual {p1, p4, p5}, Lh6/b;->j(J)Lh6/b;

    .line 20
    invoke-virtual {p1}, Lh6/b;->b()Lo6/h;

    return-void
.end method

.method public static enqueue(Lp9/e;Lp9/f;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v3, Ln6/e;

    invoke-direct {v3}, Ln6/e;-><init>()V

    .line 2
    iget-wide v4, v3, Ln6/e;->a:J

    .line 3
    new-instance v6, Lj6/g;

    .line 4
    sget-object v2, Lm6/e;->s:Lm6/e;

    move-object v0, v6

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lj6/g;-><init>(Lp9/f;Lm6/e;Ln6/e;J)V

    .line 6
    check-cast p0, Lp9/x;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean p1, p0, Lp9/x;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lp9/x;->g:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    sget-object p1, Lx9/f;->a:Lx9/f;

    const-string v0, "response.body().close()"

    .line 12
    invoke-virtual {p1, v0}, Lx9/f;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lp9/x;->b:Lt9/i;

    .line 14
    iput-object p1, v0, Lt9/i;->c:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lp9/x;->d:Lp9/o;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lp9/x;->a:Lp9/v;

    .line 17
    iget-object p1, p1, Lp9/v;->a:Lp9/m;

    .line 18
    new-instance v0, Lp9/x$b;

    invoke-direct {v0, p0, v6}, Lp9/x$b;-><init>(Lp9/x;Lp9/f;)V

    .line 19
    monitor-enter p1

    .line 20
    :try_start_1
    iget-object p0, p1, Lp9/m;->b:Ljava/util/Deque;

    invoke-interface {p0, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-virtual {p1}, Lp9/m;->b()Z

    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 24
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static execute(Lp9/e;)Lp9/b0;
    .locals 12
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm6/e;->s:Lm6/e;

    .line 2
    new-instance v7, Lh6/b;

    invoke-direct {v7, v0}, Lh6/b;-><init>(Lm6/e;)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 5
    :try_start_0
    move-object v0, p0

    check-cast v0, Lp9/x;

    invoke-virtual {v0}, Lp9/x;->a()Lp9/b0;

    move-result-object v0

    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    move-object v1, v0

    move-object v2, v7

    move-wide v3, v8

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Lp9/b0;Lh6/b;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    check-cast p0, Lp9/x;

    .line 9
    iget-object p0, p0, Lp9/x;->e:Lp9/y;

    if-eqz p0, :cond_1

    .line 10
    iget-object v1, p0, Lp9/y;->a:Lp9/s;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lp9/s;->q()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lh6/b;->m(Ljava/lang/String;)Lh6/b;

    .line 12
    :cond_0
    iget-object p0, p0, Lp9/y;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {v7, p0}, Lh6/b;->c(Ljava/lang/String;)Lh6/b;

    .line 14
    :cond_1
    invoke-virtual {v7, v8, v9}, Lh6/b;->g(J)Lh6/b;

    .line 15
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v10

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    .line 16
    invoke-virtual {v7, v1, v2}, Lh6/b;->j(J)Lh6/b;

    .line 17
    invoke-static {v7}, Lj6/h;->c(Lh6/b;)V

    .line 18
    throw v0
.end method
