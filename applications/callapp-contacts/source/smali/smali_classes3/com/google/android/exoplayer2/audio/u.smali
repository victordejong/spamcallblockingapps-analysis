.class final Lcom/google/android/exoplayer2/audio/u;
.super Lcom/google/android/exoplayer2/audio/j;
.source "SourceFile"


# instance fields
.field d:I

.field e:I

.field f:J

.field private g:Z

.field private h:I

.field private i:[B

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/j;-><init>()V

    .line 40
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 82
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    .line 91
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/u;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/u;->f:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/u;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v6, v6, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/u;->f:J

    .line 93
    iget v4, p0, Lcom/google/android/exoplayer2/audio/u;->h:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer2/audio/u;->h:I

    add-int/2addr v0, v3

    .line 94
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->h:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 109
    iget v4, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v4

    .line 110
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 114
    invoke-static {v0, v5, v2}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result v0

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    iget v1, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 124
    iget p1, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    .line 126
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 73
    iget v0, p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/u;->g:Z

    .line 77
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->e:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    :cond_1
    :goto_0
    return-object p1

    .line 74
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)V

    throw v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 4

    .line 131
    invoke-super {p0}, Lcom/google/android/exoplayer2/audio/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    if-lez v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 136
    iput v3, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/audio/j;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 143
    invoke-super {p0}, Lcom/google/android/exoplayer2/audio/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()V
    .locals 5

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/u;->g:Z

    if-eqz v0, :cond_1

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    if-lez v0, :cond_0

    .line 151
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/u;->f:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/u;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/u;->f:J

    :cond_0
    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    :cond_1
    return-void
.end method

.method protected final i()V
    .locals 3

    .line 159
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/u;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/u;->g:Z

    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/u;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:I

    mul-int v0, v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/audio/u;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/u;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->e:I

    mul-int v0, v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/u;->h:I

    .line 174
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/audio/u;->j:I

    return-void
.end method

.method protected final j()V
    .locals 1

    .line 179
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->f:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/u;->i:[B

    return-void
.end method
