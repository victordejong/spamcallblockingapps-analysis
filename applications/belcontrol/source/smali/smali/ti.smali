.class public final Lti;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyh;


# instance fields
.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:Z

.field public i:Lsi;

.field public j:Ljava/nio/ByteBuffer;

.field public k:Ljava/nio/ShortBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:J

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lti;->d:F

    iput v0, p0, Lti;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lti;->b:I

    iput v0, p0, Lti;->c:I

    iput v0, p0, Lti;->f:I

    sget-object v1, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lti;->k:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lti;->l:Ljava/nio/ByteBuffer;

    iput v0, p0, Lti;->g:I

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 15

    move-object v0, p0

    iget-wide v5, v0, Lti;->n:J

    const-wide/16 v1, 0x400

    cmp-long v3, v5, v1

    if-ltz v3, :cond_1

    iget v1, v0, Lti;->f:I

    iget v2, v0, Lti;->c:I

    iget-wide v3, v0, Lti;->m:J

    if-ne v1, v2, :cond_0

    move-wide/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lnu;->f0(JJJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    int-to-long v7, v1

    mul-long v11, v3, v7

    int-to-long v1, v2

    mul-long v13, v5, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lnu;->f0(JJJ)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_1
    iget v1, v0, Lti;->d:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public b(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lnu;->m(FFF)F

    move-result p1

    iget v0, p0, Lti;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lti;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lti;->h:Z

    :cond_0
    invoke-virtual {p0}, Lti;->flush()V

    return p1
.end method

.method public c(F)F
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lnu;->m(FFF)F

    move-result p1

    iget v0, p0, Lti;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lti;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lti;->h:Z

    :cond_0
    invoke-virtual {p0}, Lti;->flush()V

    return p1
.end method

.method public configure(III)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget p3, p0, Lti;->g:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move p3, p1

    :cond_0
    iget v0, p0, Lti;->c:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lti;->b:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lti;->f:I

    if-ne v0, p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput p1, p0, Lti;->c:I

    iput p2, p0, Lti;->b:I

    iput p3, p0, Lti;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lti;->h:Z

    return p1

    :cond_2
    new-instance v0, Lyh$a;

    invoke-direct {v0, p1, p2, p3}, Lyh$a;-><init>(III)V

    throw v0
.end method

.method public flush()V
    .locals 7

    invoke-virtual {p0}, Lti;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lti;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lsi;

    iget v2, p0, Lti;->c:I

    iget v3, p0, Lti;->b:I

    iget v4, p0, Lti;->d:F

    iget v5, p0, Lti;->e:F

    iget v6, p0, Lti;->f:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsi;-><init>(IIFFI)V

    iput-object v0, p0, Lti;->i:Lsi;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lti;->i:Lsi;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsi;->i()V

    :cond_1
    :goto_0
    sget-object v0, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lti;->l:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lti;->m:J

    iput-wide v0, p0, Lti;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lti;->o:Z

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lti;->l:Ljava/nio/ByteBuffer;

    sget-object v1, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lti;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getOutputChannelCount()I
    .locals 1

    iget v0, p0, Lti;->b:I

    return v0
.end method

.method public getOutputEncoding()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getOutputSampleRateHz()I
    .locals 1

    iget v0, p0, Lti;->f:I

    return v0
.end method

.method public isActive()Z
    .locals 3

    iget v0, p0, Lti;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lti;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lti;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lti;->f:I

    iget v1, p0, Lti;->c:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lti;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti;->i:Lsi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsi;->j()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queueEndOfStream()V
    .locals 1

    iget-object v0, p0, Lti;->i:Lsi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsi;->r()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti;->o:Z

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    iget-object v0, p0, Lti;->i:Lsi;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lsi;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lti;->m:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lti;->m:J

    invoke-virtual {v0, v1}, Lsi;->s(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    invoke-virtual {v0}, Lsi;->j()I

    move-result p1

    iget v1, p0, Lti;->b:I

    mul-int p1, p1, v1

    mul-int/lit8 p1, p1, 0x2

    if-lez p1, :cond_2

    iget-object v1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lti;->k:Ljava/nio/ShortBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lti;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v1, p0, Lti;->k:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lsi;->k(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lti;->n:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lti;->n:J

    iget-object v0, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lti;->l:Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lti;->d:F

    iput v0, p0, Lti;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lti;->b:I

    iput v0, p0, Lti;->c:I

    iput v0, p0, Lti;->f:I

    sget-object v1, Lyh;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lti;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lti;->k:Ljava/nio/ShortBuffer;

    iput-object v1, p0, Lti;->l:Ljava/nio/ByteBuffer;

    iput v0, p0, Lti;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lti;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lti;->i:Lsi;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lti;->m:J

    iput-wide v1, p0, Lti;->n:J

    iput-boolean v0, p0, Lti;->o:Z

    return-void
.end method
