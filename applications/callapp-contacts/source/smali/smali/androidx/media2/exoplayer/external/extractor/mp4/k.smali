.class final Landroidx/media2/exoplayer/external/extractor/mp4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
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
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Z
    .locals 6

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x1

    const v2, 0x336770

    if-ne v0, v2, :cond_0

    return v1

    .line 199
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a:[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    if-ne v5, p0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    move-result p0

    return p0
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 98
    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

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

    .line 102
    new-instance v3, Landroidx/media2/exoplayer/external/util/p;

    const/16 v8, 0x40

    invoke-direct {v3, v8}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v9, v4, :cond_10

    const/16 v12, 0x8

    .line 109
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 110
    iget-object v13, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v0, v13, v8, v12}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 111
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v13

    .line 112
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v15

    const-wide/16 v16, 0x1

    const/16 v11, 0x10

    cmp-long v18, v13, v16

    if-nez v18, :cond_2

    .line 116
    iget-object v13, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v0, v13, v12, v12}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 117
    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    .line 118
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->k()J

    move-result-wide v13

    goto :goto_2

    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-nez v11, :cond_3

    .line 121
    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v16

    cmp-long v11, v16, v5

    if-eqz v11, :cond_3

    .line 123
    invoke-interface/range {p0 .. p0}, Landroidx/media2/exoplayer/external/extractor/h;->b()J

    move-result-wide v13

    sub-long v16, v16, v13

    const-wide/16 v13, 0x8

    add-long v13, v16, v13

    :cond_3
    const/16 v11, 0x8

    :goto_2
    if-eqz v7, :cond_4

    int-to-long v5, v9

    add-long/2addr v5, v13

    cmp-long v18, v5, v1

    if-lez v18, :cond_4

    return v8

    :cond_4
    int-to-long v5, v11

    cmp-long v18, v13, v5

    if-gez v18, :cond_5

    return v8

    :cond_5
    add-int/2addr v9, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_7

    long-to-int v5, v13

    add-int/2addr v4, v5

    if-eqz v7, :cond_6

    int-to-long v5, v4

    cmp-long v11, v5, v1

    if-lez v11, :cond_6

    long-to-int v4, v1

    :cond_6
    const-wide/16 v5, -0x1

    goto :goto_1

    :cond_7
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_f

    const v11, 0x6d766578

    if-ne v15, v11, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v18, v1

    int-to-long v1, v9

    add-long/2addr v1, v13

    sub-long/2addr v1, v5

    move/from16 v20, v9

    int-to-long v8, v4

    cmp-long v21, v1, v8

    if-gez v21, :cond_10

    sub-long/2addr v13, v5

    long-to-int v1, v13

    add-int v9, v20, v1

    const v2, 0x66747970

    if-ne v15, v2, :cond_d

    if-ge v1, v12, :cond_9

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 168
    iget-object v5, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v0, v5, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 169
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_c

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    const/4 v5, 0x4

    .line 173
    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_4

    .line 174
    :cond_a
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    if-nez v10, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_d
    if-eqz v1, :cond_e

    .line 185
    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    :cond_e
    move-wide/from16 v1, v18

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_f
    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    :goto_7
    if-eqz v10, :cond_11

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/k;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    move-result p0

    return p0
.end method
