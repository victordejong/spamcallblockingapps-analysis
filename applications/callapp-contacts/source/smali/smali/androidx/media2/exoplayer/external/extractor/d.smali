.class public final Landroidx/media2/exoplayer/external/extractor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/h;


# instance fields
.field public a:I

.field private final b:[B

.field private final c:Landroidx/media2/exoplayer/external/upstream/f;

.field private final d:J

.field private e:J

.field private f:[B

.field private g:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;JJ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d;->c:Landroidx/media2/exoplayer/external/upstream/f;

    .line 57
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/d;->e:J

    .line 58
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/d;->d:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 59
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 60
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d;->b:[B

    return-void
.end method

.method private a([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->c:Landroidx/media2/exoplayer/external/upstream/f;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p2

    .line 271
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    add-int/2addr p4, p1

    return p4

    .line 264
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private d([BII)I
    .locals 2

    .line 218
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 222
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/extractor/d;->f(I)V

    return p3
.end method

.method private d(I)V
    .locals 3

    .line 189
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    add-int/2addr v0, p1

    .line 190
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 191
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroidx/media2/exoplayer/external/util/ac;->a(III)I

    move-result p1

    .line 193
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    :cond_0
    return-void
.end method

.method private e(I)I
    .locals 1

    .line 204
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 205
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d;->f(I)V

    return p1
.end method

.method private f(I)V
    .locals 5

    .line 233
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    const/4 v1, 0x0

    .line 234
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    .line 235
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    .line 236
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 237
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 239
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iput-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    return-void
.end method

.method private g(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 283
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->e:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d;->e(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d;->b:[B

    const/4 v3, 0x0

    array-length v0, v2

    .line 95
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIIZ)I

    move-result v0

    .line 97
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d;->g(I)V

    return v0
.end method

.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/d;->d([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 67
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIIZ)I

    move-result v0

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/d;->g(I)V

    return v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    return-void
.end method

.method public final a(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d;->d(I)V

    .line 139
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 141
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    add-int/2addr v0, v5

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->g:I

    goto :goto_0

    .line 148
    :cond_1
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public final a([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/d;->d([BII)I

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

    .line 78
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d;->g(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()J
    .locals 4

    .line 164
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->e:J

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1104
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d;->e(I)I

    move-result v0

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_0

    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    .line 1106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->b:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1107
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d;->b:[B

    neg-int v3, v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 1108
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 1110
    :cond_0
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/extractor/d;->g(I)V

    return-void
.end method

.method public final b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/d;->a([BIIZ)Z

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p3, p4}, Landroidx/media2/exoplayer/external/extractor/d;->a(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    iget-object p4, p0, Landroidx/media2/exoplayer/external/extractor/d;->f:[B

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->a:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c()J
    .locals 2

    .line 169
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->e:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/d;->a(IZ)Z

    return-void
.end method

.method public final c([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/extractor/d;->b([BIIZ)Z

    return-void
.end method

.method public final d()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d;->d:J

    return-wide v0
.end method
