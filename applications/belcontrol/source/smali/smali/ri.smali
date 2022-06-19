.class public final Lri;
.super Lki;
.source ""


# instance fields
.field public h:I

.field public i:Z

.field public j:[B

.field public k:[B

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lki;-><init>()V

    sget-object v0, Lnu;->f:[B

    iput-object v0, p0, Lri;->j:[B

    iput-object v0, p0, Lri;->k:[B

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    invoke-virtual {p0}, Lri;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x249f0

    invoke-virtual {p0, v0, v1}, Lri;->g(J)I

    move-result v0

    iget v1, p0, Lri;->h:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lri;->j:[B

    array-length v1, v1

    if-eq v1, v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lri;->j:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v0, v1}, Lri;->g(J)I

    move-result v0

    iget v1, p0, Lri;->h:I

    mul-int v0, v0, v1

    iput v0, p0, Lri;->n:I

    iget-object v1, p0, Lri;->k:[B

    array-length v1, v1

    if-eq v1, v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Lri;->k:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lri;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lri;->p:J

    iput v0, p0, Lri;->m:I

    iput-boolean v0, p0, Lri;->o:Z

    return-void
.end method

.method public c()V
    .locals 4

    iget v0, p0, Lri;->m:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lri;->j:[B

    invoke-virtual {p0, v1, v0}, Lri;->l([BI)V

    :cond_0
    iget-boolean v0, p0, Lri;->o:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lri;->p:J

    iget v2, p0, Lri;->n:I

    iget v3, p0, Lri;->h:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lri;->p:J

    :cond_1
    return-void
.end method

.method public configure(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lri;->h:I

    invoke-virtual {p0, p1, p2, p3}, Lki;->f(III)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lyh$a;

    invoke-direct {v0, p1, p2, p3}, Lyh$a;-><init>(III)V

    throw v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lri;->i:Z

    iput v0, p0, Lri;->n:I

    sget-object v0, Lnu;->f:[B

    iput-object v0, p0, Lri;->j:[B

    iput-object v0, p0, Lri;->k:[B

    return-void
.end method

.method public final g(J)I
    .locals 2

    iget v0, p0, Lki;->b:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final h(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget p1, p0, Lri;->h:I

    div-int/2addr v0, p1

    mul-int v0, v0, p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1
.end method

.method public final i(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget p1, p0, Lri;->h:I

    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Lki;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lri;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lri;->p:J

    return-wide v0
.end method

.method public final k(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lki;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lri;->o:Z

    :cond_0
    return-void
.end method

.method public final l([BI)V
    .locals 2

    invoke-virtual {p0, p2}, Lki;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lri;->o:Z

    :cond_0
    return-void
.end method

.method public final m(Ljava/nio/ByteBuffer;)V
    .locals 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1}, Lri;->i(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lri;->j:[B

    array-length v4, v3

    iget v5, p0, Lri;->m:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-ge v1, v0, :cond_0

    if-ge v2, v4, :cond_0

    invoke-virtual {p0, v3, v5}, Lri;->l([BI)V

    iput v6, p0, Lri;->m:I

    iput v6, p0, Lri;->l:I

    goto :goto_1

    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lri;->j:[B

    iget v3, p0, Lri;->m:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Lri;->m:I

    add-int/2addr v2, v1

    iput v2, p0, Lri;->m:I

    iget-object v1, p0, Lri;->j:[B

    array-length v3, v1

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lri;->o:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Lri;->n:I

    invoke-virtual {p0, v1, v2}, Lri;->l([BI)V

    iget-wide v1, p0, Lri;->p:J

    iget v3, p0, Lri;->m:I

    iget v5, p0, Lri;->n:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lri;->h:I

    div-int/2addr v3, v5

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lri;->p:J

    goto :goto_0

    :cond_1
    iget-wide v7, p0, Lri;->p:J

    iget v1, p0, Lri;->n:I

    sub-int/2addr v2, v1

    iget v1, p0, Lri;->h:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v7, v1

    iput-wide v7, p0, Lri;->p:J

    :goto_0
    iget-object v1, p0, Lri;->j:[B

    iget v2, p0, Lri;->m:I

    invoke-virtual {p0, p1, v1, v2}, Lri;->q(Ljava/nio/ByteBuffer;[BI)V

    iput v6, p0, Lri;->m:I

    iput v4, p0, Lri;->l:I

    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_1
    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lri;->j:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lri;->h(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lri;->l:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lri;->k(Ljava/nio/ByteBuffer;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final o(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, p1}, Lri;->i(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v2, p0, Lri;->p:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lri;->h:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lri;->p:J

    iget-object v2, p0, Lri;->k:[B

    iget v3, p0, Lri;->n:I

    invoke-virtual {p0, p1, v2, v3}, Lri;->q(Ljava/nio/ByteBuffer;[BI)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lri;->k:[B

    iget v2, p0, Lri;->n:I

    invoke-virtual {p0, v1, v2}, Lri;->l([BI)V

    const/4 v1, 0x0

    iput v1, p0, Lri;->l:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lri;->i:Z

    invoke-virtual {p0}, Lki;->flush()V

    return-void
.end method

.method public final q(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lri;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lri;->n:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lri;->k:[B

    const/4 v3, 0x0

    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lri;->k:[B

    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lki;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lri;->l:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lri;->o(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lri;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lri;->n(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    return-void
.end method
