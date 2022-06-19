.class final Lcom/google/android/exoplayer2/mediacodec/d;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "SourceFile"


# instance fields
.field g:J

.field h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    const/16 v0, 0x20

    .line 45
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/d;->i:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 95
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 96
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 97
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/d;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1124
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/d;->i:I

    if-lt v0, v3, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1127
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/d;->E_()Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 1131
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/nio/ByteBuffer;

    .line 1133
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/2addr v3, v0

    const v0, 0x2ee000

    if-le v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    return v2

    .line 101
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    if-nez v0, :cond_4

    .line 102
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/d;->e:J

    .line 103
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2068
    iput v1, p0, Lcom/google/android/exoplayer2/decoder/a;->a:I

    .line 107
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, -0x80000000

    .line 3068
    iput v0, p0, Lcom/google/android/exoplayer2/decoder/a;->a:I

    .line 110
    :cond_5
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/d;->c(I)V

    .line 113
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/d;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 115
    :cond_6
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/d;->g:J

    return v1
.end method

.method public final d(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 57
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/d;->i:I

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/d;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
