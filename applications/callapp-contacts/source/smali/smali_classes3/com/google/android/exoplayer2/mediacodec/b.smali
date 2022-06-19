.class final Lcom/google/android/exoplayer2/mediacodec/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/b$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;


# instance fields
.field final a:Landroid/os/HandlerThread;

.field b:Landroid/os/Handler;

.field c:Z

.field private final f:Landroid/media/MediaCodec;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/util/f;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/b;->d:Ljava/util/ArrayDeque;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V
    .locals 1

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/util/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/f;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/mediacodec/b;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;ZLcom/google/android/exoplayer2/util/f;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;ZLcom/google/android/exoplayer2/util/f;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/b;->f:Landroid/media/MediaCodec;

    .line 89
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/b;->a:Landroid/os/HandlerThread;

    .line 90
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/b;->h:Lcom/google/android/exoplayer2/util/f;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-nez p3, :cond_2

    .line 1306
    sget-object p3, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "samsung"

    .line 1307
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "motorola"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 93
    :cond_3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/b;->i:Z

    return-void
.end method

.method static a(Lcom/google/android/exoplayer2/decoder/b;Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2

    .line 315
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/b;->f:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 317
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/b;->e:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 319
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/b;->b:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/b;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 322
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/b;->c:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 323
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 324
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/b;->g:I

    iget p0, p0, Lcom/google/android/exoplayer2/decoder/b;->h:I

    invoke-direct {v0, v1, p0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/mediacodec/b;Landroid/os/Message;)V
    .locals 8

    .line 2211
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2230
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 2227
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->h:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/f;->a()Z

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    .line 2218
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/b$a;

    .line 2219
    iget v1, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->a:I

    iget v2, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->b:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->d:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->e:J

    iget v6, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->f:I

    .line 2249
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->i:Z

    if-eqz v0, :cond_2

    .line 2250
    sget-object v7, Lcom/google/android/exoplayer2/mediacodec/b;->e:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->f:Landroid/media/MediaCodec;

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 2252
    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 2254
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->f:Landroid/media/MediaCodec;

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2257
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/RuntimeException;)V

    goto :goto_1

    .line 2213
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/b$a;

    .line 2214
    iget v1, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->a:I

    iget v2, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->c:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->e:J

    iget v6, p1, Lcom/google/android/exoplayer2/mediacodec/b$a;->f:I

    .line 2240
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->f:Landroid/media/MediaCodec;

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2242
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/b;->a(Ljava/lang/RuntimeException;)V

    :goto_1
    move-object p0, p1

    :goto_2
    if-eqz p0, :cond_4

    .line 2272
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/b;->d:Ljava/util/ArrayDeque;

    monitor-enter p1

    .line 2273
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2274
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static a([B[B)[B
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 365
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 366
    :cond_2
    :goto_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([I[I)[I
    .locals 2

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 344
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 345
    :cond_2
    :goto_0
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method static d()Lcom/google/android/exoplayer2/mediacodec/b$a;
    .locals 2

    .line 262
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/b;->d:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 263
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/b$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/mediacodec/b$a;-><init>()V

    monitor-exit v0

    return-object v1

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/b$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/b;->c()V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/b;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->c:Z

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/b;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    throw v0
.end method

.method final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->h:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/f;->b()Z

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->b:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/b;->h:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/f;->c()V

    return-void
.end method
