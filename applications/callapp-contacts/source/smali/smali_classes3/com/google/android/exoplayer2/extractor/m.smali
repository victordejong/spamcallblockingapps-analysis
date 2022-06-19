.class public final Lcom/google/android/exoplayer2/extractor/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/m$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x100

    add-int/lit8 p1, p1, -0x8

    shl-int/2addr p0, p1

    return p0

    .line 182
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 180
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    const/16 p0, 0x240

    add-int/lit8 p1, p1, -0x2

    shl-int/2addr p0, p1

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/p;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    const/4 v0, 0x1

    .line 140
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 142
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 143
    aget-byte v1, v1, v2

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    .line 144
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    .line 147
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 5169
    iget-object v4, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 149
    invoke-static {p0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/k;->a(Lcom/google/android/exoplayer2/extractor/i;[BII)I

    move-result v1

    .line 150
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 151
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 153
    new-instance p0, Lcom/google/android/exoplayer2/extractor/m$a;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>()V

    .line 154
    invoke-static {v3, p1, v0, p0}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ZLcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    iget-wide p0, p0, Lcom/google/android/exoplayer2/extractor/m$a;->a:J

    return-wide p0

    .line 156
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 100
    invoke-interface {p0, v3, v4, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 101
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    if-eq v5, p2, :cond_0

    .line 103
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 104
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    return v4

    .line 108
    :cond_0
    new-instance v5, Lcom/google/android/exoplayer2/util/u;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 3169
    iget-object v6, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 109
    invoke-static {v3, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4169
    iget-object v3, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v4, 0xe

    .line 113
    invoke-static {p0, v3, v2, v4}, Lcom/google/android/exoplayer2/extractor/k;->a(Lcom/google/android/exoplayer2/extractor/i;[BII)I

    move-result v2

    .line 115
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 117
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 118
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 120
    invoke-static {v5, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ILcom/google/android/exoplayer2/extractor/m$a;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1144
    iget v2, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_0

    return v9

    :cond_0
    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    const/4 v10, 0x1

    cmp-long v11, v5, v7

    if-nez v11, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xc

    shr-long v11, v3, v6

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v12, v11

    const/16 v11, 0x8

    shr-long v15, v3, v11

    and-long v6, v15, v13

    long-to-int v7, v6

    const/4 v6, 0x4

    shr-long v15, v3, v6

    and-long/2addr v13, v15

    long-to-int v6, v13

    shr-long v13, v3, v10

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v8, v13

    const-wide/16 v13, 0x1

    and-long/2addr v3, v13

    cmp-long v11, v3, v13

    if-nez v11, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x7

    if-gt v6, v4, :cond_3

    .line 1207
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/p;->g:I

    sub-int/2addr v4, v10

    if-ne v6, v4, :cond_4

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v4, 0xa

    if-gt v6, v4, :cond_4

    .line 1209
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/p;->g:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_e

    if-nez v8, :cond_5

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    .line 1227
    :cond_5
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/p;->i:I

    if-ne v8, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    move-object/from16 v3, p3

    .line 71
    invoke-static {v0, v1, v5, v3}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ZLcom/google/android/exoplayer2/extractor/m$a;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1277
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/m;->a(Lcom/google/android/exoplayer2/util/u;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1278
    iget v4, v1, Lcom/google/android/exoplayer2/extractor/p;->b:I

    if-gt v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_e

    .line 1295
    iget v3, v1, Lcom/google/android/exoplayer2/extractor/p;->e:I

    if-nez v7, :cond_8

    :goto_7
    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/16 v4, 0xb

    if-gt v7, v4, :cond_a

    .line 1299
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/p;->f:I

    if-ne v7, v1, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    const/16 v1, 0xc

    if-ne v7, v1, :cond_b

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-ne v1, v3, :cond_9

    goto :goto_7

    :cond_b
    const/16 v1, 0xe

    if-gt v7, v1, :cond_9

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v4

    if-ne v7, v1, :cond_c

    mul-int/lit8 v4, v4, 0xa

    :cond_c
    if-ne v4, v3, :cond_9

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_e

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 2144
    iget v3, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    sub-int/2addr v3, v10

    .line 1329
    invoke-static {v0, v2, v3, v9}, Lcom/google/android/exoplayer2/util/af;->a([BIII)I

    move-result v0

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    return v10

    :cond_e
    return v9
.end method

.method private static a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/extractor/p;ZLcom/google/android/exoplayer2/extractor/m$a;)Z
    .locals 2

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->u()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget p0, p1, Lcom/google/android/exoplayer2/extractor/p;->b:I

    int-to-long p0, p0

    mul-long v0, v0, p0

    :goto_0
    iput-wide v0, p3, Lcom/google/android/exoplayer2/extractor/m$a;->a:J

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
