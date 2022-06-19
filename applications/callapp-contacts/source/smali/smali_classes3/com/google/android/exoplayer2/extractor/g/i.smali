.class final Lcom/google/android/exoplayer2/extractor/g/i;
.super Lcom/google/android/exoplayer2/extractor/g/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/g/i$a;
    }
.end annotation


# instance fields
.field private j:Lcom/google/android/exoplayer2/extractor/g/i$a;

.field private k:I

.field private l:Z

.field private m:Lcom/google/android/exoplayer2/extractor/z$d;

.field private n:Lcom/google/android/exoplayer2/extractor/z$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/g/h;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 1

    const/4 v0, 0x1

    .line 48
    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/google/android/exoplayer2/extractor/z;->a(ILcom/google/android/exoplayer2/util/u;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->j:Lcom/google/android/exoplayer2/extractor/g/i$a;

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->m:Lcom/google/android/exoplayer2/extractor/z$d;

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->n:Lcom/google/android/exoplayer2/extractor/z$b;

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->k:I

    .line 63
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->l:Z

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/extractor/g/h$a;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 99
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/g/i;->j:Lcom/google/android/exoplayer2/extractor/g/i$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 100
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 11132
    :cond_0
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/g/i;->m:Lcom/google/android/exoplayer2/extractor/z$d;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v11, 0x1

    if-nez v6, :cond_5

    .line 12153
    invoke-static {v11, v1, v4}, Lcom/google/android/exoplayer2/extractor/z;->a(ILcom/google/android/exoplayer2/util/u;Z)Z

    .line 12155
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->p()I

    move-result v13

    .line 12156
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v14

    .line 12157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->p()I

    move-result v15

    .line 12158
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v6

    const/4 v7, -0x1

    if-gtz v6, :cond_1

    const/16 v16, -0x1

    goto :goto_0

    :cond_1
    move/from16 v16, v6

    .line 12162
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v6

    if-gtz v6, :cond_2

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v17, v6

    .line 12166
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->k()I

    move-result v6

    if-gtz v6, :cond_3

    const/16 v18, -0x1

    goto :goto_2

    :cond_3
    move/from16 v18, v6

    .line 12170
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    and-int/lit8 v7, v6, 0xf

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 12171
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v5, v6, 0x4

    int-to-double v5, v5

    .line 12172
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    .line 12174
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    and-int/2addr v6, v11

    if-lez v6, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x0

    .line 13169
    :goto_3
    iget-object v4, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 14127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 12176
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v22

    .line 12178
    new-instance v1, Lcom/google/android/exoplayer2/extractor/z$d;

    move-object v12, v1

    move/from16 v19, v7

    move/from16 v20, v5

    invoke-direct/range {v12 .. v22}, Lcom/google/android/exoplayer2/extractor/z$d;-><init>(IIIIIIIIZ[B)V

    .line 11133
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/i;->m:Lcom/google/android/exoplayer2/extractor/z$d;

    goto/16 :goto_e

    .line 11137
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/g/i;->n:Lcom/google/android/exoplayer2/extractor/z$b;

    if-nez v7, :cond_6

    .line 14202
    invoke-static {v1, v11, v11}, Lcom/google/android/exoplayer2/extractor/z;->a(Lcom/google/android/exoplayer2/util/u;ZZ)Lcom/google/android/exoplayer2/extractor/z$b;

    move-result-object v1

    .line 11138
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/g/i;->n:Lcom/google/android/exoplayer2/extractor/z$b;

    goto/16 :goto_e

    .line 15127
    :cond_6
    iget v3, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 11145
    new-array v8, v3, [B

    .line 15169
    iget-object v3, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 16127
    iget v9, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 11147
    invoke-static {v3, v4, v8, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11149
    iget v3, v6, Lcom/google/android/exoplayer2/extractor/z$d;->b:I

    const/4 v9, 0x5

    .line 16308
    invoke-static {v9, v1, v4}, Lcom/google/android/exoplayer2/extractor/z;->a(ILcom/google/android/exoplayer2/util/u;Z)Z

    .line 16310
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v10

    add-int/2addr v10, v11

    .line 16312
    new-instance v12, Lcom/google/android/exoplayer2/extractor/y;

    .line 17169
    iget-object v13, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 16312
    invoke-direct {v12, v13}, Lcom/google/android/exoplayer2/extractor/y;-><init>([B)V

    .line 18144
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 16313
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/extractor/y;->b(I)V

    const/4 v1, 0x0

    :goto_4
    const/16 v13, 0x10

    if-ge v1, v10, :cond_12

    const/16 v14, 0x18

    .line 18477
    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v15

    const v4, 0x564342

    if-ne v15, v4, :cond_11

    .line 18481
    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v4

    .line 18482
    invoke-virtual {v12, v14}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v13

    .line 18483
    new-array v14, v13, [J

    .line 18485
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/extractor/y;->a()Z

    move-result v21

    const-wide/16 v15, 0x0

    if-nez v21, :cond_9

    .line 18487
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/extractor/y;->a()Z

    move-result v17

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v13, :cond_8

    if-eqz v17, :cond_7

    .line 18490
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/extractor/y;->a()Z

    move-result v18

    if-nez v18, :cond_7

    .line 18493
    aput-wide v15, v14, v5

    move/from16 v23, v10

    goto :goto_6

    .line 18496
    :cond_7
    invoke-virtual {v12, v9}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v18

    add-int/lit8 v15, v18, 0x1

    move/from16 v23, v10

    int-to-long v9, v15

    aput-wide v9, v14, v5

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v23

    const/4 v9, 0x5

    const-wide/16 v15, 0x0

    goto :goto_5

    :cond_8
    move/from16 v23, v10

    goto :goto_9

    :cond_9
    move/from16 v23, v10

    const/4 v5, 0x5

    .line 18500
    invoke-virtual {v12, v5}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v9

    add-int/2addr v9, v11

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v13, :cond_b

    sub-int v15, v13, v10

    .line 18502
    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/z;->a(I)I

    move-result v15

    invoke-virtual {v12, v15}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v15

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v15, :cond_a

    if-ge v10, v13, :cond_a

    move-object/from16 v24, v12

    int-to-long v11, v9

    .line 18504
    aput-wide v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v24

    const/4 v11, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v24, v12

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v24

    const/4 v5, 0x5

    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    :goto_9
    move-object v5, v12

    const/4 v9, 0x4

    .line 18510
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_d

    if-ne v10, v11, :cond_c

    goto :goto_a

    :cond_c
    move-object v12, v7

    move-object v15, v8

    move/from16 p1, v10

    goto :goto_c

    :cond_d
    :goto_a
    const/16 v11, 0x20

    .line 18514
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/extractor/y;->b(I)V

    .line 18515
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/extractor/y;->b(I)V

    .line 18516
    invoke-virtual {v5, v9}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v11

    add-int/2addr v11, v12

    .line 18517
    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/extractor/y;->b(I)V

    if-ne v10, v12, :cond_f

    if-eqz v4, :cond_e

    move/from16 p1, v10

    int-to-long v9, v13

    move-object v12, v7

    move-object v15, v8

    int-to-long v7, v4

    long-to-double v9, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    long-to-double v7, v7

    div-double v7, v16, v7

    .line 19538
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-long v7, v7

    goto :goto_b

    :cond_e
    move-object v12, v7

    move-object v15, v8

    move/from16 p1, v10

    const-wide/16 v7, 0x0

    goto :goto_b

    :cond_f
    move-object v12, v7

    move-object v15, v8

    move/from16 p1, v10

    int-to-long v7, v13

    int-to-long v9, v4

    mul-long v7, v7, v9

    :goto_b
    int-to-long v9, v11

    mul-long v7, v7, v9

    long-to-int v8, v7

    .line 18529
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/extractor/y;->b(I)V

    .line 18531
    :goto_c
    new-instance v16, Lcom/google/android/exoplayer2/extractor/z$a;

    move/from16 v17, v4

    move/from16 v18, v13

    move-object/from16 v19, v14

    move/from16 v20, p1

    invoke-direct/range {v16 .. v21}, Lcom/google/android/exoplayer2/extractor/z$a;-><init>(II[JIZ)V

    add-int/lit8 v1, v1, 0x1

    move-object v7, v12

    move-object v8, v15

    move/from16 v10, v23

    const/4 v4, 0x0

    const/4 v9, 0x5

    const/4 v11, 0x1

    move-object v12, v5

    const/4 v5, 0x4

    goto/16 :goto_4

    :cond_10
    move/from16 p1, v10

    .line 18512
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lookup type greater than 2 not decodable: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object v5, v12

    .line 18478
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19104
    iget v3, v5, Lcom/google/android/exoplayer2/extractor/y;->a:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, v5, Lcom/google/android/exoplayer2/extractor/y;->b:I

    add-int/2addr v3, v4

    .line 18479
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object v15, v8

    move-object v5, v12

    move-object v12, v7

    const/4 v1, 0x6

    .line 16319
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_14

    .line 16321
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/extractor/y;->a(I)I

    move-result v7

    if-nez v7, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 16322
    :cond_13
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16325
    :cond_14
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/z;->c(Lcom/google/android/exoplayer2/extractor/y;)V

    .line 16326
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/z;->b(Lcom/google/android/exoplayer2/extractor/y;)V

    .line 16327
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/extractor/z;->a(ILcom/google/android/exoplayer2/extractor/y;)V

    .line 16329
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/z;->a(Lcom/google/android/exoplayer2/extractor/y;)[Lcom/google/android/exoplayer2/extractor/z$c;

    move-result-object v9

    .line 16330
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/y;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 11151
    array-length v1, v9

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/z;->a(I)I

    move-result v10

    .line 11153
    new-instance v3, Lcom/google/android/exoplayer2/extractor/g/i$a;

    move-object v5, v3

    move-object v7, v12

    move-object v8, v15

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/g/i$a;-><init>(Lcom/google/android/exoplayer2/extractor/z$d;Lcom/google/android/exoplayer2/extractor/z$b;[B[Lcom/google/android/exoplayer2/extractor/z$c;I)V

    .line 104
    :goto_e
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/g/i;->j:Lcom/google/android/exoplayer2/extractor/g/i$a;

    if-nez v3, :cond_15

    const/4 v1, 0x1

    return v1

    .line 110
    :cond_15
    iget-object v1, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->a:Lcom/google/android/exoplayer2/extractor/z$d;

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/z$d;->j:[B

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->c:[B

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v5, "audio/vorbis"

    .line 20370
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 118
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/z$d;->e:I

    .line 21311
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 119
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/z$d;->d:I

    .line 21322
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 120
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/z$d;->b:I

    .line 21517
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 121
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/z$d;->c:I

    .line 21528
    iput v1, v3, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 22392
    iput-object v4, v3, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 124
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    return v1

    .line 16331
    :cond_16
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "framing bit after modes not set as expected"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final b(Lcom/google/android/exoplayer2/util/u;)J
    .locals 11

    .line 1169
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x0

    .line 76
    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2169
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 81
    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/g/i;->j:Lcom/google/android/exoplayer2/extractor/g/i$a;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/g/i$a;

    .line 2189
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->e:I

    shr-int/2addr v0, v2

    const/16 v5, 0xff

    const/16 v6, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v5, v4

    and-int/2addr v0, v4

    .line 2191
    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->d:[Lcom/google/android/exoplayer2/extractor/z$c;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/z$c;->a:Z

    if-nez v0, :cond_1

    .line 2192
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->a:Lcom/google/android/exoplayer2/extractor/z$d;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/z$d;->g:I

    goto :goto_0

    .line 2194
    :cond_1
    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/g/i$a;->a:Lcom/google/android/exoplayer2/extractor/z$d;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/z$d;->h:I

    .line 84
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/g/i;->l:Z

    if-eqz v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->k:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v3, v1

    .line 4174
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v1

    .line 5127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v5, v5, 0x4

    if-ge v1, v5, :cond_3

    .line 5169
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 6127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v5, v5, 0x4

    .line 3174
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 7088
    array-length v5, v1

    invoke-virtual {p1, v1, v5}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    goto :goto_1

    .line 7127
    :cond_3
    iget v1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v1, v1, 0x4

    .line 3176
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 7169
    :goto_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 8127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v5, v5, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v3, v7

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 3181
    aput-byte v9, v1, v5

    .line 9127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v5, v5, -0x3

    ushr-long v9, v3, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 3182
    aput-byte v6, v1, v5

    .line 10127
    iget v5, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v9, v3, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 3183
    aput-byte v6, v1, v5

    .line 11127
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    sub-int/2addr p1, v2

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 3184
    aput-byte v5, v1, p1

    .line 90
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/g/i;->l:Z

    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/i;->k:I

    return-wide v3
.end method

.method protected final c(J)V
    .locals 4

    .line 68
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/g/h;->c(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->l:Z

    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/g/i;->m:Lcom/google/android/exoplayer2/extractor/z$d;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/extractor/z$d;->g:I

    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/g/i;->k:I

    return-void
.end method
