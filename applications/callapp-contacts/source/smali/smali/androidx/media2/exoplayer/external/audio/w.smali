.class public final Landroidx/media2/exoplayer/external/audio/w;
.super Landroidx/media2/exoplayer/external/audio/q;
.source "SourceFile"


# instance fields
.field e:Z

.field f:J

.field private g:I

.field private h:[B

.field private i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/q;-><init>()V

    .line 102
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    .line 103
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    return-void
.end method

.method private a(J)I
    .locals 2

    .line 326
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/w;->b:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private a(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 312
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([BI)V
    .locals 2

    .line 287
    invoke-virtual {p0, p2}, Landroidx/media2/exoplayer/external/audio/w;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/w;->m:Z

    :cond_0
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 336
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 338
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/w;->j()Z

    move-result v0

    if-nez v0, :cond_b

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 3266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3267
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/w;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3268
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3269
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    .line 3270
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    invoke-direct {p0, p1, v2, v4}, Landroidx/media2/exoplayer/external/audio/w;->a(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 3274
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/audio/w;->a([BI)V

    .line 3275
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    .line 3278
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3227
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3228
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/w;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v1, v4

    .line 3230
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    array-length v6, v5

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    sub-int/2addr v6, v7

    if-ge v1, v0, :cond_3

    if-ge v4, v6, :cond_3

    .line 3233
    invoke-direct {p0, v5, v7}, Landroidx/media2/exoplayer/external/audio/w;->a([BI)V

    .line 3234
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    .line 3235
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    goto :goto_0

    .line 3238
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3240
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    iget v5, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3241
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    .line 3242
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    array-length v5, v1

    if-ne v4, v5, :cond_5

    .line 3245
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/audio/w;->m:Z

    if-eqz v5, :cond_4

    .line 3246
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    invoke-direct {p0, v1, v4}, Landroidx/media2/exoplayer/external/audio/w;->a([BI)V

    .line 3247
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    goto :goto_1

    .line 3249
    :cond_4
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    sub-int/2addr v4, v1

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v4, v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    .line 3251
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    invoke-direct {p0, p1, v1, v4}, Landroidx/media2/exoplayer/external/audio/w;->a(Ljava/nio/ByteBuffer;[BI)V

    .line 3252
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    .line 3253
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    .line 3257
    :cond_5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1205
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 1351
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_7

    .line 1353
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v2, v3

    mul-int v2, v2, v3

    add-int/2addr v2, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 1356
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1210
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1212
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    goto :goto_4

    .line 1214
    :cond_9
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 2298
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/audio/w;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_a

    .line 2300
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/w;->m:Z

    .line 1219
    :cond_a
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 139
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/w;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    mul-int/lit8 v0, p2, 0x2

    .line 133
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/w;->b(III)Z

    move-result p1

    return p1

    .line 131
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method protected final k()V
    .locals 4

    .line 163
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    if-lez v0, :cond_0

    .line 165
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/audio/w;->a([BI)V

    .line 167
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/w;->m:Z

    if-nez v0, :cond_1

    .line 168
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    :cond_1
    return-void
.end method

.method protected final l()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x249f0

    .line 175
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/w;->a(J)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    mul-int v0, v0, v1

    .line 176
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 177
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 179
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/w;->a(J)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/w;->g:I

    mul-int v0, v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    .line 180
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 181
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    :cond_1
    const/4 v0, 0x0

    .line 184
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/w;->j:I

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/w;->f:J

    .line 186
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/w;->k:I

    .line 187
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/w;->m:Z

    return-void
.end method

.method protected final m()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/w;->e:Z

    .line 193
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/w;->l:I

    .line 194
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->h:[B

    .line 195
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/w;->i:[B

    return-void
.end method
