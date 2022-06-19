.class public final Landroidx/media2/exoplayer/external/metadata/id3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/id3/a$b;,
        Landroidx/media2/exoplayer/external/metadata/id3/a$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/metadata/id3/a$a;


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Landroidx/media2/exoplayer/external/metadata/id3/b;->a:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/a;->a:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/a;-><init>(Landroidx/media2/exoplayer/external/metadata/id3/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/metadata/id3/a$a;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/a;->b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    return-void
.end method

.method private static a([BII)I
    .locals 1

    .line 761
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 769
    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 770
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 773
    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result p1

    goto :goto_0

    .line 776
    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;IIZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 13142
    iget v1, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 602
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v2

    .line 603
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 605
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 607
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    .line 608
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v6

    .line 609
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v2

    const-wide/16 v7, -0x1

    const-wide v9, 0xffffffffL

    cmp-long v11, v2, v9

    if-nez v11, :cond_0

    move-wide v11, v7

    goto :goto_0

    :cond_0
    move-wide v11, v2

    .line 613
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v2

    cmp-long v13, v2, v9

    if-nez v13, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    move-wide v9, v2

    .line 618
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 14142
    :cond_2
    :goto_2
    iget v3, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    .line 621
    invoke-static {v3, p0, v7, v8, v13}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(ILandroidx/media2/exoplayer/external/util/p;ZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 624
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 628
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 629
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 630
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-object v3, v1

    move-wide v7, v11

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static a(ILandroidx/media2/exoplayer/external/util/p;ZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 19

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v9

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v10

    const/4 v11, 0x3

    if-lt v0, v11, :cond_0

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

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

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v1

    goto :goto_1

    .line 299
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v11, :cond_4

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->d()I

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

    .line 10125
    iget v0, v7, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 306
    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-object v5

    .line 10142
    :cond_5
    iget v1, v7, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int v4, v1, v15

    .line 11125
    iget v1, v7, Landroidx/media2/exoplayer/external/util/p;->c:I

    const-string v3, "Id3Decoder"

    if-le v4, v1, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    .line 312
    invoke-static {v3, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12125
    iget v0, v7, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 313
    invoke-virtual {v7, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

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

    .line 318
    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/a$a;->a(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 320
    invoke-virtual {v7, v12}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

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
    if-nez v4, :cond_31

    if-eqz v5, :cond_13

    goto/16 :goto_1a

    :cond_13
    if-eqz v2, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 352
    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :cond_14
    if-eqz v3, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v2, 0x4

    .line 356
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :cond_15
    if-eqz v6, :cond_16

    .line 359
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(Landroidx/media2/exoplayer/external/util/p;I)I

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

    .line 12420
    :cond_18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 12421
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12423
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 12424
    invoke-virtual {v7, v4, v5, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12426
    invoke-static {v4, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12427
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12429
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 12430
    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v1

    .line 12431
    invoke-static {v4, v3, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12433
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    const-string v2, "TXXX"

    invoke-direct {v5, v2, v6, v1}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_19
    if-ne v8, v2, :cond_1b

    .line 368
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    if-gtz v15, :cond_1a

    goto :goto_c

    .line 12443
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 12444
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v15, -0x1

    .line 12446
    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 12447
    invoke-virtual {v7, v5, v6, v4}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12449
    invoke-static {v5, v6, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v2

    .line 12450
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v6, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12452
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {v5, v1, v14, v4}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_d
    move/from16 v18, v12

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    :goto_e
    move v2, v12

    goto/16 :goto_19

    :catch_0
    :goto_f
    move v2, v12

    move-object/from16 v1, v16

    goto/16 :goto_18

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

    .line 12462
    :cond_1d
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 12463
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12465
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 12466
    invoke-virtual {v7, v4, v5, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12468
    invoke-static {v4, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12469
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12471
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v1

    add-int/2addr v3, v1

    .line 12472
    invoke-static {v4, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v1

    .line 12473
    invoke-static {v4, v3, v1, v6}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12475
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    const-string v2, "WXXX"

    invoke-direct {v5, v2, v11, v1}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1e
    if-ne v8, v5, :cond_1f

    .line 374
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 12480
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12481
    invoke-virtual {v7, v2, v3, v15}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12483
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v4

    .line 12484
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12486
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;

    invoke-direct {v2, v1, v14, v5}, Landroidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 12491
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12492
    invoke-virtual {v7, v2, v3, v15}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12494
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v4

    .line 12495
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v4, v1

    .line 12498
    invoke-static {v2, v4, v15}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BII)[B

    move-result-object v1

    .line 12500
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    invoke-direct {v2, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

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

    .line 12505
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 12506
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v15, -0x1

    .line 12508
    new-array v5, v4, [B

    const/4 v11, 0x0

    .line 12509
    invoke-virtual {v7, v5, v11, v4}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12511
    invoke-static {v5, v11}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v14

    .line 12512
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v11, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v6, 0x1

    add-int/2addr v14, v6

    .line 12515
    invoke-static {v5, v14, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v6

    .line 12516
    invoke-static {v5, v14, v6, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12518
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v14

    add-int/2addr v6, v14

    .line 12519
    invoke-static {v5, v6, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v14

    .line 12521
    invoke-static {v5, v6, v14, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12523
    invoke-static {v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v2

    add-int/2addr v14, v2

    .line 12524
    invoke-static {v5, v14, v4}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BII)[B

    move-result-object v2

    .line 12526
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;

    invoke-direct {v5, v1, v11, v3, v2}, Landroidx/media2/exoplayer/external/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_d

    :cond_22
    const/16 v1, 0x41

    const/16 v14, 0x43

    if-ne v0, v4, :cond_23

    if-ne v8, v5, :cond_29

    if-ne v9, v3, :cond_29

    if-ne v10, v14, :cond_29

    goto :goto_11

    :cond_23
    if-ne v8, v1, :cond_29

    if-ne v9, v5, :cond_29

    if-ne v10, v3, :cond_29

    if-ne v13, v14, :cond_29

    .line 12531
    :goto_11
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 12532
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v15, -0x1

    .line 12534
    new-array v5, v3, [B

    const/4 v14, 0x0

    .line 12535
    invoke-virtual {v7, v5, v14, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v4, :cond_26

    :try_start_3
    const-string v4, "image/"

    .line 12541
    new-instance v11, Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v18, v12

    const/4 v12, 0x3

    :try_start_4
    invoke-direct {v11, v5, v14, v12, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_24

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_24
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    :goto_12
    const-string v6, "image/jpg"

    .line 12542
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v4, "image/jpeg"
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_25
    const/4 v11, 0x2

    goto :goto_13

    :cond_26
    move/from16 v18, v12

    const/4 v4, 0x0

    .line 12546
    :try_start_5
    invoke-static {v5, v4}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v11

    .line 12547
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v5, v4, v11, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v12}, Landroidx/media2/exoplayer/external/util/ac;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2f

    .line 12548
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v12, -0x1

    if-ne v6, v12, :cond_28

    :try_start_6
    const-string v6, "image/"

    .line 12549
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_27

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_28
    :goto_13
    add-int/lit8 v6, v11, 0x1

    .line 12553
    :try_start_7
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/4 v12, 0x2

    add-int/2addr v11, v12

    .line 12556
    invoke-static {v5, v11, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v12

    .line 12557
    new-instance v14, Ljava/lang/String;

    sub-int v7, v12, v11

    invoke-direct {v14, v5, v11, v7, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12560
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v1

    add-int/2addr v12, v1

    .line 12561
    invoke-static {v5, v12, v3}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BII)[B

    move-result-object v1

    .line 12563
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    invoke-direct {v5, v4, v14, v6, v1}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object/from16 v7, p1

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_e

    :catch_1
    move-object/from16 v7, p1

    goto/16 :goto_f

    :cond_29
    move/from16 v18, v12

    const/16 v3, 0x4d

    if-ne v8, v14, :cond_2c

    if-ne v9, v2, :cond_2c

    if-ne v10, v3, :cond_2c

    if-eq v13, v3, :cond_2a

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2c

    :cond_2a
    const/4 v1, 0x4

    if-ge v15, v1, :cond_2b

    move-object/from16 v7, p1

    const/4 v5, 0x0

    goto/16 :goto_14

    .line 12573
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    .line 12574
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v7, p1

    const/4 v5, 0x0

    .line 12577
    :try_start_8
    invoke-virtual {v7, v4, v5, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12578
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v3, v15, -0x4

    .line 12580
    new-array v4, v3, [B

    .line 12581
    invoke-virtual {v7, v4, v5, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12583
    invoke-static {v4, v5, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v3

    .line 12584
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v5, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 12586
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 12587
    invoke-static {v4, v3, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BII)I

    move-result v1

    .line 12588
    invoke-static {v4, v3, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12590
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    invoke-direct {v5, v6, v11, v1}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    goto/16 :goto_15

    :catch_2
    move-object/from16 v7, p1

    goto/16 :goto_16

    :cond_2c
    move-object/from16 v7, p1

    if-ne v8, v14, :cond_2d

    const/16 v4, 0x48

    if-ne v9, v4, :cond_2d

    if-ne v10, v1, :cond_2d

    if-ne v13, v5, :cond_2d

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 388
    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(Landroidx/media2/exoplayer/external/util/p;IIZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    move-result-object v5

    goto :goto_14

    :cond_2d
    if-ne v8, v14, :cond_2e

    const/16 v1, 0x54

    if-ne v9, v1, :cond_2e

    if-ne v10, v2, :cond_2e

    if-ne v13, v14, :cond_2e

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 391
    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(Landroidx/media2/exoplayer/external/util/p;IIZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-result-object v5

    goto :goto_14

    :cond_2e
    if-ne v8, v3, :cond_2f

    const/16 v1, 0x4c

    if-ne v9, v1, :cond_2f

    if-ne v10, v1, :cond_2f

    const/16 v1, 0x54

    if-ne v13, v1, :cond_2f

    .line 394
    invoke-static {v7, v15}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(Landroidx/media2/exoplayer/external/util/p;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-result-object v5

    goto :goto_14

    .line 396
    :cond_2f
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 12707
    new-array v2, v15, [B

    const/4 v3, 0x0

    .line 12708
    invoke-virtual {v7, v2, v3, v15}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 12710
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;

    invoke-direct {v5, v1, v2}, Landroidx/media2/exoplayer/external/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    :goto_14
    if-nez v5, :cond_30

    .line 401
    invoke-static {v0, v8, v9, v10, v13}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to decode frame: id="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v1, v16

    .line 400
    :try_start_9
    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_17

    :catchall_3
    move-exception v0

    :goto_15
    move/from16 v2, v18

    goto :goto_19

    :catch_3
    :goto_16
    move-object/from16 v1, v16

    :catch_4
    move/from16 v2, v18

    goto :goto_18

    :cond_30
    :goto_17
    move/from16 v2, v18

    .line 409
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-object v5

    :goto_18
    :try_start_a
    const-string v0, "Unsupported character encoding"

    .line 406
    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 409
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    const/4 v0, 0x0

    return-object v0

    :catchall_4
    move-exception v0

    :goto_19
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    throw v0

    :cond_31
    :goto_1a
    move v2, v12

    move-object v0, v14

    move-object/from16 v1, v16

    const-string v3, "Skipping unsupported compressed or encrypted frame"

    .line 345
    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-object v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;I)Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;
    .locals 10

    .line 677
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    .line 678
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v2

    .line 679
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v3

    .line 680
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    .line 681
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    .line 683
    new-instance v5, Landroidx/media2/exoplayer/external/util/o;

    invoke-direct {v5}, Landroidx/media2/exoplayer/external/util/o;-><init>()V

    .line 18078
    iget-object v6, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 18125
    iget v7, p0, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 18078
    invoke-virtual {v5, v6, v7}, Landroidx/media2/exoplayer/external/util/o;->a([BI)V

    .line 18142
    iget p0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    mul-int/lit8 p0, p0, 0x8

    .line 18079
    invoke-virtual {v5, p0}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 687
    div-int/2addr p1, p0

    .line 688
    new-array p0, p1, [I

    .line 689
    new-array v6, p1, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_0

    .line 691
    invoke-virtual {v5, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v8

    .line 692
    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    .line 693
    aput v8, p0, v7

    .line 694
    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 697
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    move-object v0, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object p1
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/id3/a$b;
    .locals 9

    .line 165
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-string p0, "Data too short to be an ID3 tag"

    .line 166
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v0

    const v3, 0x494433

    if-eq v0, v3, :cond_1

    const/16 p0, 0x3b

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    const/4 v3, 0x1

    .line 177
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 178
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    .line 179
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v0, v6, :cond_3

    and-int/lit8 p0, v4, 0x40

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_9

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 184
    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    .line 190
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 191
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    add-int/2addr v1, v7

    sub-int/2addr v5, v1

    goto :goto_4

    :cond_5
    if-ne v0, v7, :cond_b

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_7

    .line 197
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v1

    add-int/lit8 v2, v1, -0x4

    .line 198
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    sub-int/2addr v5, v1

    :cond_7
    and-int/lit8 p0, v4, 0x10

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_9

    add-int/lit8 v5, v5, -0xa

    :cond_9
    :goto_4
    if-ge v0, v7, :cond_a

    and-int/lit16 p0, v4, 0x80

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 212
    :goto_5
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/id3/a$b;

    invoke-direct {p0, v0, v3, v5}, Landroidx/media2/exoplayer/external/metadata/id3/a$b;-><init>(IZI)V

    return-object p0

    :cond_b
    const/16 p0, 0x39

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 756
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

    .line 757
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

    .line 822
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 825
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

.method static final synthetic a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 9142
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 219
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v8

    .line 227
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v10

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v7

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->f()I

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

    .line 274
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

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

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v6

    .line 266
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_b

    .line 274
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v6

    :cond_b
    long-to-int v3, v8

    .line 269
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 274
    :cond_c
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

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

.method private static b(Landroidx/media2/exoplayer/external/util/p;I)I
    .locals 5

    .line 722
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 19142
    iget p0, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    .line 725
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

    .line 727
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

    .line 780
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 781
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 785
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;IIZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 15142
    iget v1, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 642
    iget-object v2, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v2, v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v2

    .line 643
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 645
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 647
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

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

    .line 651
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    .line 652
    new-array v9, v8, [Ljava/lang/String;

    :goto_2
    if-ge v7, v8, :cond_2

    .line 16142
    iget v10, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 655
    iget-object v11, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-static {v11, v10}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b([BI)I

    move-result v11

    .line 656
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    sub-int v14, v11, v10

    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v9, v7

    add-int/2addr v11, v4

    .line 657
    invoke-virtual {p0, v11}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 660
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 17142
    :cond_3
    :goto_3
    iget v6, v0, Landroidx/media2/exoplayer/external/util/p;->b:I

    if-ge v6, v1, :cond_4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 663
    invoke-static {v6, p0, v7, v8, v10}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(ILandroidx/media2/exoplayer/external/util/p;ZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 666
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 670
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 671
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 672
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;

    move-object p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V

    return-object v1
.end method

.method private static b([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 804
    sget-object p0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    return-object p0

    .line 806
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/metadata/c;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 1

    .line 109
    iget-object p1, p1, Landroidx/media2/exoplayer/external/metadata/c;->c:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public final a([BI)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 6

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    .line 126
    invoke-static {v1}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/metadata/id3/a$b;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 1142
    :cond_0
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 1828
    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 2828
    :goto_0
    iget v4, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->c:I

    .line 3828
    iget-boolean v5, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->b:Z

    if-eqz v5, :cond_2

    .line 4828
    iget v4, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->c:I

    .line 135
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/metadata/id3/a;->b(Landroidx/media2/exoplayer/external/util/p;I)I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 137
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 5828
    iget v2, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->a:I

    const/4 v4, 0x0

    .line 140
    invoke-static {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(Landroidx/media2/exoplayer/external/util/p;IIZ)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4

    .line 6828
    iget v2, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->a:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 141
    invoke-static {v1, v4, v3, v5}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(Landroidx/media2/exoplayer/external/util/p;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    .line 7828
    :cond_3
    iget p1, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->a:I

    const/16 v0, 0x38

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 149
    :cond_4
    :goto_1
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    if-lt p2, v3, :cond_5

    .line 8828
    iget p2, p1, Landroidx/media2/exoplayer/external/metadata/id3/a$b;->a:I

    .line 150
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/a;->b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    invoke-static {p2, v1, v4, v3, v2}, Landroidx/media2/exoplayer/external/metadata/id3/a;->a(ILandroidx/media2/exoplayer/external/util/p;ZILandroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 153
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_5
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p1
.end method
