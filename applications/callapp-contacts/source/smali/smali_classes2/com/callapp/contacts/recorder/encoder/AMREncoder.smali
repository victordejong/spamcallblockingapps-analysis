.class public Lcom/callapp/contacts/recorder/encoder/AMREncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/recorder/encoder/AudioEncoder;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Landroid/media/MediaCodec;

.field private c:J

.field private d:I

.field private e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->c:J

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->d:I

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 19
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x23t
        0x21t
        0x41t
        0x4dt
        0x52t
        0xat
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final a(II)V
    .locals 4

    const-string v0, "audio/3gpp"

    .line 23
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, p1, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "bitrate"

    const/16 v3, 0x2fa8

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-input-size"

    .line 26
    invoke-virtual {v0, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    const-class p2, Lcom/callapp/contacts/recorder/encoder/AMREncoder;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->a:Ljava/io/RandomAccessFile;

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->e:[B

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public final a([BI)V
    .locals 10

    const-wide/32 v0, 0x1d4c0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 44
    iget-object v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    iget p1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->d:I

    .line 49
    iget-object v3, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->c:J

    const/4 v9, 0x0

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-wide/32 p1, 0xf4240

    .line 50
    iget v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    mul-long v2, v2, p1

    const-wide/16 p1, 0x1f40

    div-long/2addr v2, p1

    iput-wide v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->c:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    :cond_0
    :try_start_1
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p2

    const-string v2, "AMRAudioOutput"

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Media format is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_3

    .line 66
    iget-object v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 68
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 69
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    .line 71
    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    :try_start_2
    iget-object v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->a:Ljava/io/RandomAccessFile;

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 75
    :try_start_3
    const-class v4, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 79
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    :cond_3
    return-void
.end method
