.class public final Lc/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/v;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lc/v;

.field private final b:Lc/ae;


# direct methods
.method constructor <init>(Lc/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lc/v$a;->a:Lc/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Lc/ae;

    invoke-direct {p1}, Lc/ae;-><init>()V

    iput-object p1, p0, Lc/v$a;->b:Lc/ae;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 11

    .line 104
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 13037
    iget-object v0, v0, Lc/v;->a:Lc/f;

    .line 316
    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 13039
    iget-boolean v1, v1, Lc/v;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 105
    monitor-exit v0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 13041
    iget-object v1, v1, Lc/v;->e:Lc/ab;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 14040
    iget-boolean v1, v1, Lc/v;->d:Z

    if-eqz v1, :cond_3

    .line 112
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 15037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    .line 15073
    iget-wide v1, v1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 113
    :cond_3
    :goto_0
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    const/4 v2, 0x1

    .line 16039
    iput-boolean v2, v1, Lc/v;->c:Z

    .line 114
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 17037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    if-eqz v1, :cond_c

    .line 114
    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 115
    :goto_1
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_b

    .line 117
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 317
    invoke-interface {v1}, Lc/ab;->timeout()Lc/ae;

    move-result-object v2

    .line 17048
    iget-object v0, v0, Lc/v;->f:Lc/ab;

    .line 317
    invoke-interface {v0}, Lc/ab;->timeout()Lc/ae;

    move-result-object v0

    .line 318
    invoke-virtual {v2}, Lc/ae;->timeoutNanos()J

    move-result-wide v3

    .line 319
    invoke-virtual {v0}, Lc/ae;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v2}, Lc/ae;->timeoutNanos()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lc/ae$a;->a(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 321
    invoke-virtual {v2}, Lc/ae;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 322
    invoke-virtual {v2}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v5

    .line 323
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 324
    invoke-virtual {v2}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 117
    :cond_4
    :try_start_2
    invoke-interface {v1}, Lc/ab;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 330
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 329
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 330
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_6
    throw v1

    .line 335
    :cond_7
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 336
    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 117
    :cond_8
    :try_start_3
    invoke-interface {v1}, Lc/ab;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 341
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 342
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 343
    invoke-virtual {v2}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_9
    return-void

    :catchall_1
    move-exception v1

    .line 341
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 342
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 343
    invoke-virtual {v2}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_a
    throw v1

    :cond_b
    return-void

    .line 114
    :cond_c
    :try_start_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 115
    monitor-exit v0

    throw v1
.end method

.method public final flush()V
    .locals 11

    .line 85
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 8037
    iget-object v0, v0, Lc/v;->a:Lc/f;

    .line 283
    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 8039
    iget-boolean v1, v1, Lc/v;->c:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 87
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 9038
    iget-boolean v1, v1, Lc/v;->b:Z

    if-nez v1, :cond_b

    .line 89
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 9041
    iget-object v1, v1, Lc/v;->e:Lc/ab;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 10040
    iget-boolean v1, v1, Lc/v;->d:Z

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 11037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    .line 11073
    iget-wide v1, v1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 97
    :goto_1
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v1, :cond_a

    .line 99
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 284
    invoke-interface {v1}, Lc/ab;->timeout()Lc/ae;

    move-result-object v2

    .line 12048
    iget-object v0, v0, Lc/v;->f:Lc/ab;

    .line 284
    invoke-interface {v0}, Lc/ab;->timeout()Lc/ae;

    move-result-object v0

    .line 285
    invoke-virtual {v2}, Lc/ae;->timeoutNanos()J

    move-result-wide v3

    .line 286
    invoke-virtual {v0}, Lc/ae;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v2}, Lc/ae;->timeoutNanos()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lc/ae$a;->a(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 288
    invoke-virtual {v2}, Lc/ae;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 289
    invoke-virtual {v2}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v5

    .line 290
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 291
    invoke-virtual {v2}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v7

    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 99
    :cond_3
    :try_start_1
    invoke-interface {v1}, Lc/ab;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 297
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 296
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 297
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_5
    throw v1

    .line 302
    :cond_6
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 303
    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 99
    :cond_7
    :try_start_2
    invoke-interface {v1}, Lc/ab;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 309
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    invoke-virtual {v2}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_8
    return-void

    :catchall_1
    move-exception v1

    .line 308
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 309
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    invoke-virtual {v2}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_9
    throw v1

    :cond_a
    return-void

    .line 87
    :cond_b
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_c
    const-string v1, "closed"

    .line 86
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    .line 97
    monitor-exit v0

    throw v1
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 120
    iget-object v0, p0, Lc/v$a;->b:Lc/ae;

    return-object v0
.end method

.method public final write(Lc/f;J)V
    .locals 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 1037
    iget-object v0, v0, Lc/v;->a:Lc/f;

    .line 249
    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 1039
    iget-boolean v1, v1, Lc/v;->c:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    .line 56
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 2038
    iget-boolean v1, v1, Lc/v;->b:Z

    if-nez v1, :cond_e

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_5

    .line 59
    iget-object v3, p0, Lc/v$a;->a:Lc/v;

    .line 2041
    iget-object v3, v3, Lc/v;->e:Lc/ab;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v3, p0, Lc/v$a;->a:Lc/v;

    .line 3040
    iget-boolean v3, v3, Lc/v;->d:Z

    if-nez v3, :cond_4

    .line 66
    iget-object v3, p0, Lc/v$a;->a:Lc/v;

    .line 4036
    iget-wide v3, v3, Lc/v;->h:J

    .line 66
    iget-object v5, p0, Lc/v$a;->a:Lc/v;

    .line 4037
    iget-object v5, v5, Lc/v;->a:Lc/f;

    .line 4073
    iget-wide v5, v5, Lc/f;->b:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    .line 68
    iget-object v1, p0, Lc/v$a;->b:Lc/ae;

    iget-object v2, p0, Lc/v$a;->a:Lc/v;

    .line 5037
    iget-object v2, v2, Lc/v;->a:Lc/f;

    .line 68
    invoke-virtual {v1, v2}, Lc/ae;->waitUntilNotified(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 5038
    iget-boolean v1, v1, Lc/v;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 73
    :cond_2
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 74
    iget-object v3, p0, Lc/v$a;->a:Lc/v;

    .line 6037
    iget-object v3, v3, Lc/v;->a:Lc/f;

    .line 74
    invoke-virtual {v3, p1, v1, v2}, Lc/f;->write(Lc/f;J)V

    sub-long/2addr p2, v1

    .line 76
    iget-object v1, p0, Lc/v$a;->a:Lc/v;

    .line 7037
    iget-object v1, v1, Lc/v;->a:Lc/f;

    if-eqz v1, :cond_3

    .line 76
    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    const/4 v3, 0x0

    .line 78
    :goto_1
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    if-eqz v3, :cond_d

    .line 80
    iget-object v0, p0, Lc/v$a;->a:Lc/v;

    .line 251
    invoke-interface {v3}, Lc/ab;->timeout()Lc/ae;

    move-result-object v1

    .line 7048
    iget-object v0, v0, Lc/v;->f:Lc/ab;

    .line 251
    invoke-interface {v0}, Lc/ab;->timeout()Lc/ae;

    move-result-object v0

    .line 252
    invoke-virtual {v1}, Lc/ae;->timeoutNanos()J

    move-result-wide v4

    .line 253
    invoke-virtual {v0}, Lc/ae;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Lc/ae;->timeoutNanos()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lc/ae$a;->a(JJ)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v2}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 255
    invoke-virtual {v1}, Lc/ae;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    invoke-virtual {v1}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v6

    .line 257
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 258
    invoke-virtual {v1}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 80
    :cond_6
    :try_start_1
    invoke-interface {v3, p1, p2, p3}, Lc/ab;->write(Lc/f;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 264
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 265
    invoke-virtual {v1, v6, v7}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 263
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 264
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 265
    invoke-virtual {v1, v6, v7}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    :cond_8
    throw p1

    .line 269
    :cond_9
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 270
    invoke-virtual {v0}, Lc/ae;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lc/ae;->deadlineNanoTime(J)Lc/ae;

    .line 80
    :cond_a
    :try_start_2
    invoke-interface {v3, p1, p2, p3}, Lc/ab;->write(Lc/f;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p1}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 276
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 277
    invoke-virtual {v1}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_b
    return-void

    :catchall_1
    move-exception p1

    .line 275
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lc/ae;->timeout(JLjava/util/concurrent/TimeUnit;)Lc/ae;

    .line 276
    invoke-virtual {v0}, Lc/ae;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 277
    invoke-virtual {v1}, Lc/ae;->clearDeadline()Lc/ae;

    :cond_c
    throw p1

    :cond_d
    return-void

    .line 56
    :cond_e
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_f
    const-string p1, "closed"

    .line 55
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 78
    monitor-exit v0

    throw p1
.end method
