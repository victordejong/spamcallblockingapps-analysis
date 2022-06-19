.class public final Lcom/google/android/exoplayer2/util/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 0

    monitor-enter p0

    .line 143
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ad;->a:Z
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

.method public final declared-synchronized b()J
    .locals 7

    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 117
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/ad;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 118
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    monitor-exit p0

    return-wide v0

    .line 116
    :cond_1
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)J
    .locals 12

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 156
    monitor-exit p0

    return-wide v0

    .line 158
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    const-wide/32 v4, 0x15f90

    const-wide/32 v6, 0xf4240

    cmp-long v8, v2, v0

    if-eqz v8, :cond_1

    mul-long v2, v2, v4

    .line 1229
    div-long/2addr v2, v6

    const-wide v0, 0x100000000L

    add-long/2addr v0, v2

    const-wide v8, 0x200000000L

    .line 162
    div-long/2addr v0, v8

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long v10, v10, v8

    add-long/2addr v10, p1

    mul-long v0, v0, v8

    add-long/2addr p1, v0

    sub-long v0, v10, v2

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v8, v0, v2

    if-gez v8, :cond_1

    move-wide p1, v10

    :cond_1
    mul-long p1, p1, v6

    .line 2205
    div-long/2addr p1, v4

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/ad;->c(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()J
    .locals 5

    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 132
    monitor-exit p0

    return-wide v0

    .line 133
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)J
    .locals 5

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 181
    monitor-exit p0

    return-wide v0

    .line 184
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 185
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    goto :goto_0

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    sub-long/2addr v0, p1

    .line 189
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->c:J

    .line 191
    :cond_2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/ad;->d:J

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/ad;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
