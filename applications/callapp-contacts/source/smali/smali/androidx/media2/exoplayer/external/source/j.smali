.class public final Landroidx/media2/exoplayer/external/source/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/ak;

.field private final b:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/media2/exoplayer/external/x;

.field private final d:Z

.field private e:Landroidx/media2/exoplayer/external/Format;

.field private f:Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ak;Landroidx/media2/exoplayer/external/drm/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/source/ak;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/j;->a:Landroidx/media2/exoplayer/external/source/ak;

    .line 60
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/j;->b:Landroidx/media2/exoplayer/external/drm/k;

    .line 61
    new-instance p1, Landroidx/media2/exoplayer/external/x;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/x;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/j;->c:Landroidx/media2/exoplayer/external/x;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/j;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;ZZJ)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    .line 122
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/j;->b:Landroidx/media2/exoplayer/external/drm/k;

    sget-object v3, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 126
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/drm/DrmSession;->b()I

    move-result v2

    if-eq v2, v11, :cond_2

    .line 128
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/source/j;->d:Z

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v14, 0x0

    .line 140
    :goto_3
    iget-object v15, v0, Landroidx/media2/exoplayer/external/source/j;->a:Landroidx/media2/exoplayer/external/source/ak;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/j;->c:Landroidx/media2/exoplayer/external/x;

    .line 1385
    iget-object v2, v15, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    iget-object v8, v15, Landroidx/media2/exoplayer/external/source/ak;->d:Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v15, Landroidx/media2/exoplayer/external/source/ak;->b:Landroidx/media2/exoplayer/external/source/aj$a;

    move-object v3, v9

    move-object/from16 v4, p2

    move-object/from16 v16, v7

    move/from16 v7, p4

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    .line 1386
    invoke-virtual/range {v2 .. v9}, Landroidx/media2/exoplayer/external/source/aj;->a(Landroidx/media2/exoplayer/external/x;Landroidx/media2/exoplayer/external/b/e;ZZZLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/aj$a;)I

    move-result v2

    const/4 v3, -0x4

    const/4 v4, -0x3

    const/4 v5, -0x5

    if-eq v2, v5, :cond_16

    if-eq v2, v3, :cond_5

    if-ne v2, v4, :cond_4

    const/4 v0, -0x5

    const/4 v3, -0x3

    goto/16 :goto_8

    .line 1411
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1399
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/b/e;->c()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1400
    iget-wide v6, v10, Landroidx/media2/exoplayer/external/b/e;->d:J

    cmp-long v2, v6, p5

    if-gez v2, :cond_6

    const/high16 v2, -0x80000000

    .line 1401
    invoke-virtual {v10, v2}, Landroidx/media2/exoplayer/external/b/e;->a(I)V

    .line 1403
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/b/e;->f()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1404
    iget-object v2, v15, Landroidx/media2/exoplayer/external/source/ak;->b:Landroidx/media2/exoplayer/external/source/aj$a;

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/b/e;->g()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1462
    iget-wide v6, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    .line 1465
    iget-object v8, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v8, v12}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1466
    iget-object v8, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {v15, v6, v7, v8, v12}, Landroidx/media2/exoplayer/external/source/ak;->a(J[BI)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 1468
    iget-object v8, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v8, v8, v13

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v8, v8, 0x7f

    .line 1473
    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/b/b;->a:[B

    if-nez v3, :cond_8

    .line 1474
    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    const/16 v12, 0x10

    new-array v12, v12, [B

    iput-object v12, v3, Landroidx/media2/exoplayer/external/b/b;->a:[B

    .line 1476
    :cond_8
    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/b/b;->a:[B

    invoke-virtual {v15, v6, v7, v3, v8}, Landroidx/media2/exoplayer/external/source/ak;->a(J[BI)V

    int-to-long v4, v8

    add-long/2addr v6, v4

    if-eqz v9, :cond_9

    .line 1482
    iget-object v4, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1483
    iget-object v4, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {v15, v6, v7, v4, v5}, Landroidx/media2/exoplayer/external/source/ak;->a(J[BI)V

    const-wide/16 v4, 0x2

    add-long/2addr v6, v4

    .line 1485
    iget-object v4, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v4

    goto :goto_5

    :cond_9
    const/4 v4, 0x1

    .line 1491
    :goto_5
    iget-object v5, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/b/b;->d:[I

    if-eqz v5, :cond_a

    .line 1492
    array-length v8, v5

    if-ge v8, v4, :cond_b

    .line 1493
    :cond_a
    new-array v5, v4, [I

    .line 1495
    :cond_b
    iget-object v8, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/b/b;->e:[I

    if-eqz v8, :cond_c

    .line 1496
    array-length v12, v8

    if-ge v12, v4, :cond_d

    .line 1497
    :cond_c
    new-array v8, v4, [I

    :cond_d
    if-eqz v9, :cond_e

    mul-int/lit8 v9, v4, 0x6

    .line 1501
    iget-object v12, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v12, v9}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1502
    iget-object v12, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v12, v12, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {v15, v6, v7, v12, v9}, Landroidx/media2/exoplayer/external/source/ak;->a(J[BI)V

    int-to-long v11, v9

    add-long/2addr v6, v11

    .line 1504
    iget-object v9, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v9, v13}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v4, :cond_f

    .line 1506
    iget-object v11, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v11

    aput v11, v5, v9

    .line 1507
    iget-object v11, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v11}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v11

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1510
    :cond_e
    aput v13, v5, v13

    .line 1511
    iget v9, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    iget-wide v11, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    sub-long v11, v6, v11

    long-to-int v12, v11

    sub-int/2addr v9, v12

    aput v9, v8, v13

    .line 1515
    :cond_f
    iget-object v9, v2, Landroidx/media2/exoplayer/external/source/aj$a;->c:Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 1516
    iget-object v11, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v12, v9, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->b:Landroidx/media2/exoplayer/external/b/b;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/b/b;->a:[B

    iget v13, v9, Landroidx/media2/exoplayer/external/extractor/q$a;->a:I

    iget v1, v9, Landroidx/media2/exoplayer/external/extractor/q$a;->c:I

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/q$a;->d:I

    .line 2080
    iput v4, v11, Landroidx/media2/exoplayer/external/b/b;->f:I

    .line 2081
    iput-object v5, v11, Landroidx/media2/exoplayer/external/b/b;->d:[I

    .line 2082
    iput-object v8, v11, Landroidx/media2/exoplayer/external/b/b;->e:[I

    .line 2083
    iput-object v12, v11, Landroidx/media2/exoplayer/external/b/b;->b:[B

    .line 2084
    iput-object v3, v11, Landroidx/media2/exoplayer/external/b/b;->a:[B

    .line 2085
    iput v13, v11, Landroidx/media2/exoplayer/external/b/b;->c:I

    .line 2086
    iput v1, v11, Landroidx/media2/exoplayer/external/b/b;->g:I

    .line 2087
    iput v9, v11, Landroidx/media2/exoplayer/external/b/b;->h:I

    .line 2090
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput v4, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 2091
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v5, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 2092
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v8, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 2093
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v12, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 2094
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v3, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 2095
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput v13, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 2096
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_10

    .line 2097
    iget-object v0, v11, Landroidx/media2/exoplayer/external/b/b;->j:Landroidx/media2/exoplayer/external/b/b$a;

    .line 2132
    iget-object v3, v0, Landroidx/media2/exoplayer/external/b/b$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v3, v1, v9}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 2133
    iget-object v1, v0, Landroidx/media2/exoplayer/external/b/b$a;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/b/b$a;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 1521
    :cond_10
    iget-wide v0, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    sub-long/2addr v6, v0

    long-to-int v0, v6

    .line 1522
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    .line 1523
    iget v1, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    .line 1427
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1429
    iget-object v0, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1430
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    iget-object v0, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {v15, v3, v4, v0, v1}, Landroidx/media2/exoplayer/external/source/ak;->a(J[BI)V

    .line 1431
    iget-object v0, v15, Landroidx/media2/exoplayer/external/source/ak;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    .line 1432
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    .line 1433
    iget v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    .line 1436
    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/b/e;->c(I)V

    .line 1437
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    iget-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v15, v3, v4, v1, v0}, Landroidx/media2/exoplayer/external/source/ak;->a(JLjava/nio/ByteBuffer;I)V

    .line 1438
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    .line 1439
    iget v1, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    .line 1442
    iget v0, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    .line 3107
    iget-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_12

    iget-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_13

    .line 3108
    :cond_12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    .line 3110
    :cond_13
    iget-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3111
    iget-object v1, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1443
    iget-wide v0, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->e:Ljava/nio/ByteBuffer;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    invoke-virtual {v15, v0, v1, v3, v2}, Landroidx/media2/exoplayer/external/source/ak;->a(JLjava/nio/ByteBuffer;I)V

    goto :goto_7

    .line 1446
    :cond_14
    iget v0, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/b/e;->c(I)V

    .line 1447
    iget-wide v0, v2, Landroidx/media2/exoplayer/external/source/aj$a;->b:J

    iget-object v3, v10, Landroidx/media2/exoplayer/external/b/e;->c:Ljava/nio/ByteBuffer;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/aj$a;->a:I

    invoke-virtual {v15, v0, v1, v3, v2}, Landroidx/media2/exoplayer/external/source/ak;->a(JLjava/nio/ByteBuffer;I)V

    :cond_15
    :goto_7
    const/4 v0, -0x5

    const/4 v3, -0x4

    goto :goto_8

    :cond_16
    move-object/from16 v0, v17

    .line 1396
    iget-object v0, v0, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    iput-object v0, v15, Landroidx/media2/exoplayer/external/source/ak;->d:Landroidx/media2/exoplayer/external/Format;

    const/4 v0, -0x5

    const/4 v3, -0x5

    :goto_8
    if-ne v3, v0, :cond_1a

    move-object/from16 v0, p0

    if-eqz v14, :cond_17

    .line 149
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/j;->c:Landroidx/media2/exoplayer/external/x;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    if-ne v1, v2, :cond_17

    const/4 v1, -0x3

    return v1

    .line 152
    :cond_17
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/j;->c:Landroidx/media2/exoplayer/external/x;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v2, p1

    .line 3164
    iput-object v1, v2, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 3165
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    const/4 v5, 0x0

    if-eqz v4, :cond_18

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto :goto_9

    :cond_18
    move-object v4, v5

    .line 3166
    :goto_9
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    .line 3167
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/j;->b:Landroidx/media2/exoplayer/external/drm/k;

    sget-object v7, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    if-eq v6, v7, :cond_1b

    const/4 v6, 0x1

    .line 3174
    iput-boolean v6, v2, Landroidx/media2/exoplayer/external/x;->a:Z

    .line 3175
    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iput-object v6, v2, Landroidx/media2/exoplayer/external/x;->b:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 3176
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3182
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 3183
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/j;->e:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v4, :cond_19

    .line 3185
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/j;->b:Landroidx/media2/exoplayer/external/drm/k;

    .line 3186
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Looper;

    invoke-interface {v5, v6, v4}, Landroidx/media2/exoplayer/external/drm/k;->a(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;

    move-result-object v4

    iput-object v4, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    goto :goto_a

    .line 3188
    :cond_19
    iput-object v5, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 3190
    :goto_a
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    iput-object v4, v2, Landroidx/media2/exoplayer/external/x;->b:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v1, :cond_1b

    .line 3193
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/drm/DrmSession;->g()V

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    :cond_1b
    :goto_b
    return v3
.end method

.method public final a()V
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->g()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    :cond_0
    return-void
.end method

.method public final a(Z)Z
    .locals 3

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->a:Landroidx/media2/exoplayer/external/source/ak;

    .line 3355
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ak;->a:Landroidx/media2/exoplayer/external/source/aj;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ak;->d:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/aj;->a(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    return p1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/j;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return p1

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->b:Landroidx/media2/exoplayer/external/drm/k;

    sget-object v1, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    .line 208
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return p1

    .line 211
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/j;->f:Landroidx/media2/exoplayer/external/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/drm/DrmSession;->c()Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
