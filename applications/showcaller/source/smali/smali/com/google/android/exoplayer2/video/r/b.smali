.class public Lcom/google/android/exoplayer2/video/r/b;
.super Lcom/google/android/exoplayer2/u;
.source "CameraMotionRenderer.java"


# instance fields
.field private final o:Lcom/google/android/exoplayer2/b1/e;

.field private final p:Lcom/google/android/exoplayer2/util/v;

.field private q:J

.field private r:Lcom/google/android/exoplayer2/video/r/a;

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/u;-><init>(I)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/b1/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/b1/e;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/r/b;->p:Lcom/google/android/exoplayer2/util/v;

    return-void
.end method

.method private Q(Ljava/nio/ByteBuffer;)[F
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/r/b;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/v;->K([BI)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/r/b;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/v;->M(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/r/b;->p:Lcom/google/android/exoplayer2/util/v;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/v;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private R()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/r/b;->s:J

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/r/b;->r:Lcom/google/android/exoplayer2/video/r/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/r/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected G()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/r/b;->R()V

    return-void
.end method

.method protected I(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/r/b;->R()V

    return-void
.end method

.method protected M([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/r/b;->q:J

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->l:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/s0;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/s0;->a(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q(JJ)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->j()Z

    move-result p3

    if-nez p3, :cond_2

    iget-wide p3, p0, Lcom/google/android/exoplayer2/video/r/b;->s:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_2

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/b1/e;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u;->B()Lcom/google/android/exoplayer2/f0;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/exoplayer2/u;->N(Lcom/google/android/exoplayer2/f0;Lcom/google/android/exoplayer2/b1/e;Z)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_2

    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/b1/a;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/b1/e;->i()V

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/r/b;->o:Lcom/google/android/exoplayer2/b1/e;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/b1/e;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/r/b;->s:J

    .line 8
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/r/b;->r:Lcom/google/android/exoplayer2/video/r/a;

    if-eqz p4, :cond_0

    .line 9
    iget-object p3, p3, Lcom/google/android/exoplayer2/b1/e;->e:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/video/r/b;->Q(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-eqz p3, :cond_0

    .line 10
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/r/b;->r:Lcom/google/android/exoplayer2/video/r/a;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/video/r/a;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/r/b;->s:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/r/b;->q:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/google/android/exoplayer2/video/r/a;->a(J[F)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public r(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/exoplayer2/video/r/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/r/b;->r:Lcom/google/android/exoplayer2/video/r/a;

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/u;->r(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
