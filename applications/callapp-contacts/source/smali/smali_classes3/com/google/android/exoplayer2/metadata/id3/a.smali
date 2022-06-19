.class public final Lcom/google/android/exoplayer2/metadata/id3/a;
.super Lcom/google/android/exoplayer2/metadata/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/metadata/id3/a$b;,
        Lcom/google/android/exoplayer2/metadata/id3/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/metadata/id3/a$a;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/metadata/id3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/google/android/exoplayer2/metadata/id3/-$$Lambda$a$BoRSc8ryhYVTmLVXoM1YBDgL3Vs;->INSTANCE:Lcom/google/android/exoplayer2/metadata/id3/-$$Lambda$a$BoRSc8ryhYVTmLVXoM1YBDgL3Vs;

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/a;->a:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/a;-><init>(Lcom/google/android/exoplayer2/metadata/id3/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/a$a;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/a;->b:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    return-void
.end method

.method private static a([BII)I
    .locals 1

    .line 765
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 774
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 777
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result p1

    goto :goto_0

    .line 780
    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 13144
    iget v1, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 13169
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 604
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v2

    .line 605
    new-instance v4, Ljava/lang/String;

    .line 14169
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    .line 607
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 608
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 610
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v5

    .line 611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v6

    .line 612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    const-wide v9, 0xffffffffL

    cmp-long v11, v2, v9

    if-nez v11, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    move-wide v11, v2

    .line 616
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v2

    cmp-long v13, v2, v9

    if-nez v13, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v2

    .line 621
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 15144
    :cond_2
    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 624
    invoke-static {v3, p0, v7, v8, v13}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/u;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 627
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 631
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 632
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-object v3, v1

    move-wide v7, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static a(ILcom/google/android/exoplayer2/util/u;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 19

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v8

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v9

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v10

    const/4 v11, 0x3

    if-lt v0, v11, :cond_0

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v1

    if-nez p2, :cond_1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_1
    :goto_1
    move v15, v1

    goto :goto_2

    :cond_2
    if-ne v0, v11, :cond_3

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v1

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v11, :cond_4

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/4 v5, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 10127
    iget v0, v7, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 304
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-object v5

    .line 10144
    :cond_5
    iget v1, v7, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int v4, v1, v15

    .line 11127
    iget v1, v7, Lcom/google/android/exoplayer2/util/u;->c:I

    const-string v3, "Id3Decoder"

    if-le v4, v1, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    .line 310
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12127
    iget v0, v7, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 311
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-object v5

    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v1, p4

    move/from16 v2, p0

    move-object/from16 v16, v3

    move v3, v8

    move v12, v4

    move v4, v9

    move-object v14, v5

    move v5, v10

    move/from16 v17, v6

    move v6, v13

    .line 316
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/a$a;->evaluate(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 318
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-object v14

    :cond_7
    move-object/from16 v16, v3

    move v12, v4

    move-object v14, v5

    move/from16 v17, v6

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v11, :cond_c

    move/from16 v2, v17

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move v5, v4

    const/4 v6, 0x0

    move v4, v3

    goto :goto_b

    :cond_c
    move/from16 v2, v17

    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    move v2, v3

    const/4 v3, 0x1

    goto :goto_b

    :cond_11
    move v2, v3

    const/4 v3, 0x0

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    if-nez v4, :cond_2f

    if-eqz v5, :cond_13

    goto/16 :goto_19

    :cond_13
    if-eqz v2, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 350
    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :cond_14
    if-eqz v3, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v2, 0x4

    .line 354
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    :cond_15
    if-eqz v6, :cond_16

    .line 357
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/u;I)I

    move-result v15

    :cond_16
    const/16 v2, 0x54

    const/16 v3, 0x58

    const/4 v4, 0x2

    if-ne v8, v2, :cond_19

    if-ne v9, v3, :cond_19

    if-ne v10, v3, :cond_19

    if-eq v0, v4, :cond_17

    if-ne v13, v3, :cond_19

    :cond_17
    if-gtz v15, :cond_18

    :goto_c
    move-object v5, v14

    goto :goto_d

    .line 12419
    :cond_18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 12420
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12422
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 12423
    invoke-virtual {v7, v4, v5, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12425
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12426
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12428
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 12429
    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v1

    .line 12430
    invoke-static {v4, v3, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12432
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v2, "TXXX"

    invoke-direct {v5, v2, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_19
    if-ne v8, v2, :cond_1b

    .line 366
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    if-gtz v15, :cond_1a

    goto :goto_c

    .line 12443
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 12444
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v15, -0x1

    .line 12446
    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 12447
    invoke-virtual {v7, v5, v6, v4}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12449
    invoke-static {v5, v6, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v2

    .line 12450
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12452
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v5, v1, v14, v4}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_d
    move/from16 v18, v12

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    :goto_e
    move v2, v12

    goto/16 :goto_18

    :catch_0
    :goto_f
    move v2, v12

    move-object/from16 v1, v16

    goto/16 :goto_17

    :cond_1b
    const/16 v5, 0x57

    const-string v6, "ISO-8859-1"

    if-ne v8, v5, :cond_1e

    if-ne v9, v3, :cond_1e

    if-ne v10, v3, :cond_1e

    if-eq v0, v4, :cond_1c

    if-ne v13, v3, :cond_1e

    :cond_1c
    if-gtz v15, :cond_1d

    goto :goto_c

    .line 12463
    :cond_1d
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 12464
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12466
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 12467
    invoke-virtual {v7, v4, v5, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12469
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12470
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12472
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v1

    add-int/2addr v3, v1

    .line 12473
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v1

    .line 12474
    invoke-static {v4, v3, v1, v6}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12476
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string v2, "WXXX"

    invoke-direct {v5, v2, v11, v1}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1e
    if-ne v8, v5, :cond_1f

    .line 372
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 12481
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12482
    invoke-virtual {v7, v2, v3, v15}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12484
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v4

    .line 12485
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12487
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    invoke-direct {v2, v1, v14, v5}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    move-object v5, v2

    goto :goto_d

    :cond_1f
    const/16 v3, 0x49

    const/16 v5, 0x50

    if-ne v8, v5, :cond_20

    const/16 v14, 0x52

    if-ne v9, v14, :cond_20

    if-ne v10, v3, :cond_20

    const/16 v14, 0x56

    if-ne v13, v14, :cond_20

    .line 12492
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12493
    invoke-virtual {v7, v2, v3, v15}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12495
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v4

    .line 12496
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v4, v1

    .line 12499
    invoke-static {v2, v4, v15}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BII)[B

    move-result-object v1

    .line 12501
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v2, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    goto :goto_10

    :cond_20
    const/16 v14, 0x47

    const/16 v2, 0x4f

    if-ne v8, v14, :cond_22

    const/16 v14, 0x45

    if-ne v9, v14, :cond_22

    if-ne v10, v2, :cond_22

    const/16 v14, 0x42

    if-eq v13, v14, :cond_21

    if-ne v0, v4, :cond_22

    .line 12506
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 12507
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v15, -0x1

    .line 12509
    new-array v5, v4, [B

    const/4 v11, 0x0

    .line 12510
    invoke-virtual {v7, v5, v11, v4}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12512
    invoke-static {v5, v11}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v14

    .line 12513
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v11, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v6, 0x1

    add-int/2addr v14, v6

    .line 12516
    invoke-static {v5, v14, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v6

    .line 12517
    invoke-static {v5, v14, v6, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12519
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v14

    add-int/2addr v6, v14

    .line 12520
    invoke-static {v5, v6, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v14

    .line 12522
    invoke-static {v5, v6, v14, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12524
    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v2

    add-int/2addr v14, v2

    .line 12525
    invoke-static {v5, v14, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BII)[B

    move-result-object v2

    .line 12527
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v5, v1, v11, v3, v2}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d

    :cond_22
    const/16 v1, 0x41

    const/16 v14, 0x43

    if-ne v0, v4, :cond_23

    if-ne v8, v5, :cond_27

    if-ne v9, v3, :cond_27

    if-ne v10, v14, :cond_27

    goto :goto_11

    :cond_23
    if-ne v8, v1, :cond_27

    if-ne v9, v5, :cond_27

    if-ne v10, v3, :cond_27

    if-ne v13, v14, :cond_27

    .line 12532
    :goto_11
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 12533
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12535
    new-array v5, v3, [B

    const/4 v14, 0x0

    .line 12536
    invoke-virtual {v7, v5, v14, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v4, :cond_25

    .line 12542
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v4, "image/"

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v18, v12

    const/4 v12, 0x0

    :try_start_4
    invoke-direct {v4, v5, v12, v11, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "image/jpg"

    .line 12543
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-string v4, "image/jpeg"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_24
    const/4 v11, 0x2

    goto :goto_12

    :cond_25
    move/from16 v18, v12

    const/4 v4, 0x0

    .line 12547
    :try_start_5
    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v11

    .line 12548
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5, v4, v11, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2f

    .line 12549
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v12, -0x1

    if-ne v6, v12, :cond_26

    :try_start_6
    const-string v6, "image/"

    .line 12550
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_26
    :goto_12
    add-int/lit8 v6, v11, 0x1

    .line 12554
    :try_start_7
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v12, 0x2

    add-int/2addr v11, v12

    .line 12557
    invoke-static {v5, v11, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v12

    .line 12558
    new-instance v14, Ljava/lang/String;

    sub-int v7, v12, v11

    invoke-direct {v14, v5, v11, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12561
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v1

    add-int/2addr v12, v1

    .line 12562
    invoke-static {v5, v12, v3}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BII)[B

    move-result-object v1

    .line 12564
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v5, v4, v14, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object/from16 v7, p1

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_e

    :catch_1
    move-object/from16 v7, p1

    goto/16 :goto_f

    :cond_27
    move/from16 v18, v12

    const/16 v3, 0x4d

    if-ne v8, v14, :cond_2a

    if-ne v9, v2, :cond_2a

    if-ne v10, v3, :cond_2a

    if-eq v13, v3, :cond_28

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2a

    :cond_28
    const/4 v1, 0x4

    if-ge v15, v1, :cond_29

    move-object/from16 v7, p1

    const/4 v5, 0x0

    goto/16 :goto_13

    .line 12575
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 12576
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v7, p1

    const/4 v4, 0x0

    .line 12579
    :try_start_8
    invoke-virtual {v7, v3, v4, v11}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12580
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v11}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v3, v15, -0x4

    .line 12582
    new-array v6, v3, [B

    .line 12583
    invoke-virtual {v7, v6, v4, v3}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12585
    invoke-static {v6, v4, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12586
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v6, v4, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12588
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 12589
    invoke-static {v6, v3, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BII)I

    move-result v1

    .line 12590
    invoke-static {v6, v3, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12592
    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v2, v5, v11, v1}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v2

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_14

    :catch_2
    move-object/from16 v7, p1

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v7, p1

    if-ne v8, v14, :cond_2b

    const/16 v4, 0x48

    if-ne v9, v4, :cond_2b

    if-ne v10, v1, :cond_2b

    if-ne v13, v5, :cond_2b

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 386
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/u;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v5

    goto :goto_13

    :cond_2b
    if-ne v8, v14, :cond_2c

    const/16 v1, 0x54

    if-ne v9, v1, :cond_2c

    if-ne v10, v2, :cond_2c

    if-ne v13, v14, :cond_2c

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 389
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/u;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v5

    goto :goto_13

    :cond_2c
    if-ne v8, v3, :cond_2d

    const/16 v1, 0x4c

    if-ne v9, v1, :cond_2d

    if-ne v10, v1, :cond_2d

    const/16 v1, 0x54

    if-ne v13, v1, :cond_2d

    .line 392
    invoke-static {v7, v15}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/u;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    move-result-object v5

    goto :goto_13

    .line 394
    :cond_2d
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 12711
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12712
    invoke-virtual {v7, v2, v3, v15}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 12714
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v5, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    :goto_13
    if-nez v5, :cond_2e

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode frame: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v1, v16

    .line 398
    :try_start_9
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_16

    :catchall_3
    move-exception v0

    :goto_14
    move/from16 v2, v18

    goto :goto_18

    :catch_3
    :goto_15
    move-object/from16 v1, v16

    :catch_4
    move/from16 v2, v18

    goto :goto_17

    :cond_2e
    :goto_16
    move/from16 v2, v18

    .line 407
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-object v5

    :goto_17
    :try_start_a
    const-string v0, "Unsupported character encoding"

    .line 404
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 407
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v0, 0x0

    return-object v0

    :catchall_4
    move-exception v0

    :goto_18
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 408
    throw v0

    :cond_2f
    :goto_19
    move v2, v12

    move-object v0, v14

    move-object/from16 v1, v16

    const-string v3, "Skipping unsupported compressed or encrypted frame"

    .line 343
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;I)Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;
    .locals 10

    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v2

    .line 683
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v3

    .line 684
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 685
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    .line 687
    new-instance v5, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/util/t;-><init>()V

    .line 21169
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 22127
    iget v7, p0, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 21077
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/util/t;->a([BI)V

    .line 22144
    iget p0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    mul-int/lit8 p0, p0, 0x8

    .line 21078
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 691
    div-int/2addr p1, p0

    .line 692
    new-array p0, p1, [I

    .line 693
    new-array v6, p1, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_0

    .line 695
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    .line 696
    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    .line 697
    aput v8, p0, v7

    .line 698
    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 701
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    move-object v0, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object p1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/metadata/id3/a$b;
    .locals 9

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-string p0, "Data too short to be an ID3 tag"

    .line 163
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v0

    const v3, 0x494433

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_1

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%06X"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    .line 174
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v3

    .line 176
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v0, v7, :cond_3

    and-int/lit8 p0, v3, 0x40

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_9

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 181
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    .line 188
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    add-int/2addr v1, v8

    sub-int/2addr v6, v1

    goto :goto_4

    :cond_5
    if-ne v0, v8, :cond_b

    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v1

    add-int/lit8 v2, v1, -0x4

    .line 195
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    sub-int/2addr v6, v1

    :cond_7
    and-int/lit8 p0, v3, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_9

    add-int/lit8 v6, v6, -0xa

    :cond_9
    :goto_4
    if-ge v0, v8, :cond_a

    and-int/lit16 p0, v3, 0x80

    if-eqz p0, :cond_a

    const/4 v4, 0x1

    .line 209
    :cond_a
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/a$b;

    invoke-direct {p0, v0, v4, v6}, Lcom/google/android/exoplayer2/metadata/id3/a$b;-><init>(IZI)V

    return-object p0

    .line 203
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static a(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 760
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 761
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    .line 826
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 829
    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 9144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 216
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v8

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v10

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v7

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    .line 271
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :goto_5
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x4

    :cond_9
    int-to-long v3, v3

    cmp-long v7, v8, v3

    if-gez v7, :cond_a

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v6

    .line 263
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_b

    .line 271
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v6

    :cond_b
    long-to-int v3, v8

    .line 266
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 271
    :cond_c
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 272
    throw v0
.end method

.method private static b(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;I)I
    .locals 5

    .line 22169
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 23144
    iget p0, p0, Lcom/google/android/exoplayer2/util/u;->b:I

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    .line 729
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p0

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    .line 731
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static b([BI)I
    .locals 1

    .line 784
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 785
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 789
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;IIZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 16144
    iget v1, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 16169
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 644
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v2

    .line 645
    new-instance v3, Ljava/lang/String;

    .line 17169
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    .line 647
    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 648
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 654
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v8

    .line 655
    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_2

    .line 18144
    iget v11, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 18169
    iget-object v12, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 658
    invoke-static {v12, v11}, Lcom/google/android/exoplayer2/metadata/id3/a;->b([BI)I

    move-result v12

    .line 659
    new-instance v13, Ljava/lang/String;

    .line 19169
    iget-object v14, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    sub-int v15, v12, v11

    .line 659
    invoke-direct {v13, v14, v11, v15, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v13, v9, v10

    add-int/2addr v12, v4

    .line 660
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 663
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 20144
    :cond_3
    :goto_3
    iget v6, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    if-ge v6, v1, :cond_4

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 668
    invoke-static {v6, v0, v8, v10, v11}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/u;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 671
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array v0, v7, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 675
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    .line 676
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-object/from16 p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static synthetic b(IIIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static b([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 808
    sget-object p0, Lcom/google/android/exoplayer2/util/af;->f:[B

    return-object p0

    .line 810
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$BoRSc8ryhYVTmLVXoM1YBDgL3Vs(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(IIIII)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/metadata/c;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 100
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public final a([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    .line 116
    invoke-static {v1}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/metadata/id3/a$b;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1144
    :cond_0
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 1832
    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 2832
    :goto_0
    iget v4, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->c:I

    .line 3832
    iget-boolean v5, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->b:Z

    if-eqz v5, :cond_2

    .line 4832
    iget v4, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->c:I

    .line 125
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->b(Lcom/google/android/exoplayer2/util/u;I)I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 5832
    iget v2, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a:I

    const/4 v4, 0x0

    .line 130
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/u;IIZ)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4

    .line 6832
    iget v2, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 131
    invoke-static {v1, v4, v3, v5}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(Lcom/google/android/exoplayer2/util/u;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to validate ID3 tag with majorVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7832
    iget p1, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a:I

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 139
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    if-lt p2, v3, :cond_5

    .line 8832
    iget p2, p1, Lcom/google/android/exoplayer2/metadata/id3/a$b;->a:I

    .line 143
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/a;->b:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    .line 142
    invoke-static {p2, v1, v4, v3, v2}, Lcom/google/android/exoplayer2/metadata/id3/a;->a(ILcom/google/android/exoplayer2/util/u;ZILcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 149
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p1
.end method
