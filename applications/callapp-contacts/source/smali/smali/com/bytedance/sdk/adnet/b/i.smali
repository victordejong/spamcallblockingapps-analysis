.class public Lcom/bytedance/sdk/adnet/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "TT;>;",
        "Ljava/util/concurrent/Future<",
        "Lcom/bytedance/sdk/adnet/core/m<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bytedance/sdk/adnet/b/i<",
            "TE;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/bytedance/sdk/adnet/b/i;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/b/i;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 109
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 115
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    sub-long v0, v2, v0

    .line 116
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_1

    .line 121
    :cond_2
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 122
    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 143
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 144
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/bytedance/sdk/adnet/core/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/b/i;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 150
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->c:Lcom/bytedance/sdk/adnet/core/m;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 75
    monitor-exit p0

    return v0

    .line 78
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 80
    monitor-exit p0

    return p1

    .line 82
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/i;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/i;->a:Lcom/bytedance/sdk/adnet/core/Request;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/b/i;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/b/i;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
