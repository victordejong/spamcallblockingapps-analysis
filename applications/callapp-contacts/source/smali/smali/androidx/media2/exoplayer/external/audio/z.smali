.class final Landroidx/media2/exoplayer/external/audio/z;
.super Landroidx/media2/exoplayer/external/audio/q;
.source "SourceFile"


# instance fields
.field e:I

.field f:I

.field g:J

.field private h:Z

.field private i:I

.field private j:Z

.field private k:I

.field private l:[B

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/q;-><init>()V

    .line 48
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 112
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/audio/z;->j:Z

    .line 115
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/audio/z;->g:J

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/z;->i:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/audio/z;->g:J

    .line 117
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    add-int/2addr v0, v3

    .line 118
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    .line 129
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    add-int/2addr v0, v2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 130
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/z;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 133
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v4

    .line 134
    iget-object v6, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 138
    invoke-static {v0, v5, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result v0

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 145
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    .line 146
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 148
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    .line 150
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/z;->h:Z

    return v0
.end method

.method public final a(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 84
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    if-lez v1, :cond_0

    .line 85
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/z;->g:J

    iget v4, p0, Landroidx/media2/exoplayer/external/audio/z;->i:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/audio/z;->g:J

    .line 87
    :cond_0
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/ac;->b(II)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/z;->i:I

    .line 88
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/z;->f:I

    mul-int v2, v1, v0

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    const/4 v2, 0x0

    .line 89
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    .line 90
    iget v3, p0, Landroidx/media2/exoplayer/external/audio/z;->e:I

    mul-int v0, v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    .line 91
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/z;->h:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 92
    :goto_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/z;->h:Z

    .line 93
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/z;->j:Z

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/z;->b(III)Z

    .line 95
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/z;->h:Z

    if-eq v0, p1, :cond_3

    return v4

    :cond_3
    return v2

    .line 82
    :cond_4
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException;-><init>(III)V

    throw v0
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 4

    .line 156
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    if-lez v0, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/audio/z;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    .line 165
    :cond_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/q;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 171
    invoke-super {p0}, Landroidx/media2/exoplayer/external/audio/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()V
    .locals 2

    .line 176
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/z;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/z;->k:I

    .line 184
    :cond_0
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/z;->m:I

    return-void
.end method

.method protected final m()V
    .locals 1

    .line 189
    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/z;->l:[B

    return-void
.end method
