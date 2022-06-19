.class public final Lcom/google/zxing/e/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/e/b/c;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 2

    .line 200
    sget-object v0, Lcom/google/zxing/e/b/c;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 201
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;Lcom/google/zxing/e/b/b;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p3

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_e

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 269
    invoke-static {v5, v6, v7, v4, v0}, Lcom/google/zxing/e/b/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;ILcom/google/zxing/e/b/b;)V

    const/4 v8, 0x1

    .line 10041
    invoke-static {v0, v8}, Lcom/google/zxing/e/b/d;->a(Lcom/google/zxing/e/b/b;Z)I

    move-result v9

    invoke-static {v0, v1}, Lcom/google/zxing/e/b/d;->a(Lcom/google/zxing/e/b/b;Z)I

    move-result v10

    add-int/2addr v9, v10

    .line 11055
    iget-object v10, v0, Lcom/google/zxing/e/b/b;->a:[[B

    .line 12044
    iget v11, v0, Lcom/google/zxing/e/b/b;->b:I

    .line 13040
    iget v12, v0, Lcom/google/zxing/e/b/b;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    add-int/lit8 v15, v12, -0x1

    if-ge v13, v15, :cond_2

    .line 10055
    aget-object v15, v10, v13

    :goto_2
    add-int/lit8 v5, v11, -0x1

    if-ge v1, v5, :cond_1

    .line 10057
    aget-byte v5, v15, v1

    add-int/lit8 v16, v1, 0x1

    .line 10058
    aget-byte v8, v15, v16

    if-ne v5, v8, :cond_0

    add-int/lit8 v8, v13, 0x1

    aget-object v17, v10, v8

    aget-byte v1, v17, v1

    if-ne v5, v1, :cond_0

    aget-object v1, v10, v8

    aget-byte v1, v1, v16

    if-ne v5, v1, :cond_0

    add-int/lit8 v14, v14, 0x1

    :cond_0
    move/from16 v1, v16

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p0

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v14, v14, 0x3

    add-int/2addr v9, v14

    .line 14055
    iget-object v1, v0, Lcom/google/zxing/e/b/b;->a:[[B

    .line 15044
    iget v5, v0, Lcom/google/zxing/e/b/b;->b:I

    .line 16040
    iget v8, v0, Lcom/google/zxing/e/b/b;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v10, v8, :cond_9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v5, :cond_8

    .line 13078
    aget-object v13, v1, v10

    add-int/lit8 v14, v12, 0x6

    if-ge v14, v5, :cond_4

    .line 13079
    aget-byte v15, v13, v12

    move/from16 v16, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_5

    add-int/lit8 v15, v12, 0x1

    aget-byte v15, v13, v15

    if-nez v15, :cond_5

    add-int/lit8 v15, v12, 0x2

    aget-byte v15, v13, v15

    if-ne v15, v5, :cond_5

    add-int/lit8 v15, v12, 0x3

    aget-byte v15, v13, v15

    if-ne v15, v5, :cond_5

    add-int/lit8 v15, v12, 0x4

    aget-byte v15, v13, v15

    if-ne v15, v5, :cond_5

    add-int/lit8 v15, v12, 0x5

    aget-byte v15, v13, v15

    if-nez v15, :cond_5

    aget-byte v14, v13, v14

    if-ne v14, v5, :cond_5

    add-int/lit8 v5, v12, -0x4

    .line 13087
    invoke-static {v13, v5, v12}, Lcom/google/zxing/e/b/d;->a([BII)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v12, 0x7

    add-int/lit8 v14, v12, 0xb

    invoke-static {v13, v5, v14}, Lcom/google/zxing/e/b/d;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    move/from16 v16, v5

    :cond_5
    :goto_5
    add-int/lit8 v5, v10, 0x6

    if-ge v5, v8, :cond_7

    .line 13090
    aget-object v13, v1, v10

    aget-byte v13, v13, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    add-int/lit8 v13, v10, 0x1

    aget-object v13, v1, v13

    aget-byte v13, v13, v12

    if-nez v13, :cond_7

    add-int/lit8 v13, v10, 0x2

    aget-object v13, v1, v13

    aget-byte v13, v13, v12

    if-ne v13, v14, :cond_7

    add-int/lit8 v13, v10, 0x3

    aget-object v13, v1, v13

    aget-byte v13, v13, v12

    if-ne v13, v14, :cond_7

    add-int/lit8 v13, v10, 0x4

    aget-object v13, v1, v13

    aget-byte v13, v13, v12

    if-ne v13, v14, :cond_7

    add-int/lit8 v13, v10, 0x5

    aget-object v13, v1, v13

    aget-byte v13, v13, v12

    if-nez v13, :cond_7

    aget-object v5, v1, v5

    aget-byte v5, v5, v12

    if-ne v5, v14, :cond_7

    add-int/lit8 v5, v10, -0x4

    .line 13098
    invoke-static {v1, v12, v5, v10}, Lcom/google/zxing/e/b/d;->a([[BIII)Z

    move-result v5

    if-nez v5, :cond_6

    add-int/lit8 v5, v10, 0x7

    add-int/lit8 v13, v10, 0xb

    invoke-static {v1, v12, v5, v13}, Lcom/google/zxing/e/b/d;->a([[BIII)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    add-int/lit8 v11, v11, 0x1

    :cond_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto/16 :goto_4

    :cond_8
    move/from16 v16, v5

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_9
    mul-int/lit8 v11, v11, 0x28

    add-int/2addr v9, v11

    .line 17055
    iget-object v1, v0, Lcom/google/zxing/e/b/b;->a:[[B

    .line 18044
    iget v5, v0, Lcom/google/zxing/e/b/b;->b:I

    .line 19040
    iget v8, v0, Lcom/google/zxing/e/b/b;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v10, v8, :cond_c

    .line 16138
    aget-object v12, v1, v10

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v5, :cond_b

    .line 16140
    aget-byte v14, v12, v13

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    add-int/lit8 v11, v11, 0x1

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_b
    const/4 v15, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 20040
    :cond_c
    iget v1, v0, Lcom/google/zxing/e/b/b;->c:I

    .line 20044
    iget v5, v0, Lcom/google/zxing/e/b/b;->b:I

    mul-int v1, v1, v5

    shl-int/lit8 v5, v11, 0x1

    sub-int/2addr v5, v1

    .line 16146
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    div-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v9, v5

    if-ge v9, v2, :cond_d

    move v3, v4

    move v2, v9

    :cond_d
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    return v3
.end method

.method private static a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I
    .locals 0

    .line 8048
    iget p1, p1, Lcom/google/zxing/common/a;->b:I

    .line 192
    invoke-virtual {p0, p3}, Lcom/google/zxing/e/a/b;->getCharacterCountBits(Lcom/google/zxing/e/a/c;)I

    move-result p0

    add-int/2addr p1, p0

    .line 9048
    iget p0, p2, Lcom/google/zxing/common/a;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/a;->a()I

    move-result v3

    if-ne v3, v1, :cond_e

    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    const/4 v9, 0x1

    new-array v10, v9, [I

    new-array v9, v9, [I

    if-ge v5, v2, :cond_4

    .line 25351
    rem-int v11, v0, v2

    sub-int v12, v2, v11

    .line 25355
    div-int v13, v0, v2

    add-int/lit8 v14, v13, 0x1

    .line 25359
    div-int v15, v1, v2

    add-int/lit8 v16, v15, 0x1

    sub-int/2addr v13, v15

    sub-int v14, v14, v16

    if-ne v13, v14, :cond_3

    add-int v4, v12, v11

    if-ne v2, v4, :cond_2

    add-int v4, v15, v13

    mul-int v4, v4, v12

    add-int v17, v16, v14

    mul-int v17, v17, v11

    add-int v4, v4, v17

    if-ne v0, v4, :cond_1

    if-ge v5, v12, :cond_0

    const/4 v4, 0x0

    aput v15, v10, v4

    aput v13, v9, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    aput v16, v10, v4

    aput v14, v9, v4

    .line 423
    :goto_1
    aget v11, v10, v4

    .line 424
    new-array v12, v11, [B

    shl-int/lit8 v13, v6, 0x3

    move-object/from16 v14, p0

    .line 425
    invoke-virtual {v14, v13, v12, v11}, Lcom/google/zxing/common/a;->a(I[BI)V

    .line 426
    aget v9, v9, v4

    invoke-static {v12, v9}, Lcom/google/zxing/e/b/c;->a([BI)[B

    move-result-object v9

    .line 427
    new-instance v13, Lcom/google/zxing/e/b/a;

    invoke-direct {v13, v12, v9}, Lcom/google/zxing/e/b/a;-><init>([B[B)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 430
    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 431
    aget v9, v10, v4

    add-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25381
    :cond_1
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25373
    :cond_2
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25369
    :cond_3
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25348
    :cond_4
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x0

    if-ne v1, v6, :cond_d

    .line 437
    new-instance v1, Lcom/google/zxing/common/a;

    invoke-direct {v1}, Lcom/google/zxing/common/a;-><init>()V

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v2, v7, :cond_8

    .line 441
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/e/b/a;

    .line 26030
    iget-object v9, v9, Lcom/google/zxing/e/b/a;->a:[B

    .line 443
    array-length v10, v9

    if-ge v2, v10, :cond_6

    .line 444
    aget-byte v9, v9, v2

    invoke-virtual {v1, v9, v5}, Lcom/google/zxing/common/a;->a(II)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    if-ge v4, v8, :cond_b

    .line 450
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/e/b/a;

    .line 26034
    iget-object v6, v6, Lcom/google/zxing/e/b/a;->b:[B

    .line 452
    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 453
    aget-byte v6, v6, v4

    invoke-virtual {v1, v6, v5}, Lcom/google/zxing/common/a;->a(II)V

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 457
    :cond_b
    invoke-virtual {v1}, Lcom/google/zxing/common/a;->a()I

    move-result v2

    if-ne v0, v2, :cond_c

    return-object v1

    .line 458
    :cond_c
    new-instance v2, Lcom/google/zxing/WriterException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interleaving error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v1}, Lcom/google/zxing/common/a;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :cond_d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 281
    invoke-static {v0}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object v1

    .line 282
    invoke-static {p0, v1, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/e/a/a;Ljava/util/Map;)Lcom/google/zxing/e/b/f;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/e/a/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/e/b/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 81
    sget-object v2, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 83
    sget-object v3, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "ISO-8859-1"

    :goto_1
    const-string v4, "Shift_JIS"

    .line 1215
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    const/16 v7, 0x30

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/google/zxing/e/b/c;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1217
    sget-object v5, Lcom/google/zxing/e/a/b;->KANJI:Lcom/google/zxing/e/a/b;

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1221
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 1222
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_3

    const/16 v11, 0x39

    if-gt v10, v11, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    .line 1225
    :cond_3
    invoke-static {v10}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v8

    if-eq v8, v6, :cond_4

    const/4 v8, 0x1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1228
    :cond_4
    sget-object v5, Lcom/google/zxing/e/a/b;->BYTE:Lcom/google/zxing/e/a/b;

    goto :goto_4

    :cond_5
    if-eqz v8, :cond_6

    .line 1232
    sget-object v5, Lcom/google/zxing/e/a/b;->ALPHANUMERIC:Lcom/google/zxing/e/a/b;

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    .line 1235
    sget-object v5, Lcom/google/zxing/e/a/b;->NUMERIC:Lcom/google/zxing/e/a/b;

    goto :goto_4

    .line 1237
    :cond_7
    sget-object v5, Lcom/google/zxing/e/a/b;->BYTE:Lcom/google/zxing/e/a/b;

    .line 92
    :goto_4
    new-instance v8, Lcom/google/zxing/common/a;

    invoke-direct {v8}, Lcom/google/zxing/common/a;-><init>()V

    .line 95
    sget-object v9, Lcom/google/zxing/e/a/b;->BYTE:Lcom/google/zxing/e/a/b;

    const/16 v10, 0x8

    const/4 v11, 0x4

    if-ne v5, v9, :cond_8

    if-eqz v2, :cond_8

    .line 96
    invoke-static {v3}, Lcom/google/zxing/common/c;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/c;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1612
    sget-object v9, Lcom/google/zxing/e/a/b;->ECI:Lcom/google/zxing/e/a/b;

    invoke-virtual {v9}, Lcom/google/zxing/e/a/b;->getBits()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/google/zxing/common/a;->a(II)V

    .line 1614
    invoke-virtual {v2}, Lcom/google/zxing/common/c;->getValue()I

    move-result v2

    invoke-virtual {v8, v2, v10}, Lcom/google/zxing/common/a;->a(II)V

    :cond_8
    if-eqz p2, :cond_9

    .line 103
    sget-object v2, Lcom/google/zxing/c;->GS1_FORMAT:Lcom/google/zxing/c;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_a

    .line 104
    sget-object v2, Lcom/google/zxing/c;->GS1_FORMAT:Lcom/google/zxing/c;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 106
    sget-object v2, Lcom/google/zxing/e/a/b;->FNC1_FIRST_POSITION:Lcom/google/zxing/e/a/b;

    invoke-static {v2, v8}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V

    .line 110
    :cond_a
    invoke-static {v5, v8}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V

    .line 114
    new-instance v2, Lcom/google/zxing/common/a;

    invoke-direct {v2}, Lcom/google/zxing/common/a;-><init>()V

    .line 2506
    sget-object v9, Lcom/google/zxing/e/b/c$1;->a:[I

    invoke-virtual {v5}, Lcom/google/zxing/e/a/b;->ordinal()I

    move-result v12

    aget v9, v9, v12

    if-eq v9, v1, :cond_14

    const/4 v7, 0x2

    if-eq v9, v7, :cond_10

    const/4 v7, 0x3

    if-eq v9, v7, :cond_f

    if-ne v9, v11, :cond_e

    .line 2588
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    array-length v4, v3

    :goto_6
    if-ge v0, v4, :cond_17

    .line 2594
    aget-byte v7, v3, v0

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v0, 0x1

    .line 2595
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v7, v10

    or-int/2addr v7, v9

    const v9, 0x8140

    if-lt v7, v9, :cond_b

    const v12, 0x9ffc

    if-gt v7, v12, :cond_b

    :goto_7
    sub-int/2addr v7, v9

    goto :goto_8

    :cond_b
    const v9, 0xe040

    if-lt v7, v9, :cond_c

    const v9, 0xebbf

    if-gt v7, v9, :cond_c

    const v9, 0xc140

    goto :goto_7

    :cond_c
    const/4 v7, -0x1

    :goto_8
    if-eq v7, v6, :cond_d

    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v9, v7

    const/16 v7, 0xd

    .line 2607
    invoke-virtual {v2, v9, v7}, Lcom/google/zxing/common/a;->a(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 2604
    :cond_d
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 2590
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2520
    :cond_e
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid mode: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2576
    :cond_f
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2580
    array-length v4, v3

    :goto_9
    if-ge v0, v4, :cond_17

    aget-byte v6, v3, v0

    .line 2581
    invoke-virtual {v2, v6, v10}, Lcom/google/zxing/common/a;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :catch_1
    move-exception p0

    .line 2578
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2549
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_a
    if-ge v0, v3, :cond_17

    .line 2552
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v4

    if-eq v4, v6, :cond_13

    add-int/lit8 v7, v0, 0x1

    if-ge v7, v3, :cond_12

    .line 2557
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/e/b/c;->a(I)I

    move-result v7

    if-eq v7, v6, :cond_11

    mul-int/lit8 v4, v4, 0x2d

    add-int/2addr v4, v7

    const/16 v7, 0xb

    .line 2562
    invoke-virtual {v2, v4, v7}, Lcom/google/zxing/common/a;->a(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 2559
    :cond_11
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_12
    const/4 v0, 0x6

    .line 2566
    invoke-virtual {v2, v4, v0}, Lcom/google/zxing/common/a;->a(II)V

    move v0, v7

    goto :goto_a

    .line 2554
    :cond_13
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    .line 2525
    :cond_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_b
    if-ge v0, v3, :cond_17

    .line 2528
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v7

    add-int/lit8 v6, v0, 0x2

    if-ge v6, v3, :cond_15

    add-int/lit8 v9, v0, 0x1

    .line 2531
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v7

    .line 2532
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v7

    mul-int/lit8 v4, v4, 0x64

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v4, v9

    add-int/2addr v4, v6

    .line 2533
    invoke-virtual {v2, v4, v10}, Lcom/google/zxing/common/a;->a(II)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_b

    :cond_15
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v3, :cond_16

    .line 2537
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v7

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v0, 0x7

    .line 2538
    invoke-virtual {v2, v4, v0}, Lcom/google/zxing/common/a;->a(II)V

    move v0, v6

    goto :goto_b

    .line 2542
    :cond_16
    invoke-virtual {v2, v4, v11}, Lcom/google/zxing/common/a;->a(II)V

    goto :goto_b

    :cond_17
    if-eqz p2, :cond_19

    .line 118
    sget-object v0, Lcom/google/zxing/c;->QR_VERSION:Lcom/google/zxing/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 119
    sget-object v0, Lcom/google/zxing/c;->QR_VERSION:Lcom/google/zxing/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 120
    invoke-static {p2}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object p2

    .line 121
    invoke-static {v5, v8, v2, p2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result v0

    .line 122
    invoke-static {v0, p2, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_c

    .line 123
    :cond_18
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3180
    :cond_19
    invoke-static {v1}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object p2

    invoke-static {v5, v8, v2, p2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result p2

    .line 3181
    invoke-static {p2, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;

    move-result-object p2

    .line 3184
    invoke-static {v5, v8, v2, p2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;)I

    move-result p2

    .line 3185
    invoke-static {p2, p1}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c;

    move-result-object p2

    .line 129
    :goto_c
    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    .line 130
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 132
    sget-object v3, Lcom/google/zxing/e/a/b;->BYTE:Lcom/google/zxing/e/a/b;

    if-ne v5, v3, :cond_1a

    invoke-virtual {v2}, Lcom/google/zxing/common/a;->a()I

    move-result p0

    goto :goto_d

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 3492
    :goto_d
    invoke-virtual {v5, p2}, Lcom/google/zxing/e/a/b;->getCharacterCountBits(Lcom/google/zxing/e/a/c;)I

    move-result v3

    shl-int v4, v1, v3

    if-ge p0, v4, :cond_1b

    .line 3496
    invoke-virtual {v0, p0, v3}, Lcom/google/zxing/common/a;->a(II)V

    .line 135
    invoke-virtual {v0, v2}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 137
    invoke-virtual {p2, p1}, Lcom/google/zxing/e/a/c;->a(Lcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c$b;

    move-result-object p0

    .line 4074
    iget v1, p2, Lcom/google/zxing/e/a/c;->b:I

    .line 138
    invoke-virtual {p0}, Lcom/google/zxing/e/a/c$b;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 141
    invoke-static {v1, v0}, Lcom/google/zxing/e/b/c;->a(ILcom/google/zxing/common/a;)V

    .line 5074
    iget v2, p2, Lcom/google/zxing/e/a/c;->b:I

    .line 147
    invoke-virtual {p0}, Lcom/google/zxing/e/a/c$b;->a()I

    move-result p0

    .line 144
    invoke-static {v0, v2, v1, p0}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;

    move-result-object p0

    .line 149
    new-instance v0, Lcom/google/zxing/e/b/f;

    invoke-direct {v0}, Lcom/google/zxing/e/b/f;-><init>()V

    .line 5088
    iput-object p1, v0, Lcom/google/zxing/e/b/f;->b:Lcom/google/zxing/e/a/a;

    .line 6084
    iput-object v5, v0, Lcom/google/zxing/e/b/f;->a:Lcom/google/zxing/e/a/b;

    .line 6092
    iput-object p2, v0, Lcom/google/zxing/e/b/f;->c:Lcom/google/zxing/e/a/c;

    .line 7078
    iget v1, p2, Lcom/google/zxing/e/a/c;->a:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x11

    .line 157
    new-instance v2, Lcom/google/zxing/e/b/b;

    invoke-direct {v2, v1, v1}, Lcom/google/zxing/e/b/b;-><init>(II)V

    .line 158
    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/e/b/c;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;Lcom/google/zxing/e/b/b;)I

    move-result v1

    .line 7096
    iput v1, v0, Lcom/google/zxing/e/b/f;->d:I

    .line 162
    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/zxing/e/b/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/a;Lcom/google/zxing/e/a/c;ILcom/google/zxing/e/b/b;)V

    .line 7100
    iput-object v2, v0, Lcom/google/zxing/e/b/f;->e:Lcom/google/zxing/e/b/b;

    return-object v0

    .line 3494
    :cond_1b
    new-instance p1, Lcom/google/zxing/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v4, v1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(ILcom/google/zxing/common/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 21048
    iget v1, p1, Lcom/google/zxing/common/a;->b:I

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 23048
    iget v3, p1, Lcom/google/zxing/common/a;->b:I

    if-ge v3, v0, :cond_0

    .line 316
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24048
    :cond_0
    iget v2, p1, Lcom/google/zxing/common/a;->b:I

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 323
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->a()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 329
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25048
    :cond_3
    iget p0, p1, Lcom/google/zxing/common/a;->b:I

    if-ne p0, v0, :cond_4

    return-void

    .line 332
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_5
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22048
    iget p1, p1, Lcom/google/zxing/common/a;->b:I

    .line 312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/zxing/e/a/b;Lcom/google/zxing/common/a;)V
    .locals 1

    .line 484
    invoke-virtual {p0}, Lcom/google/zxing/e/a/b;->getBits()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/a;->a(II)V

    return-void
.end method

.method private static a(ILcom/google/zxing/e/a/c;Lcom/google/zxing/e/a/a;)Z
    .locals 1

    .line 20074
    iget v0, p1, Lcom/google/zxing/e/a/c;->b:I

    .line 298
    invoke-virtual {p1, p2}, Lcom/google/zxing/e/a/c;->a(Lcom/google/zxing/e/a/a;)Lcom/google/zxing/e/a/c$b;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcom/google/zxing/e/a/c$b;->b()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 302
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    array-length v1, p0

    .line 248
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 252
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static a([BI)[B
    .locals 5

    .line 466
    array-length v0, p0

    add-int v1, v0, p1

    .line 467
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 469
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance p0, Lcom/google/zxing/common/reedsolomon/c;

    sget-object v3, Lcom/google/zxing/common/reedsolomon/a;->e:Lcom/google/zxing/common/reedsolomon/a;

    invoke-direct {p0, v3}, Lcom/google/zxing/common/reedsolomon/c;-><init>(Lcom/google/zxing/common/reedsolomon/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/reedsolomon/c;->a([II)V

    .line 473
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 475
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method
