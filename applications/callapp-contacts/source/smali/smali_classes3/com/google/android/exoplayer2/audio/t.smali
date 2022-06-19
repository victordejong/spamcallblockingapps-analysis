.class public final Lcom/google/android/exoplayer2/audio/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioProcessor;


# instance fields
.field b:F

.field c:F

.field d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field f:Z

.field g:Lcom/google/android/exoplayer2/audio/s;

.field h:J

.field i:J

.field private j:I

.field private k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

.field private m:Ljava/nio/ByteBuffer;

.field private n:Ljava/nio/ShortBuffer;

.field private o:Ljava/nio/ByteBuffer;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->b:F

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:F

    .line 67
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 68
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 69
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 70
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 71
    sget-object v0, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/nio/ShortBuffer;

    .line 73
    sget-object v0, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->j:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 144
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/audio/t;->j:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 149
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/t;->k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 152
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/t;->f:Z

    return-object v2

    .line 145
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/s;

    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 174
    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/t;->h:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/t;->h:J

    .line 1101
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    div-int/2addr v3, v4

    .line 1102
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v4, v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 1103
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    .line 1104
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    iget v7, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v6, v6, v7

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v5, v6, v4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 1105
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    .line 1106
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->b()V

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/t;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 161
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:F

    sub-float/2addr v0, v1

    .line 162
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/t;->k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    if-eqz v0, :cond_2

    .line 1132
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    .line 1133
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->b:F

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->c:F

    div-float/2addr v2, v3

    .line 1134
    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->d:F

    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->c:F

    mul-float v3, v3, v4

    .line 1135
    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    int-to-float v5, v1

    div-float/2addr v5, v2

    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    div-float/2addr v5, v3

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v5, v2

    float-to-int v2, v5

    add-int/2addr v4, v2

    .line 1139
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    .line 1140
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/exoplayer2/audio/s;->a([SII)[S

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1142
    :goto_0
    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v5, v5, v6

    if-ge v3, v5, :cond_0

    .line 1143
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/s;->f:[S

    iget v6, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v6, v6, v1

    add-int/2addr v6, v3

    aput-short v2, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1145
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    iget v3, v0, Lcom/google/android/exoplayer2/audio/s;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    .line 1146
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->b()V

    .line 1148
    iget v1, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    if-le v1, v4, :cond_1

    .line 1149
    iput v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    .line 1152
    :cond_1
    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    .line 1153
    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    .line 1154
    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    :cond_2
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    return-void
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 7

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 194
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 195
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 199
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/nio/ShortBuffer;

    .line 2116
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    div-int/2addr v3, v4

    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2117
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 2118
    iget v2, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    .line 2119
    iget-object v2, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v4, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v3, v3, v4

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/s;->h:[S

    iget v5, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    iget v0, v0, Lcom/google/android/exoplayer2/audio/s;->a:I

    mul-int v5, v5, v0

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    .line 208
    sget-object v1, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/s;->a()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 9

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 222
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/t;->f:Z

    if-eqz v2, :cond_0

    .line 223
    new-instance v2, Lcom/google/android/exoplayer2/audio/s;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    iget v6, p0, Lcom/google/android/exoplayer2/audio/t;->b:F

    iget v7, p0, Lcom/google/android/exoplayer2/audio/t;->c:F

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v8, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/s;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    if-eqz v0, :cond_1

    .line 2159
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->g:I

    .line 2160
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->i:I

    .line 2161
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->j:I

    .line 2162
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->k:I

    .line 2163
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->l:I

    .line 2164
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->m:I

    .line 2165
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->n:I

    .line 2166
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->o:I

    .line 2167
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->p:I

    .line 2168
    iput v1, v0, Lcom/google/android/exoplayer2/audio/s;->q:I

    .line 234
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 235
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->h:J

    .line 236
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    .line 237
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    return-void
.end method

.method public final f()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->b:F

    .line 243
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->c:F

    .line 244
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->k:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 245
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->l:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 246
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->d:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 247
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->e:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->m:Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->n:Ljava/nio/ShortBuffer;

    .line 250
    sget-object v0, Lcom/google/android/exoplayer2/audio/t;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/t;->o:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    .line 251
    iput v0, p0, Lcom/google/android/exoplayer2/audio/t;->j:I

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->f:Z

    const/4 v1, 0x0

    .line 253
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/t;->g:Lcom/google/android/exoplayer2/audio/s;

    const-wide/16 v1, 0x0

    .line 254
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/t;->h:J

    .line 255
    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/t;->i:J

    .line 256
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/t;->p:Z

    return-void
.end method
