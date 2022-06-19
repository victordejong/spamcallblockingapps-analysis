.class final Lcom/google/android/exoplayer2/mediacodec/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Lcom/google/android/exoplayer2/mediacodec/c;

.field private final c:Lcom/google/android/exoplayer2/mediacodec/b;

.field private final d:Z

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/c;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    .line 134
    new-instance p2, Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/b;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 137
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Z

    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/a$1;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/mediacodec/a;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V

    return-void
.end method

.method static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 243
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/f$b;->a(J)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->d:Z

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 3174
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/b;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 284
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static synthetic lambda$y6cj5Y8WJKuvXvWJBylJlHdRUj4(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/mediacodec/a;->a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 2102
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->c:Z

    if-nez v1, :cond_0

    .line 2103
    iget-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2104
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/b$1;

    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/b;->a:Landroid/os/HandlerThread;

    .line 2105
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/b$1;-><init>(Lcom/google/android/exoplayer2/mediacodec/b;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 2111
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->c:Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x2

    .line 156
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I

    return-void
.end method

.method public final a(IIJI)V
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 2122
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/b;->b()V

    .line 2123
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/b;->d()Lcom/google/android/exoplayer2/mediacodec/b$a;

    move-result-object v8

    const/4 v3, 0x0

    move-object v1, v8

    move v2, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    .line 2124
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/mediacodec/b$a;->a(IIIJI)V

    .line 2125
    iget-object p1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2126
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/decoder/b;J)V
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 2140
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/b;->b()V

    .line 2141
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/b;->d()Lcom/google/android/exoplayer2/mediacodec/b$a;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p1

    move-wide v5, p3

    .line 2142
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/mediacodec/b$a;->a(IIIJI)V

    .line 2143
    iget-object p1, v8, Lcom/google/android/exoplayer2/mediacodec/b$a;->d:Landroid/media/MediaCodec$CryptoInfo;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Lcom/google/android/exoplayer2/decoder/b;Landroid/media/MediaCodec$CryptoInfo;)V

    .line 2144
    iget-object p1, v0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Landroid/os/Handler;

    .line 2145
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2146
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    .line 1101
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1103
    iget-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1104
    new-instance v2, Landroid/os/Handler;

    iget-object v5, v0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1105
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 1108
    iput-object v2, v0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Landroid/os/Handler;

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 149
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->f()V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->f()V

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/os/Handler;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->f()V

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$a$y6cj5Y8WJKuvXvWJBylJlHdRUj4;-><init>(Lcom/google/android/exoplayer2/mediacodec/a;Lcom/google/android/exoplayer2/mediacodec/f$b;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/c;->a()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/media/MediaFormat;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/c;->b()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/a;->f()V

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/b;->a()V

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$eDpY_fTfY9aVkUSlR57RZPPXgr0;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$eDpY_fTfY9aVkUSlR57RZPPXgr0;-><init>(Landroid/media/MediaCodec;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    .line 223
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->c:Lcom/google/android/exoplayer2/mediacodec/b;

    .line 2165
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/b;->c:Z

    if-eqz v3, :cond_0

    .line 2166
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a()V

    .line 2167
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v3, 0x0

    .line 2169
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/mediacodec/b;->c:Z

    .line 226
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I

    if-eq v1, v0, :cond_2

    if-ne v1, v2, :cond_3

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->b:Lcom/google/android/exoplayer2/mediacodec/c;

    .line 3118
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/c;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3119
    :try_start_1
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/mediacodec/c;->d:Z

    .line 3120
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    .line 3121
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/c;->c()V

    .line 3122
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 v1, 0x3

    .line 229
    :try_start_2
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Z

    if-nez v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 233
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Z

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 3122
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 231
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Z

    if-nez v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 233
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/a;->e:Z

    .line 235
    :cond_5
    throw v1
.end method
