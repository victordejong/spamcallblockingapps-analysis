.class public final Lcom/google/android/exoplayer2/extractor/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/i;


# instance fields
.field private final a:[B

.field private final b:Lcom/google/android/exoplayer2/upstream/e;

.field private final c:J

.field private d:J

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;JJ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 52
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/e;->d:J

    .line 53
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/e;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e;->a:[B

    return-void
.end method

.method private a([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e;->b:Lcom/google/android/exoplayer2/upstream/e;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 288
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 281
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method private d(I)V
    .locals 3

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    add-int/2addr v0, p1

    .line 207
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 208
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/af;->a(III)I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .line 221
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e;->f(I)V

    return p1
.end method

.method private e([BII)I
    .locals 2

    .line 235
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/e;->f(I)V

    return p3
.end method

.method private f(I)V
    .locals 5

    .line 250
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    const/4 v1, 0x0

    .line 251
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    .line 252
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    .line 253
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 254
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 256
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    return-void
.end method

.method private g(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 300
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e;->d:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e;->e(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e;->a:[B

    const/4 v3, 0x0

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result v0

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/e;->g(I)V

    return v0
.end method

.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/e;->e([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 63
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result v0

    .line 66
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/e;->g(I)V

    return v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    return-void
.end method

.method public final a(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e;->d(I)V

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 159
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    goto :goto_0

    .line 165
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    const/4 p1, 0x1

    return p1
.end method

.method public final a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/e;->e([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/e;->g(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()J
    .locals 4

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e;->d:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1098
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e;->e(I)I

    move-result v0

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e;->a:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1101
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e;->a:[B

    neg-int v3, v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 1102
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 1104
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/e;->g(I)V

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIZ)Z

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/e;->a(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/e;->d(I)V

    .line 116
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 120
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/e;->a([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/e;->g:I

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e;->e:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/e;->f:I

    return p3
.end method

.method public final c()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e;->d:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/e;->a(IZ)Z

    return-void
.end method

.method public final d()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e;->c:J

    return-wide v0
.end method

.method public final d([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/e;->b([BIIZ)Z

    return-void
.end method
