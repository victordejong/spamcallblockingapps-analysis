.class Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/a;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "buffer_pg"

    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(JLjava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d(J)V

    .line 25
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e:Ljava/io/File;

    .line 26
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 27
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nCreate(Ljava/lang/String;J)J

    move-result-wide p1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c(J)V

    return-void
.end method

.method private native nCreate(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nFlush(JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nRead(JJ[BII)V
.end method

.method private native nRelease(JJ)I
.end method

.method private native nWrite(JJ[BII)V
.end method


# virtual methods
.method public a([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 97
    array-length v1, p1

    if-eqz v1, :cond_5

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_5

    .line 100
    array-length v1, p1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p2, p3

    .line 103
    array-length v2, p1

    if-le v1, v2, :cond_2

    .line 104
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 107
    :cond_2
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v3, v4, v1

    if-nez v3, :cond_3

    .line 109
    monitor-exit p0

    return v0

    :cond_3
    int-to-long v6, p3

    add-long/2addr v6, v4

    cmp-long v0, v6, v1

    if-lez v0, :cond_4

    sub-long/2addr v1, v4

    long-to-int p3, v1

    .line 115
    :cond_4
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nWrite(JJ[BII)V

    .line 116
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 118
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return v0

    .line 95
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized a(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 80
    monitor-exit p0

    return-wide v0

    .line 82
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    add-long/2addr p1, v2

    .line 83
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    cmp-long v4, p1, v0

    if-gez v4, :cond_1

    .line 85
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    goto :goto_0

    .line 86
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v4, p1, v0

    if-lez v4, :cond_2

    .line 87
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 89
    :cond_2
    :goto_0
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p1, v2

    monitor-exit p0

    return-wide p1

    .line 77
    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nFlush(JJ)I

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 66
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a([B)V

    return-void
.end method

.method public a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a([BII)I

    return-void
.end method

.method public b([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b([BII)I

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    if-ltz p2, :cond_4

    .line 164
    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int v0, p2, p3

    .line 167
    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 168
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 171
    :cond_1
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v2, v3, v0

    if-nez v2, :cond_2

    const/4 p1, -0x1

    .line 173
    monitor-exit p0

    return p1

    :cond_2
    int-to-long v5, p3

    add-long/2addr v5, v3

    cmp-long v2, v5, v0

    if-lez v2, :cond_3

    sub-long/2addr v0, v3

    long-to-int p3, v0

    .line 178
    :cond_3
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nRead(JJ[BII)V

    .line 179
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    .line 180
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 162
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    move-wide p1, v0

    goto :goto_1

    .line 137
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    return-void

    .line 133
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "released!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->c:J

    return-wide v0

    .line 125
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "released!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    return-void
.end method

.method public d()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 146
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b([B)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 150
    aget-byte v0, v0, v1

    return v0
.end method

.method d(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    return-void
.end method

.method public e()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->a:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->nRelease(JJ)I

    const-wide/16 v0, 0x0

    .line 191
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->b:J

    return-void
.end method

.method public f()Ljava/io/File;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e:Ljava/io/File;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/MMapBuffer;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
