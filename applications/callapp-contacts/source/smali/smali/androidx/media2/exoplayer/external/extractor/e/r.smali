.class public final Landroidx/media2/exoplayer/external/extractor/e/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/util/o;

.field private d:Landroidx/media2/exoplayer/external/extractor/q;

.field private e:Landroidx/media2/exoplayer/external/Format;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->a:Ljava/lang/String;

    .line 84
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 85
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->c:Landroidx/media2/exoplayer/external/util/o;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/o;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 268
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/c;->a(Landroidx/media2/exoplayer/external/util/o;Z)Landroid/util/Pair;

    move-result-object v1

    .line 269
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->r:I

    .line 270
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->t:I

    .line 271
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/o;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private b(Landroidx/media2/exoplayer/external/util/o;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 280
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 285
    :cond_1
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw p1
.end method

.method private static c(Landroidx/media2/exoplayer/external/util/o;)J
    .locals 2

    const/4 v0, 0x2

    .line 312
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 313
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    .line 91
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->l:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 103
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->k:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 2

    .line 96
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 97
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->d:Landroidx/media2/exoplayer/external/extractor/q;

    .line 98
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/r;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 109
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v1

    if-lez v1, :cond_1b

    .line 110
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_18

    const/4 v2, 0x3

    const/16 v6, 0x8

    if-eq v1, v4, :cond_16

    if-ne v1, v2, :cond_15

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v1

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->i:I

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->h:I

    sub-int/2addr v4, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 135
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->c:Landroidx/media2/exoplayer/external/util/o;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/o;->a:[B

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->h:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v4, v7, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 136
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->h:I

    add-int/2addr v4, v1

    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->h:I

    .line 137
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->i:I

    if-ne v4, v1, :cond_0

    .line 138
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->c:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 139
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->c:Landroidx/media2/exoplayer/external/util/o;

    .line 2160
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2162
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->l:Z

    .line 2186
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2187
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput v7, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->m:I

    if-nez v7, :cond_e

    if-ne v4, v3, :cond_2

    .line 2190
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->c(Landroidx/media2/exoplayer/external/util/o;)J

    .line 2192
    :cond_2
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x6

    .line 2195
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v9

    iput v9, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->n:I

    const/4 v9, 0x4

    .line 2196
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    .line 2197
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v11

    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v4, :cond_3

    .line 2202
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->b()I

    move-result v10

    .line 2203
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->a(Landroidx/media2/exoplayer/external/util/o;)I

    move-result v11

    .line 2204
    invoke-virtual {v1, v10}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    add-int/lit8 v10, v11, 0x7

    .line 2205
    div-int/2addr v10, v6

    new-array v10, v10, [B

    .line 2206
    invoke-virtual {v1, v10, v11}, Landroidx/media2/exoplayer/external/util/o;->b([BI)V

    .line 2207
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->f:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->t:I

    iget v13, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->r:I

    .line 2209
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->a:Ljava/lang/String;

    const-string v17, "audio/mp4a-latm"

    move/from16 v18, v13

    move-object/from16 v13, v17

    move/from16 v17, v11

    move-object/from16 v22, v10

    .line 2207
    invoke-static/range {v12 .. v22}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 2210
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->e:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2211
    iput-object v10, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->e:Landroidx/media2/exoplayer/external/Format;

    const-wide/32 v11, 0x3d090000

    .line 2212
    iget v13, v10, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v13, v13

    div-long/2addr v11, v13

    iput-wide v11, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->s:J

    .line 2213
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->d:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v11, v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_2

    .line 2216
    :cond_3
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->c(Landroidx/media2/exoplayer/external/util/o;)J

    move-result-wide v10

    long-to-int v11, v10

    .line 2217
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->a(Landroidx/media2/exoplayer/external/util/o;)I

    move-result v10

    sub-int/2addr v11, v10

    .line 2218
    invoke-virtual {v1, v11}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 2244
    :cond_4
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v10

    iput v10, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->o:I

    if-eqz v10, :cond_9

    if-eq v10, v3, :cond_8

    if-eq v10, v2, :cond_7

    if-eq v10, v9, :cond_7

    const/4 v2, 0x5

    if-eq v10, v2, :cond_7

    if-eq v10, v7, :cond_6

    const/4 v2, 0x7

    if-ne v10, v2, :cond_5

    goto :goto_3

    .line 2262
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2259
    :cond_6
    :goto_3
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_4

    .line 2255
    :cond_7
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_4

    :cond_8
    const/16 v2, 0x9

    .line 2250
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_4

    .line 2247
    :cond_9
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 2221
    :goto_4
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->p:Z

    const-wide/16 v9, 0x0

    .line 2222
    iput-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->q:J

    if-eqz v2, :cond_b

    if-ne v4, v3, :cond_a

    .line 2225
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->c(Landroidx/media2/exoplayer/external/util/o;)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->q:J

    goto :goto_5

    .line 2229
    :cond_a
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    .line 2230
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->q:J

    shl-long/2addr v3, v6

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v7

    int-to-long v9, v7

    add-long/2addr v3, v9

    iput-wide v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->q:J

    if-nez v2, :cond_a

    .line 2234
    :cond_b
    :goto_5
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->e()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2236
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_6

    .line 2199
    :cond_c
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 2193
    :cond_d
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 2239
    :cond_e
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 2164
    :cond_f
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->l:Z

    if-eqz v2, :cond_14

    .line 2168
    :cond_10
    :goto_6
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->m:I

    if-nez v2, :cond_13

    .line 2169
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->n:I

    if-nez v2, :cond_12

    .line 2172
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/r;->b(Landroidx/media2/exoplayer/external/util/o;)I

    move-result v13

    .line 2291
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/o;->b()I

    move-result v2

    and-int/lit8 v3, v2, 0x7

    if-nez v3, :cond_11

    .line 2294
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_7

    .line 2298
    :cond_11
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    mul-int/lit8 v3, v13, 0x8

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/o;->b([BI)V

    .line 2299
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 2301
    :goto_7
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->d:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v2, v3, v13}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 2302
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->d:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->k:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 2303
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->k:J

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->s:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->k:J

    .line 2174
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->p:Z

    if-eqz v2, :cond_14

    .line 2175
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->q:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    goto :goto_8

    .line 2170
    :cond_12
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 2178
    :cond_13
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>()V

    throw v1

    .line 140
    :cond_14
    :goto_8
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    goto/16 :goto_0

    .line 144
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_16
    move-object/from16 v8, p1

    .line 126
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->j:I

    and-int/lit16 v1, v1, -0xe1

    shl-int/2addr v1, v6

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->i:I

    .line 127
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v3, v3

    if-le v1, v3, :cond_17

    .line 128
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->i:I

    .line 1307
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1308
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->c:Landroidx/media2/exoplayer/external/util/o;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2068
    array-length v4, v3

    invoke-virtual {v1, v3, v4}, Landroidx/media2/exoplayer/external/util/o;->a([BI)V

    .line 130
    :cond_17
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->h:I

    .line 131
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    goto/16 :goto_0

    :cond_18
    move-object/from16 v8, p1

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    and-int/lit16 v3, v1, 0xe0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_19

    .line 119
    iput v1, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->j:I

    .line 120
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    goto/16 :goto_0

    :cond_19
    if-eq v1, v2, :cond_0

    .line 122
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v8, p1

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 113
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/e/r;->g:I

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
