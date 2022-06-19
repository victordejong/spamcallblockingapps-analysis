.class final Lcom/google/android/exoplayer2/extractor/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/j;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IZ)Z
    .locals 5

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 215
    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/extractor/f/j;->a:[I

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p1, v3

    if-ne v4, p0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Lcom/google/android/exoplayer2/extractor/i;ZZ)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/i;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/f/j;->a(Lcom/google/android/exoplayer2/extractor/i;ZZ)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/i;ZZ)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 110
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    cmp-long v8, v1, v3

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :cond_1
    :goto_0
    long-to-int v4, v3

    .line 114
    new-instance v3, Lcom/google/android/exoplayer2/util/u;

    const/16 v8, 0x40

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v4, :cond_f

    const/16 v12, 0x8

    .line 121
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1169
    iget-object v13, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 123
    invoke-interface {v0, v13, v8, v12, v11}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 128
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v13

    .line 129
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v15

    const-wide/16 v16, 0x1

    const/16 v11, 0x10

    cmp-long v18, v13, v16

    if-nez v18, :cond_2

    .line 2169
    iget-object v13, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 133
    invoke-interface {v0, v13, v12, v12}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 135
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 136
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->l()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-nez v11, :cond_3

    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v16

    cmp-long v11, v16, v5

    if-eqz v11, :cond_3

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v13

    sub-long v16, v16, v13

    const-wide/16 v13, 0x8

    add-long v13, v16, v13

    :cond_3
    const/16 v11, 0x8

    :goto_2
    int-to-long v5, v11

    cmp-long v18, v13, v5

    if-gez v18, :cond_4

    return v8

    :cond_4
    add-int/2addr v9, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_6

    long-to-int v5, v13

    add-int/2addr v4, v5

    if-eqz v7, :cond_5

    int-to-long v5, v4

    cmp-long v11, v5, v1

    if-lez v11, :cond_5

    long-to-int v4, v1

    :cond_5
    const-wide/16 v5, -0x1

    goto :goto_1

    :cond_6
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_e

    const v11, 0x6d766578

    if-ne v15, v11, :cond_7

    goto :goto_6

    :cond_7
    move-wide/from16 v18, v1

    int-to-long v1, v9

    add-long/2addr v1, v13

    sub-long/2addr v1, v5

    move/from16 v20, v9

    int-to-long v8, v4

    cmp-long v21, v1, v8

    if-gez v21, :cond_f

    sub-long/2addr v13, v5

    long-to-int v1, v13

    add-int v9, v20, v1

    const v2, 0x66747970

    if-ne v15, v2, :cond_c

    if-ge v1, v12, :cond_8

    const/4 v2, 0x0

    return v2

    :cond_8
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 3169
    iget-object v5, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 182
    invoke-interface {v0, v5, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 183
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    const/4 v5, 0x4

    .line 187
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    move/from16 v6, p2

    goto :goto_4

    .line 188
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v5

    move/from16 v6, p2

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/extractor/f/j;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v10, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    move/from16 v6, p2

    :goto_5
    if-nez v10, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_c
    move/from16 v6, p2

    if-eqz v1, :cond_d

    .line 199
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    :cond_d
    move-wide/from16 v1, v18

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_e
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    if-eqz v10, :cond_10

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
