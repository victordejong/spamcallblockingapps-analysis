.class public final Lui;
.super Lki;
.source ""


# instance fields
.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:I

.field public n:[B

.field public o:I

.field public p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lki;-><init>()V

    sget-object v0, Lnu;->f:[B

    iput-object v0, p0, Lui;->n:[B

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, Lui;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lui;->m:I

    :cond_0
    iput v1, p0, Lui;->o:I

    return-void
.end method

.method public configure(III)Z
    .locals 6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    iget v1, p0, Lui;->o:I

    if-lez v1, :cond_0

    iget-wide v2, p0, Lui;->p:J

    iget v4, p0, Lui;->k:I

    div-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lui;->p:J

    :cond_0
    invoke-static {v0, p2}, Lnu;->H(II)I

    move-result v0

    iput v0, p0, Lui;->k:I

    iget v1, p0, Lui;->j:I

    mul-int v2, v1, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lui;->n:[B

    const/4 v2, 0x0

    iput v2, p0, Lui;->o:I

    iget v3, p0, Lui;->i:I

    mul-int v0, v0, v3

    iput v0, p0, Lui;->m:I

    iget-boolean v0, p0, Lui;->h:Z

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

    :goto_1
    iput-boolean v1, p0, Lui;->h:Z

    iput-boolean v2, p0, Lui;->l:Z

    invoke-virtual {p0, p1, p2, p3}, Lki;->f(III)Z

    iget-boolean p1, p0, Lui;->h:Z

    if-eq v0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    new-instance v0, Lyh$a;

    invoke-direct {v0, p1, p2, p3}, Lyh$a;-><init>(III)V

    throw v0
.end method

.method public d()V
    .locals 1

    sget-object v0, Lnu;->f:[B

    iput-object v0, p0, Lui;->n:[B

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lui;->p:J

    return-wide v0
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-super {p0}, Lki;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lui;->o:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lki;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lui;->n:[B

    iget v2, p0, Lui;->o:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Lui;->o:I

    :cond_0
    invoke-super {p0}, Lki;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lui;->p:J

    return-void
.end method

.method public i(II)V
    .locals 0

    iput p1, p0, Lui;->i:I

    iput p2, p0, Lui;->j:I

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lui;->h:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Lki;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lui;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lui;->l:Z

    iget v3, p0, Lui;->m:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Lui;->p:J

    iget v6, p0, Lui;->k:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lui;->p:J

    iget v4, p0, Lui;->m:I

    sub-int/2addr v4, v3

    iput v4, p0, Lui;->m:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lui;->m:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    iget v0, p0, Lui;->o:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lui;->n:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lki;->e(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lui;->o:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lnu;->n(III)I

    move-result v4

    iget-object v6, p0, Lui;->n:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    invoke-static {v0, v5, v2}, Lnu;->n(III)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Lui;->o:I

    sub-int/2addr v0, v4

    iput v0, p0, Lui;->o:I

    iget-object v1, p0, Lui;->n:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lui;->n:[B

    iget v1, p0, Lui;->o:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lui;->o:I

    add-int/2addr p1, v2

    iput p1, p0, Lui;->o:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
