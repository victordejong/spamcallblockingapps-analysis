.class final Lcom/google/android/exoplayer2/mediacodec/c;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/os/HandlerThread;

.field c:Landroid/os/Handler;

.field d:Z

.field private final e:Lcom/google/android/exoplayer2/util/l;

.field private final f:Lcom/google/android/exoplayer2/util/l;

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/media/MediaFormat;

.field private j:Landroid/media/MediaFormat;

.field private k:Landroid/media/MediaCodec$CodecException;

.field private l:J

.field private m:Ljava/lang/IllegalStateException;


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Landroid/os/HandlerThread;

    .line 86
    new-instance p1, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Lcom/google/android/exoplayer2/util/l;

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    .line 88
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->g:Ljava/util/ArrayDeque;

    .line 89
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/IllegalStateException;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->m:Ljava/lang/IllegalStateException;

    .line 330
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic b(Ljava/lang/Runnable;)V
    .locals 6

    .line 1246
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1253
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->d:Z

    if-nez v1, :cond_1

    .line 1257
    iget-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->l:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->l:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 1263
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1272
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1270
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Ljava/lang/IllegalStateException;)V

    .line 1248
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private d()Z
    .locals 5

    .line 294
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->f()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->m:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 313
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->m:Ljava/lang/IllegalStateException;

    .line 314
    throw v0
.end method

.method private g()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->k:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 322
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->k:Landroid/media/MediaCodec$CodecException;

    .line 323
    throw v0
.end method

.method public static synthetic lambda$eMZGCvJlY14Mc9_ybAXmHvmGjjw(Lcom/google/android/exoplayer2/mediacodec/c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->d()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 132
    monitor-exit v0

    return v2

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->e()V

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->a()I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->d()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 151
    monitor-exit v0

    return v2

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->e()V

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    monitor-exit v0

    return v2

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->a()I

    move-result v1

    if-ltz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->i:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 161
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    .line 167
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->i:Landroid/media/MediaFormat;

    .line 169
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->l:J

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$c$eMZGCvJlY14Mc9_ybAXmHvmGjjw;-><init>(Lcom/google/android/exoplayer2/mediacodec/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->i:Landroid/media/MediaFormat;

    if-eqz v1, :cond_0

    .line 189
    monitor-exit v0

    return-object v1

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final c()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->j:Landroid/media/MediaFormat;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()V

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()V

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->k:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 233
    :try_start_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->k:Landroid/media/MediaCodec$CodecException;

    .line 234
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 214
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->j:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->j:Landroid/media/MediaFormat;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 226
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 227
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 240
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    .line 241
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->j:Landroid/media/MediaFormat;

    .line 242
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
