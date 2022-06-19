.class public final Lcom/google/android/exoplayer2/mediacodec/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private b:[Ljava/nio/ByteBuffer;

.field private c:[Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/j$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/j;-><init>(Landroid/media/MediaCodec;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 157
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/f$b;->a(J)V

    return-void
.end method

.method public static synthetic lambda$jiVH4GxxEL_IJCS_k-ncHqSFCZQ(Lcom/google/android/exoplayer2/mediacodec/j;Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/mediacodec/j;->a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/media/MediaCodec;JJ)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 83
    sget v2, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 84
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/j;->c:[Ljava/nio/ByteBuffer;

    :cond_1
    if-eq v0, v1, :cond_0

    return v0
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 99
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->b:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 67
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->b:[Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->c:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final a(IIJI)V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/decoder/b;J)V
    .locals 7

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    .line 1121
    iget-object v3, p2, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p1

    move-wide v4, p3

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/f$b;Landroid/os/Handler;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$j$jiVH4GxxEL_IJCS_k-ncHqSFCZQ;-><init>(Lcom/google/android/exoplayer2/mediacodec/j;Lcom/google/android/exoplayer2/mediacodec/f$b;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final b()I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 109
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->c:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final c()Landroid/media/MediaFormat;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->b:[Ljava/nio/ByteBuffer;

    .line 148
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->c:[Ljava/nio/ByteBuffer;

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/j;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
