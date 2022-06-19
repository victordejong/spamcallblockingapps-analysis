.class public final Lcom/google/android/gms/internal/ads/q6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/p6;

.field private final b:Lcom/google/android/gms/internal/ads/o6;

.field private final c:Lcom/google/android/gms/internal/ads/z8;

.field private final d:Lcom/google/android/gms/internal/ads/p7;

.field private e:I

.field private f:Ljava/lang/Object;

.field private final g:Landroid/os/Looper;

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/o6;Lcom/google/android/gms/internal/ads/p6;Lcom/google/android/gms/internal/ads/p7;ILcom/google/android/gms/internal/ads/z8;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q6;->b:Lcom/google/android/gms/internal/ads/o6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q6;->a:Lcom/google/android/gms/internal/ads/p6;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q6;->d:Lcom/google/android/gms/internal/ads/p7;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/q6;->g:Landroid/os/Looper;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/q6;->c:Lcom/google/android/gms/internal/ads/z8;

    iput p4, p0, Lcom/google/android/gms/internal/ads/q6;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/p6;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q6;->a:Lcom/google/android/gms/internal/ads/p6;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/q6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q6;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/q6;->e:I

    return-object p0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/q6;->e:I

    return v0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/q6;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q6;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q6;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q6;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q6;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/q6;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q6;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/q6;->i:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q6;->b:Lcom/google/android/gms/internal/ads/o6;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/o6;->b(Lcom/google/android/gms/internal/ads/q6;)V

    return-object p0
.end method

.method public final declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized i(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/q6;->j:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/q6;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/q6;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(J)Z
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/q6;->i:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/q6;->g:Landroid/os/Looper;

    .line 2
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x7d0

    add-long/2addr p1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/q6;->k:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p1, v0

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/q6;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
