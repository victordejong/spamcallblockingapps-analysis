.class public Laa/c;
.super Laa/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laa/c$a;
    }
.end annotation


# static fields
.field public static final h:J

.field public static final i:J

.field public static j:Laa/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public e:Z

.field public f:Laa/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Laa/c;->h:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Laa/c;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laa/z;-><init>()V

    return-void
.end method

.method public static h()Laa/c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Laa/c;

    sget-object v1, Laa/c;->j:Laa/c;

    iget-object v1, v1, Laa/c;->f:Laa/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 3
    sget-wide v5, Laa/c;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 4
    sget-object v0, Laa/c;->j:Laa/c;

    iget-object v0, v0, Laa/c;->f:Laa/c;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Laa/c;->i:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 5
    sget-object v2, Laa/c;->j:Laa/c;

    :cond_0
    return-object v2

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 7
    iget-wide v5, v1, Laa/c;->g:J

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    const-wide/32 v3, 0xf4240

    .line 8
    div-long v7, v5, v3

    mul-long v3, v3, v7

    sub-long/2addr v5, v3

    long-to-int v1, v5

    .line 9
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 10
    :cond_2
    sget-object v0, Laa/c;->j:Laa/c;

    iget-object v3, v1, Laa/c;->f:Laa/c;

    iput-object v3, v0, Laa/c;->f:Laa/c;

    .line 11
    iput-object v2, v1, Laa/c;->f:Laa/c;

    return-object v1
.end method


# virtual methods
.method public final i()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Laa/c;->e:Z

    if-nez v0, :cond_8

    .line 2
    iget-wide v0, p0, Laa/z;->c:J

    .line 3
    iget-boolean v2, p0, Laa/z;->a:Z

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 4
    iput-boolean v3, p0, Laa/c;->e:Z

    .line 5
    const-class v3, Laa/c;

    monitor-enter v3

    .line 6
    :try_start_0
    sget-object v4, Laa/c;->j:Laa/c;

    if-nez v4, :cond_1

    .line 7
    new-instance v4, Laa/c;

    invoke-direct {v4}, Laa/c;-><init>()V

    sput-object v4, Laa/c;->j:Laa/c;

    .line 8
    new-instance v4, Laa/c$a;

    invoke-direct {v4}, Laa/c$a;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 9
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0}, Laa/z;->c()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v6

    iput-wide v0, p0, Laa/c;->g:J

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    add-long/2addr v0, v6

    .line 11
    iput-wide v0, p0, Laa/c;->g:J

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 12
    invoke-virtual {p0}, Laa/z;->c()J

    move-result-wide v0

    iput-wide v0, p0, Laa/c;->g:J

    .line 13
    :goto_0
    iget-wide v0, p0, Laa/c;->g:J

    sub-long/2addr v0, v6

    .line 14
    sget-object v2, Laa/c;->j:Laa/c;

    .line 15
    :goto_1
    iget-object v4, v2, Laa/c;->f:Laa/c;

    if-eqz v4, :cond_5

    .line 16
    iget-wide v8, v4, Laa/c;->g:J

    sub-long/2addr v8, v6

    cmp-long v5, v0, v8

    if-gez v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v4

    goto :goto_1

    .line 17
    :cond_5
    :goto_2
    iput-object v4, p0, Laa/c;->f:Laa/c;

    .line 18
    iput-object p0, v2, Laa/c;->f:Laa/c;

    .line 19
    sget-object v0, Laa/c;->j:Laa/c;

    if-ne v2, v0, :cond_6

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_6
    monitor-exit v3

    return-void

    .line 22
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Laa/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Laa/c;->l(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final k()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Laa/c;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Laa/c;->e:Z

    .line 3
    const-class v0, Laa/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v2, Laa/c;->j:Laa/c;

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v2, Laa/c;->f:Laa/c;

    if-ne v3, p0, :cond_1

    .line 6
    iget-object v3, p0, Laa/c;->f:Laa/c;

    iput-object v3, v2, Laa/c;->f:Laa/c;

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Laa/c;->f:Laa/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 9
    monitor-exit v0

    :goto_1
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public l(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method
