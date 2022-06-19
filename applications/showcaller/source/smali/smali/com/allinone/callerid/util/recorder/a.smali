.class public Lcom/allinone/callerid/util/recorder/a;
.super Ljava/lang/Object;
.source "AmrEncoder.java"


# static fields
.field private static a:[B


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/allinone/callerid/util/recorder/a;->a:[B

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

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    .line 2
    iput v0, p0, Lcom/allinone/callerid/util/recorder/a;->b:I

    const/16 v0, 0x40

    .line 3
    iput v0, p0, Lcom/allinone/callerid/util/recorder/a;->c:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/allinone/callerid/util/recorder/a;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "audio/3gpp"

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v9

    .line 2
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sample-rate"

    .line 4
    iget v3, v1, Lcom/allinone/callerid/util/recorder/a;->b:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "channel-count"

    .line 5
    iget v3, v1, Lcom/allinone/callerid/util/recorder/a;->d:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    .line 6
    iget v3, v1, Lcom/allinone/callerid/util/recorder/a;->c:I

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v9, v2, v3, v3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 8
    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/allinone/callerid/util/recorder/a;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 12
    sget-object v2, Lcom/allinone/callerid/util/recorder/a;->a:[B

    invoke-virtual {v11, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V

    .line 14
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 15
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    const v2, 0x15888

    new-array v14, v2, [B

    .line 16
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_0
    move-wide v6, v2

    move/from16 v16, v4

    const/4 v2, 0x0

    :goto_1
    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v9, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v17

    if-ltz v17, :cond_1

    .line 18
    aget-object v2, v12, v17

    .line 19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v10, v14, v8, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    double-to-long v2, v6

    const/4 v0, 0x4

    move-wide/from16 v18, v2

    move-object v2, v9

    move/from16 v3, v17

    move-wide/from16 v20, v6

    move-wide/from16 v6, v18

    move-object/from16 p1, v12

    const/4 v12, 0x0

    move v8, v0

    .line 21
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    move-wide/from16 v6, v20

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v6

    move-object/from16 p1, v12

    const/4 v12, 0x0

    add-int v16, v16, v4

    .line 22
    invoke-virtual {v2, v14, v12, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-wide/from16 v6, v20

    double-to-long v6, v6

    const/4 v8, 0x0

    move-object v2, v9

    move/from16 v3, v17

    move/from16 v18, v4

    move v4, v5

    move/from16 v5, v18

    .line 23
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-wide/32 v2, 0xf4240

    .line 24
    div-int/lit8 v4, v16, 0x2

    int-to-long v4, v4

    mul-long v4, v4, v2

    iget v2, v1, Lcom/allinone/callerid/util/recorder/a;->b:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    long-to-double v6, v4

    :goto_2
    move-object/from16 v12, p1

    move/from16 v2, v17

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move/from16 v2, v17

    goto :goto_1

    :cond_2
    move-object/from16 p1, v12

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_3
    if-eq v8, v5, :cond_4

    .line 25
    invoke-virtual {v9, v15, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    if-ltz v8, :cond_3

    .line 26
    aget-object v2, v13, v8

    .line 27
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    iget v3, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v3, [B

    .line 30
    invoke-virtual {v2, v4, v12, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 31
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v11, v4, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 32
    invoke-virtual {v9, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_3

    .line 33
    :cond_4
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 34
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 35
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 36
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    move-object/from16 v12, p1

    move-wide v2, v6

    move/from16 v4, v16

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public b(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/util/recorder/a;->b:I

    .line 2
    iput p2, p0, Lcom/allinone/callerid/util/recorder/a;->c:I

    .line 3
    iput p3, p0, Lcom/allinone/callerid/util/recorder/a;->d:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/a;->e:Ljava/lang/String;

    return-void
.end method
