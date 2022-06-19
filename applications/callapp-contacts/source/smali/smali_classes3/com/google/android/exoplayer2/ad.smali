.class public final Lcom/google/android/exoplayer2/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ad$a;,
        Lcom/google/android/exoplayer2/ad$b;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/ad$b;

.field final b:Lcom/google/android/exoplayer2/al;

.field c:I

.field d:Ljava/lang/Object;

.field e:Landroid/os/Looper;

.field f:I

.field g:J

.field h:Z

.field private final i:Lcom/google/android/exoplayer2/ad$a;

.field private final j:Lcom/google/android/exoplayer2/util/c;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ad$a;Lcom/google/android/exoplayer2/ad$b;Lcom/google/android/exoplayer2/al;ILcom/google/android/exoplayer2/util/c;Landroid/os/Looper;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/ad;->i:Lcom/google/android/exoplayer2/ad$a;

    .line 93
    iput-object p2, p0, Lcom/google/android/exoplayer2/ad;->a:Lcom/google/android/exoplayer2/ad$b;

    .line 94
    iput-object p3, p0, Lcom/google/android/exoplayer2/ad;->b:Lcom/google/android/exoplayer2/al;

    .line 95
    iput-object p6, p0, Lcom/google/android/exoplayer2/ad;->e:Landroid/os/Looper;

    .line 96
    iput-object p5, p0, Lcom/google/android/exoplayer2/ad;->j:Lcom/google/android/exoplayer2/util/c;

    .line 97
    iput p4, p0, Lcom/google/android/exoplayer2/ad;->f:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ad;->g:J

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ad;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/ad;
    .locals 6

    .line 255
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 256
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ad;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 257
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->h:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 259
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ad;->k:Z

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/ad;->i:Lcom/google/android/exoplayer2/ad$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ad$a;->a(Lcom/google/android/exoplayer2/ad;)V

    return-object p0
.end method

.method public final a(I)Lcom/google/android/exoplayer2/ad;
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/ad;->c:I

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/ad;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/ad;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->l:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ad;->l:Z

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ad;->m:Z

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->k:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ad;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/ad;->j:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 343
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ad;->m:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 344
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 345
    iget-object p1, p0, Lcom/google/android/exoplayer2/ad;->j:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 350
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ad;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 348
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ad;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
