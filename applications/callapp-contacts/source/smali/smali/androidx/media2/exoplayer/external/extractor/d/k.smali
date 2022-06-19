.class final Landroidx/media2/exoplayer/external/extractor/d/k;
.super Landroidx/media2/exoplayer/external/extractor/d/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/d/k$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

.field private d:I

.field private e:Z

.field private f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

.field private g:Landroidx/media2/exoplayer/external/extractor/d/l$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/d/i;-><init>()V

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    :try_start_0
    invoke-static {v0, p0, v0}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(ILandroidx/media2/exoplayer/external/util/p;Z)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->g:Landroidx/media2/exoplayer/external/extractor/d/l$b;

    :cond_0
    const/4 p1, 0x0

    .line 61
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->d:I

    .line 62
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->e:Z

    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/util/p;JLandroidx/media2/exoplayer/external/extractor/d/i$a;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 8120
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 9065
    invoke-static {v6, v1, v3}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(ILandroidx/media2/exoplayer/external/util/p;Z)Z

    .line 9067
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v8

    .line 9068
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v10

    .line 9069
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v11

    .line 9070
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->j()I

    move-result v13

    .line 9071
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->j()I

    move-result v14

    .line 9072
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->j()I

    move-result v15

    .line 9074
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    and-int/lit8 v7, v2, 0xf

    int-to-double v3, v7

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 9075
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v5

    int-to-double v4, v2

    .line 9076
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 9078
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-lez v4, :cond_1

    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    .line 9080
    :goto_0
    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 9125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 9080
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v19

    .line 9082
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/d/l$d;

    move-object v7, v1

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-direct/range {v7 .. v19}, Landroidx/media2/exoplayer/external/extractor/d/l$d;-><init>(JIJIIIIIZ[B)V

    .line 8121
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 8125
    :cond_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->g:Landroidx/media2/exoplayer/external/extractor/d/l$b;

    if-nez v2, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 10098
    invoke-static {v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(ILandroidx/media2/exoplayer/external/util/p;Z)Z

    .line 10101
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v2

    long-to-int v3, v2

    .line 10103
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 10104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    .line 10106
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v6

    long-to-int v4, v6

    .line 10107
    new-array v4, v4, [Ljava/lang/String;

    add-int/2addr v3, v5

    move v5, v3

    const/4 v3, 0x0

    :goto_2
    int-to-long v8, v3

    cmp-long v10, v8, v6

    if-gez v10, :cond_3

    .line 10110
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v5, v5, 0x4

    .line 10112
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/p;->e(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    .line 10113
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10115
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    add-int/2addr v5, v3

    .line 10119
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/d/l$b;

    invoke-direct {v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/d/l$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 8126
    iput-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->g:Landroidx/media2/exoplayer/external/extractor/d/l$b;

    goto :goto_1

    .line 10116
    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "framing bit expected to be set"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10125
    :cond_5
    iget v2, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 8131
    new-array v9, v2, [B

    .line 8133
    iget-object v2, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 11125
    iget v3, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/4 v4, 0x0

    .line 8133
    invoke-static {v2, v4, v9, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8135
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/d/l$d;->b:I

    const/4 v3, 0x5

    .line 11181
    invoke-static {v3, v1, v4}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(ILandroidx/media2/exoplayer/external/util/p;Z)Z

    .line 11183
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 11185
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/d/j;

    iget-object v8, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {v7, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;-><init>([B)V

    .line 12142
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 11186
    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    const/4 v1, 0x0

    :goto_3
    const/16 v8, 0x10

    if-ge v1, v6, :cond_10

    const/16 v10, 0x18

    .line 12350
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v11

    const v12, 0x564342

    if-ne v11, v12, :cond_f

    .line 12354
    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v14

    .line 12355
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v15

    .line 12356
    new-array v8, v15, [J

    .line 12358
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v18

    const-wide/16 v10, 0x0

    if-nez v18, :cond_7

    .line 12360
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v15, :cond_9

    if-eqz v12, :cond_6

    .line 12363
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v16

    if-nez v16, :cond_6

    .line 12366
    aput-wide v10, v8, v13

    const/16 v17, 0x1

    goto :goto_5

    .line 12369
    :cond_6
    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v4, v16, 0x1

    int-to-long v10, v4

    aput-wide v10, v8, v13

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    goto :goto_4

    :cond_7
    const/16 v17, 0x1

    .line 12373
    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v10, v4

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v15, :cond_9

    sub-int v11, v15, v4

    .line 12375
    invoke-static {v11}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v11

    move v12, v4

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v11, :cond_8

    if-ge v12, v15, :cond_8

    move/from16 v19, v6

    int-to-long v5, v10

    .line 12377
    aput-wide v5, v8, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v19

    const/4 v5, 0x4

    goto :goto_7

    :cond_8
    move/from16 v19, v6

    add-int/lit8 v10, v10, 0x1

    move v4, v12

    move/from16 v6, v19

    const/4 v5, 0x4

    goto :goto_6

    :cond_9
    move/from16 v19, v6

    const/4 v4, 0x4

    .line 12383
    invoke-virtual {v7, v4}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_e

    const/4 v10, 0x1

    if-eq v5, v10, :cond_a

    if-ne v5, v6, :cond_d

    :cond_a
    const/16 v6, 0x20

    .line 12387
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 12388
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 12389
    invoke-virtual {v7, v4}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v6

    add-int/2addr v6, v10

    .line 12390
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    if-ne v5, v10, :cond_c

    if-eqz v14, :cond_b

    int-to-long v10, v15

    int-to-long v12, v14

    long-to-double v10, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    long-to-double v12, v12

    div-double v12, v16, v12

    .line 13411
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-long v10, v10

    goto :goto_8

    :cond_b
    const-wide/16 v10, 0x0

    goto :goto_8

    :cond_c
    int-to-long v10, v15

    int-to-long v12, v14

    mul-long v10, v10, v12

    :goto_8
    int-to-long v12, v6

    mul-long v10, v10, v12

    long-to-int v6, v10

    .line 12402
    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/extractor/d/j;->b(I)V

    .line 12404
    :cond_d
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/d/l$a;

    move-object/from16 v16, v8

    move/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Landroidx/media2/exoplayer/external/extractor/d/l$a;-><init>(II[JIZ)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v19

    const/4 v4, 0x0

    const/4 v5, 0x4

    goto/16 :goto_3

    .line 12385
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12351
    :cond_f
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    .line 13108
    iget v2, v7, Landroidx/media2/exoplayer/external/extractor/d/j;->a:I

    mul-int/lit8 v2, v2, 0x8

    iget v3, v7, Landroidx/media2/exoplayer/external/extractor/d/j;->b:I

    add-int/2addr v2, v3

    const/16 v3, 0x42

    .line 12352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v1, 0x6

    .line 11192
    invoke-virtual {v7, v1}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_12

    .line 11194
    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/extractor/d/j;->a(I)I

    move-result v4

    if-nez v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 11195
    :cond_11
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11198
    :cond_12
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/d/l;->c(Landroidx/media2/exoplayer/external/extractor/d/j;)V

    .line 11199
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/d/l;->b(Landroidx/media2/exoplayer/external/extractor/d/j;)V

    .line 11200
    invoke-static {v2, v7}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(ILandroidx/media2/exoplayer/external/extractor/d/j;)V

    .line 11202
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(Landroidx/media2/exoplayer/external/extractor/d/j;)[Landroidx/media2/exoplayer/external/extractor/d/l$c;

    move-result-object v10

    .line 11203
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/extractor/d/j;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 8137
    array-length v1, v10

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/d/l;->a(I)I

    move-result v11

    .line 8139
    new-instance v4, Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->g:Landroidx/media2/exoplayer/external/extractor/d/l$b;

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/extractor/d/k$a;-><init>(Landroidx/media2/exoplayer/external/extractor/d/l$d;Landroidx/media2/exoplayer/external/extractor/d/l$b;[B[Landroidx/media2/exoplayer/external/extractor/d/l$c;I)V

    .line 101
    :goto_a
    iput-object v4, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    if-nez v4, :cond_13

    const/4 v1, 0x1

    return v1

    .line 106
    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/l$d;->j:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/k$a;->c:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 110
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/d/l$d;->e:I

    const/4 v6, -0x1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/d/l$d;->b:I

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget-wide v10, v1, Landroidx/media2/exoplayer/external/extractor/d/l$d;->c:J

    long-to-int v8, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v3, "audio/vorbis"

    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v1, v2, Landroidx/media2/exoplayer/external/extractor/d/i$a;->a:Landroidx/media2/exoplayer/external/Format;

    const/4 v1, 0x1

    return v1

    .line 11204
    :cond_14
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "framing bit after modes not set as expected"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final b(Landroidx/media2/exoplayer/external/util/p;)J
    .locals 11

    .line 75
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 80
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v0, v0, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->a:Landroidx/media2/exoplayer/external/extractor/d/k$a;

    .line 1171
    iget v4, v3, Landroidx/media2/exoplayer/external/extractor/d/k$a;->e:I

    shr-int/2addr v0, v2

    const/16 v5, 0xff

    const/16 v6, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v5, v4

    and-int/2addr v0, v4

    .line 1173
    iget-object v4, v3, Landroidx/media2/exoplayer/external/extractor/d/k$a;->d:[Landroidx/media2/exoplayer/external/extractor/d/l$c;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/extractor/d/l$c;->a:Z

    if-nez v0, :cond_1

    .line 1174
    iget-object v0, v3, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/d/l$d;->g:I

    goto :goto_0

    .line 1176
    :cond_1
    iget-object v0, v3, Landroidx/media2/exoplayer/external/extractor/d/k$a;->a:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    iget v0, v0, Landroidx/media2/exoplayer/external/extractor/d/l$d;->h:I

    .line 83
    :goto_0
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->e:Z

    if-eqz v3, :cond_2

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->d:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v3, v1

    .line 3125
    iget v1, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/lit8 v1, v1, 0x4

    .line 2160
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 2163
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 4125
    iget v5, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/lit8 v5, v5, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v3, v7

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 2163
    aput-byte v9, v1, v5

    .line 2164
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 5125
    iget v5, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/lit8 v5, v5, -0x3

    ushr-long v9, v3, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 2164
    aput-byte v6, v1, v5

    .line 2165
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 6125
    iget v5, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v9, v3, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 2165
    aput-byte v6, v1, v5

    .line 2166
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 7125
    iget p1, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    sub-int/2addr p1, v2

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 2166
    aput-byte v5, v1, p1

    .line 89
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->e:Z

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->d:I

    return-wide v3
.end method

.method protected final c(J)V
    .locals 4

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/d/i;->c(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->e:Z

    .line 69
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->f:Landroidx/media2/exoplayer/external/extractor/d/l$d;

    if-eqz p1, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/extractor/d/l$d;->g:I

    :cond_1
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d/k;->d:I

    return-void
.end method
