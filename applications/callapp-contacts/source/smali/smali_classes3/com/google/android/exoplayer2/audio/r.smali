.class public final Lcom/google/android/exoplayer2/audio/r;
.super Lcom/google/android/exoplayer2/audio/j;
.source "SourceFile"


# instance fields
.field d:Z

.field e:J

.field private final f:J

.field private final g:J

.field private final h:S

.field private i:I

.field private j:[B

.field private k:[B

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/32 v1, 0x249f0

    const-wide/16 v3, 0x4e20

    const/16 v5, 0x400

    move-object v0, p0

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/r;-><init>(JJS)V

    return-void
.end method

.method public constructor <init>(JJS)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/j;-><init>()V

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 113
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/r;->f:J

    .line 114
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/r;->g:J

    .line 115
    iput-short p5, p0, Lcom/google/android/exoplayer2/audio/r;->h:S

    .line 117
    sget-object p1, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    .line 118
    sget-object p1, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    return-void
.end method

.method private a(J)I
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method private a(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    .line 327
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a([BI)V
    .locals 2

    .line 302
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/audio/r;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/r;->o:Z

    :cond_0
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 350
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 351
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-short v2, p0, Lcom/google/android/exoplayer2/audio/r;->h:S

    if-le v1, v2, :cond_0

    .line 353
    iget p1, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/r;->g()Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    iget v0, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 3281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3282
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3283
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3284
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget v6, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    .line 3285
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    iget v4, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/exoplayer2/audio/r;->a(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    .line 3289
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/r;->a([BI)V

    .line 3290
    iput v3, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    .line 3293
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3242
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3243
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/r;->b(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 3244
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v1, v4

    .line 3245
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    array-length v6, v5

    iget v7, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    sub-int/2addr v6, v7

    if-ge v1, v0, :cond_3

    if-ge v4, v6, :cond_3

    .line 3248
    invoke-direct {p0, v5, v7}, Lcom/google/android/exoplayer2/audio/r;->a([BI)V

    .line 3249
    iput v3, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    .line 3250
    iput v3, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    goto :goto_0

    .line 3253
    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3255
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    iget v5, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    invoke-virtual {p1, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3256
    iget v4, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    .line 3257
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    array-length v5, v1

    if-ne v4, v5, :cond_5

    .line 3260
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/audio/r;->o:Z

    if-eqz v5, :cond_4

    .line 3261
    iget v4, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/audio/r;->a([BI)V

    .line 3262
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    iget v6, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v1, v6

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    goto :goto_1

    .line 3264
    :cond_4
    iget-wide v5, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v4, v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    .line 3266
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    iget v4, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    invoke-direct {p0, p1, v1, v4}, Lcom/google/android/exoplayer2/audio/r;->a(Ljava/nio/ByteBuffer;[BI)V

    .line 3267
    iput v3, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    .line 3268
    iput v2, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    .line 3272
    :cond_5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 1220
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1223
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    array-length v4, v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1365
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lt v3, v2, :cond_8

    .line 1366
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-short v4, p0, Lcom/google/android/exoplayer2/audio/r;->h:S

    if-le v2, v4, :cond_7

    .line 1368
    iget v2, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v3, v2

    mul-int v3, v3, v2

    add-int/2addr v3, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    .line 1371
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1225
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v3, v2, :cond_9

    .line 1227
    iput v1, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    goto :goto_4

    .line 1229
    :cond_9
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 2313
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/audio/r;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v2, :cond_a

    .line 2315
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/r;->o:Z

    .line 1234
    :cond_a
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->d:Z

    return v0
.end method

.method public final b(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 145
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->d:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    return-object p1

    .line 146
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw v0
.end method

.method protected final h()V
    .locals 4

    .line 177
    iget v0, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    if-lez v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/r;->a([BI)V

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->o:Z

    if-nez v0, :cond_1

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    iget v2, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    :cond_1
    return-void
.end method

.method protected final i()V
    .locals 3

    .line 188
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->d:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    .line 190
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/r;->f:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/r;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    mul-int v0, v0, v1

    .line 191
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 192
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    .line 194
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/r;->g:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/r;->a(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/r;->i:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 196
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    :cond_1
    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/google/android/exoplayer2/audio/r;->l:I

    const-wide/16 v1, 0x0

    .line 200
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/r;->e:J

    .line 201
    iput v0, p0, Lcom/google/android/exoplayer2/audio/r;->m:I

    .line 202
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->o:Z

    return-void
.end method

.method protected final j()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/r;->d:Z

    .line 208
    iput v0, p0, Lcom/google/android/exoplayer2/audio/r;->n:I

    .line 209
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->j:[B

    .line 210
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/r;->k:[B

    return-void
.end method
