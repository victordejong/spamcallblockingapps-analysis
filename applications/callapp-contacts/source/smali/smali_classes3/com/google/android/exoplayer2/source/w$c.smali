.class final Lcom/google/android/exoplayer2/source/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/w;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w;I)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    iput p2, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 10495
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10498
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->a(I)V

    .line 10499
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v2, v2, v1

    .line 10500
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/w;->g:Z

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer2/source/z;->b(JZ)I

    move-result p1

    .line 10501
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/z;->a(I)V

    if-nez p1, :cond_1

    .line 10503
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->b(I)V

    :cond_1
    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 952
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v9, v0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 2482
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/w;->i()Z

    move-result v1

    const/4 v10, -0x3

    if-eqz v1, :cond_0

    return v10

    .line 2485
    :cond_0
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/source/w;->a(I)V

    .line 2486
    iget-object v1, v8, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v11, v1, v9

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/source/w;->g:Z

    .line 3419
    iget-object v6, v11, Lcom/google/android/exoplayer2/source/z;->b:Lcom/google/android/exoplayer2/source/z$a;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 3420
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/z$a;)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_f

    .line 3421
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()Z

    move-result v2

    if-nez v2, :cond_f

    .line 3422
    iget-object v2, v11, Lcom/google/android/exoplayer2/source/z;->a:Lcom/google/android/exoplayer2/source/y;

    iget-object v3, v11, Lcom/google/android/exoplayer2/source/z;->b:Lcom/google/android/exoplayer2/source/z$a;

    .line 4125
    iget-object v4, v2, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    iget-object v5, v2, Lcom/google/android/exoplayer2/source/y;->a:Lcom/google/android/exoplayer2/util/u;

    .line 4268
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->g()Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_b

    .line 4317
    iget-wide v13, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 4320
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 5169
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4321
    invoke-static {v4, v13, v14, v6, v12}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v4

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    .line 6169
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v15, 0x0

    .line 4323
    aget-byte v6, v6, v15

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    and-int/lit8 v6, v6, 0x7f

    .line 4328
    iget-object v12, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Lcom/google/android/exoplayer2/decoder/b;

    .line 4329
    iget-object v15, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    if-nez v15, :cond_2

    const/16 v15, 0x10

    new-array v15, v15, [B

    .line 4330
    iput-object v15, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    goto :goto_1

    .line 4333
    :cond_2
    iget-object v15, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    const/4 v0, 0x0

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 4335
    :goto_1
    iget-object v0, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    invoke-static {v4, v13, v14, v0, v6}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    move-object v15, v8

    move/from16 v17, v9

    int-to-long v8, v6

    add-long/2addr v13, v8

    if-eqz v10, :cond_3

    const/4 v4, 0x2

    .line 4341
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 7169
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4342
    invoke-static {v0, v13, v14, v6, v4}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    const-wide/16 v8, 0x2

    add-long/2addr v13, v8

    .line 4344
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 4350
    :goto_2
    iget-object v6, v12, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    if-eqz v6, :cond_4

    .line 4351
    array-length v8, v6

    if-ge v8, v4, :cond_5

    .line 4352
    :cond_4
    new-array v6, v4, [I

    .line 4354
    :cond_5
    iget-object v8, v12, Lcom/google/android/exoplayer2/decoder/b;->e:[I

    if-eqz v8, :cond_6

    .line 4355
    array-length v9, v8

    if-ge v9, v4, :cond_7

    .line 4356
    :cond_6
    new-array v8, v4, [I

    :cond_7
    if-eqz v10, :cond_8

    mul-int/lit8 v9, v4, 0x6

    .line 4360
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 8169
    iget-object v10, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4361
    invoke-static {v0, v13, v14, v10, v9}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    int-to-long v9, v9

    add-long/2addr v13, v9

    const/4 v9, 0x0

    .line 4363
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    :goto_3
    if-ge v9, v4, :cond_9

    .line 4365
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v10

    aput v10, v6, v9

    .line 4366
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 4369
    aput v9, v6, v9

    .line 4370
    iget v10, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    move/from16 v18, v10

    iget-wide v9, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    sub-long v9, v13, v9

    long-to-int v10, v9

    sub-int v10, v18, v10

    const/4 v9, 0x0

    aput v10, v8, v9

    .line 4374
    :cond_9
    iget-object v9, v3, Lcom/google/android/exoplayer2/source/z$a;->c:Lcom/google/android/exoplayer2/extractor/x$a;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/extractor/x$a;

    .line 4375
    iget-object v10, v9, Lcom/google/android/exoplayer2/extractor/x$a;->b:[B

    move-object/from16 p3, v0

    iget-object v0, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    move-object/from16 v18, v15

    iget v15, v9, Lcom/google/android/exoplayer2/extractor/x$a;->a:I

    move/from16 v19, v1

    iget v1, v9, Lcom/google/android/exoplayer2/extractor/x$a;->c:I

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/x$a;->d:I

    .line 9090
    iput v4, v12, Lcom/google/android/exoplayer2/decoder/b;->f:I

    .line 9091
    iput-object v6, v12, Lcom/google/android/exoplayer2/decoder/b;->d:[I

    .line 9092
    iput-object v8, v12, Lcom/google/android/exoplayer2/decoder/b;->e:[I

    .line 9093
    iput-object v10, v12, Lcom/google/android/exoplayer2/decoder/b;->b:[B

    .line 9094
    iput-object v0, v12, Lcom/google/android/exoplayer2/decoder/b;->a:[B

    .line 9095
    iput v15, v12, Lcom/google/android/exoplayer2/decoder/b;->c:I

    .line 9096
    iput v1, v12, Lcom/google/android/exoplayer2/decoder/b;->g:I

    .line 9097
    iput v9, v12, Lcom/google/android/exoplayer2/decoder/b;->h:I

    move-object/from16 v20, v11

    .line 9100
    iget-object v11, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput v4, v11, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 9101
    iget-object v4, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v6, v4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 9102
    iget-object v4, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v8, v4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 9103
    iget-object v4, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v10, v4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 9104
    iget-object v4, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 9105
    iget-object v0, v12, Lcom/google/android/exoplayer2/decoder/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput v15, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 9106
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_a

    .line 9107
    iget-object v0, v12, Lcom/google/android/exoplayer2/decoder/b;->j:Lcom/google/android/exoplayer2/decoder/b$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/b$a;

    .line 9165
    iget-object v4, v0, Lcom/google/android/exoplayer2/decoder/b$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v4, v1, v9}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 9166
    iget-object v1, v0, Lcom/google/android/exoplayer2/decoder/b$a;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/b$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 4386
    :cond_a
    iget-wide v0, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    sub-long/2addr v13, v0

    long-to-int v0, v13

    .line 4387
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 4388
    iget v1, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    move-object/from16 v4, p3

    goto :goto_4

    :cond_b
    move/from16 v19, v1

    move-object/from16 v18, v8

    move/from16 v17, v9

    move-object/from16 v20, v11

    .line 4272
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    .line 4274
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 4275
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 9169
    iget-object v1, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4275
    invoke-static {v4, v8, v9, v1, v0}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;J[BI)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v1

    .line 4276
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v4

    .line 4277
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    const-wide/16 v8, 0x4

    add-long/2addr v5, v8

    iput-wide v5, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 4278
    iget v5, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    sub-int/2addr v5, v0

    iput v5, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 4281
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c(I)V

    .line 4282
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    iget-object v0, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v1, v5, v6, v0, v4}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    .line 4283
    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    int-to-long v8, v4

    add-long/2addr v5, v8

    iput-wide v5, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    .line 4284
    iget v1, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    sub-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 4287
    iget v1, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 10156
    iget-object v4, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_d

    iget-object v4, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v1, :cond_c

    goto :goto_5

    .line 10159
    :cond_c
    iget-object v1, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_6

    .line 10157
    :cond_d
    :goto_5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    .line 4288
    :goto_6
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    iget-object v1, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:Ljava/nio/ByteBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 4289
    invoke-static {v0, v4, v5, v1, v3}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    goto :goto_7

    .line 4292
    :cond_e
    iget v0, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c(I)V

    .line 4293
    iget-wide v0, v3, Lcom/google/android/exoplayer2/source/z$a;->b:J

    iget-object v5, v7, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget v3, v3, Lcom/google/android/exoplayer2/source/z$a;->a:I

    .line 4294
    invoke-static {v4, v0, v1, v5, v3}, Lcom/google/android/exoplayer2/source/y;->a(Lcom/google/android/exoplayer2/source/y$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/y$a;

    move-result-object v0

    .line 4125
    :goto_7
    iput-object v0, v2, Lcom/google/android/exoplayer2/source/y;->c:Lcom/google/android/exoplayer2/source/y$a;

    move-object/from16 v0, v20

    .line 3423
    iget v1, v0, Lcom/google/android/exoplayer2/source/z;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplayer2/source/z;->f:I

    move/from16 v0, v19

    goto :goto_8

    :cond_f
    move-object/from16 v18, v8

    move/from16 v17, v9

    move v0, v1

    :goto_8
    const/4 v1, -0x3

    if-ne v0, v1, :cond_10

    move/from16 v2, v17

    move-object/from16 v1, v18

    .line 2489
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/w;->b(I)V

    :cond_10
    return v0
.end method

.method public final a()Z
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 1465
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w;->i()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/w;->g:Z

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/z;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 1469
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    aget-object v1, v2, v1

    .line 2279
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/DrmSession;->c()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 2280
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/z;->d:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    .line 1470
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w;->h()V

    return-void
.end method
