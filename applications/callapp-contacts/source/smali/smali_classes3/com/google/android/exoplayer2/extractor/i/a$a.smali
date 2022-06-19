.class final Lcom/google/android/exoplayer2/extractor/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/i/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:Lcom/google/android/exoplayer2/extractor/j;

.field private final d:Lcom/google/android/exoplayer2/extractor/x;

.field private final e:Lcom/google/android/exoplayer2/extractor/i/b;

.field private final f:I

.field private final g:[B

.field private final h:Lcom/google/android/exoplayer2/util/u;

.field private final i:I

.field private final j:Lcom/google/android/exoplayer2/Format;

.field private k:I

.field private l:J

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 293
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->a:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    .line 297
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->c:Lcom/google/android/exoplayer2/extractor/j;

    .line 341
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->d:Lcom/google/android/exoplayer2/extractor/x;

    .line 342
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    .line 343
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->i:I

    .line 345
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    iget-object v1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->g:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 346
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    .line 347
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->f:I

    .line 349
    iget v1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    .line 353
    iget v2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Lcom/google/android/exoplayer2/extractor/i/b;->f:I

    mul-int v3, v3, v1

    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_0

    .line 362
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result p2

    .line 363
    iget v2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    mul-int v2, v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->g:[B

    .line 364
    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    mul-int/lit8 v3, v0, 0x2

    mul-int v3, v3, v1

    mul-int p2, p2, v3

    .line 366
    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->h:Lcom/google/android/exoplayer2/util/u;

    .line 370
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    iget v2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    mul-int p2, p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    .line 371
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v2, "audio/raw"

    .line 2370
    iput-object v2, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 3311
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 3322
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    const/4 p2, 0x2

    mul-int/lit8 p1, p1, 0x2

    mul-int p1, p1, v1

    .line 4381
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 376
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    .line 4517
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 377
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    .line 4528
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 4539
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 380
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->j:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 356
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected frames per block: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; got: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 11

    .line 450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->l:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->n:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 452
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 453
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/i/a$a;->c(I)I

    move-result v0

    .line 454
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    sub-int v9, v1, v0

    .line 455
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->d:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 457
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->n:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->n:J

    .line 458
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    return-void
.end method

.method private b(I)I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method private c(I)I
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    mul-int/lit8 p1, p1, 0x2

    mul-int p1, p1, v0

    return p1
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->c:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/i/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->f:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/i/d;-><init>(Lcom/google/android/exoplayer2/extractor/i/b;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->j:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    .line 386
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->l:J

    .line 387
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    const-wide/16 p1, 0x0

    .line 388
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$a;->n:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;J)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 402
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->i:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    .line 403
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/extractor/i/a$a;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 405
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->f:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/af;->a(II)I

    move-result v3

    .line 406
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v4, v4, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    mul-int v3, v3, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-nez v8, :cond_0

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 410
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    if-ge v7, v3, :cond_2

    sub-int v7, v3, v7

    int-to-long v7, v7

    .line 411
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v8, v7

    .line 412
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->g:[B

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    move-object/from16 v10, p1

    invoke-interface {v10, v7, v9, v8}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    goto :goto_0

    .line 416
    :cond_1
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    goto :goto_1

    .line 420
    :cond_2
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    div-int/2addr v1, v2

    if-lez v1, :cond_8

    .line 423
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->g:[B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->h:Lcom/google/android/exoplayer2/util/u;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_7

    const/4 v8, 0x0

    .line 5470
    :goto_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    if-ge v8, v9, :cond_6

    .line 6169
    iget-object v9, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 6481
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v10, v10, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    .line 6482
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v11, v11, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    mul-int v12, v7, v10

    mul-int/lit8 v13, v8, 0x4

    add-int/2addr v12, v13

    mul-int/lit8 v13, v11, 0x4

    add-int/2addr v13, v12

    .line 6494
    div-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x4

    add-int/lit8 v14, v12, 0x1

    .line 6498
    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    aget-byte v15, v2, v12

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    int-to-short v14, v14

    add-int/lit8 v12, v12, 0x2

    .line 6500
    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v15, 0x58

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 6501
    sget-object v15, Lcom/google/android/exoplayer2/extractor/i/a$a;->b:[I

    aget v15, v15, v12

    .line 6504
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->f:I

    mul-int v4, v4, v7

    mul-int v4, v4, v11

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x2

    and-int/lit16 v5, v14, 0xff

    int-to-byte v5, v5

    .line 6505
    aput-byte v5, v9, v4

    add-int/lit8 v5, v4, 0x1

    move/from16 p1, v4

    shr-int/lit8 v4, v14, 0x8

    int-to-byte v4, v4

    .line 6506
    aput-byte v4, v9, v5

    move/from16 v4, p1

    move/from16 v17, v6

    const/4 v5, 0x0

    :goto_4
    mul-int/lit8 v6, v10, 0x2

    if-ge v5, v6, :cond_5

    .line 6510
    div-int/lit8 v6, v5, 0x8

    .line 6511
    div-int/lit8 v18, v5, 0x2

    rem-int/lit8 v18, v18, 0x4

    mul-int v6, v6, v11

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v13

    add-int v6, v6, v18

    .line 6514
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 6515
    rem-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_3

    and-int/lit8 v6, v6, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v6, v6, 0x4

    :goto_5
    and-int/lit8 v18, v6, 0x7

    mul-int/lit8 v18, v18, 0x2

    const/16 v16, 0x1

    add-int/lit8 v18, v18, 0x1

    mul-int v18, v18, v15

    shr-int/lit8 v15, v18, 0x3

    and-int/lit8 v18, v6, 0x8

    if-eqz v18, :cond_4

    neg-int v15, v15

    :cond_4
    add-int/2addr v14, v15

    const/16 v15, -0x8000

    move-object/from16 v18, v2

    const/16 v2, 0x7fff

    .line 6529
    invoke-static {v14, v15, v2}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v14

    mul-int/lit8 v2, v11, 0x2

    add-int/2addr v4, v2

    and-int/lit16 v2, v14, 0xff

    int-to-byte v2, v2

    .line 6533
    aput-byte v2, v9, v4

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v15, v14, 0x8

    int-to-byte v15, v15

    .line 6534
    aput-byte v15, v9, v2

    .line 6536
    sget-object v2, Lcom/google/android/exoplayer2/extractor/i/a$a;->a:[I

    aget v2, v2, v6

    add-int/2addr v12, v2

    .line 6537
    sget-object v2, Lcom/google/android/exoplayer2/extractor/i/a$a;->b:[I

    array-length v6, v2

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    const/4 v15, 0x0

    invoke-static {v12, v15, v6}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v12

    .line 6538
    aget v15, v2, v12

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v18

    goto :goto_4

    :cond_5
    move-object/from16 v18, v2

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v17

    goto/16 :goto_3

    :cond_6
    move-object/from16 v18, v2

    move/from16 v17, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v6

    .line 5474
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->f:I

    mul-int v2, v2, v1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/i/a$a;->c(I)I

    move-result v2

    const/4 v4, 0x0

    .line 5475
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 5476
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 424
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->e:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    mul-int v1, v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->k:I

    .line 427
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->h:Lcom/google/android/exoplayer2/util/u;

    .line 7127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 428
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->d:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->h:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 429
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    .line 432
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/i/a$a;->b(I)I

    move-result v1

    .line 433
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->i:I

    if-lt v1, v2, :cond_9

    .line 434
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/extractor/i/a$a;->a(I)V

    goto :goto_6

    :cond_8
    move/from16 v17, v6

    :cond_9
    :goto_6
    if-eqz v17, :cond_a

    .line 440
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$a;->m:I

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/i/a$a;->b(I)I

    move-result v1

    if-lez v1, :cond_a

    .line 442
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/i/a$a;->a(I)V

    :cond_a
    return v17
.end method
