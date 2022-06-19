.class public Lwp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp$a;,
        Lwp$b;
    }
.end annotation


# instance fields
.field public final a:Les;

.field public final b:I

.field public final c:Lvp;

.field public final d:Lvp$a;

.field public final e:Lyt;

.field public f:Lwp$a;

.field public g:Lwp$a;

.field public h:Lwp$a;

.field public i:Landroidx/media2/exoplayer/external/Format;

.field public j:Z

.field public k:Landroidx/media2/exoplayer/external/Format;

.field public l:J

.field public m:J

.field public n:Z

.field public o:Lwp$b;


# direct methods
.method public constructor <init>(Les;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp;->a:Les;

    invoke-interface {p1}, Les;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lwp;->b:I

    new-instance v0, Lvp;

    invoke-direct {v0}, Lvp;-><init>()V

    iput-object v0, p0, Lwp;->c:Lvp;

    new-instance v0, Lvp$a;

    invoke-direct {v0}, Lvp$a;-><init>()V

    iput-object v0, p0, Lwp;->d:Lvp$a;

    new-instance v0, Lyt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lwp;->e:Lyt;

    new-instance v0, Lwp$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lwp$a;-><init>(JI)V

    iput-object v0, p0, Lwp;->f:Lwp$a;

    iput-object v0, p0, Lwp;->g:Lwp$a;

    iput-object v0, p0, Lwp;->h:Lwp$a;

    return-void
.end method

.method public static l(Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/Format;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->o:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/Format;->i(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public A(Z)V
    .locals 3

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0, p1}, Lvp;->u(Z)V

    iget-object p1, p0, Lwp;->f:Lwp$a;

    invoke-virtual {p0, p1}, Lwp;->h(Lwp$a;)V

    new-instance p1, Lwp$a;

    iget v0, p0, Lwp;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lwp$a;-><init>(JI)V

    iput-object p1, p0, Lwp;->f:Lwp$a;

    iput-object p1, p0, Lwp;->g:Lwp$a;

    iput-object p1, p0, Lwp;->h:Lwp$a;

    iput-wide v1, p0, Lwp;->m:J

    iget-object p1, p0, Lwp;->a:Les;

    invoke-interface {p1}, Les;->trim()V

    return-void
.end method

.method public B()V
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->v()V

    iget-object v0, p0, Lwp;->f:Lwp$a;

    iput-object v0, p0, Lwp;->g:Lwp$a;

    return-void
.end method

.method public C(J)V
    .locals 3

    iget-wide v0, p0, Lwp;->l:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lwp;->l:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwp;->j:Z

    :cond_0
    return-void
.end method

.method public D(Lwp$b;)V
    .locals 0

    iput-object p1, p0, Lwp;->o:Lwp$b;

    return-void
.end method

.method public E(I)V
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0, p1}, Lvp;->w(I)V

    return-void
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwp;->n:Z

    return-void
.end method

.method public a(JIIILkk$a;)V
    .locals 11

    move-object v0, p0

    iget-boolean v1, v0, Lwp;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lwp;->k:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0, v1}, Lwp;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_0
    iget-wide v1, v0, Lwp;->l:J

    add-long v4, p1, v1

    iget-boolean v1, v0, Lwp;->n:Z

    if-eqz v1, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lwp;->c:Lvp;

    invoke-virtual {v1, v4, v5}, Lvp;->c(J)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lwp;->n:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-wide v1, v0, Lwp;->m:J

    move v9, p4

    int-to-long v6, v9

    sub-long/2addr v1, v6

    move/from16 v3, p5

    int-to-long v6, v3

    sub-long v7, v1, v6

    iget-object v3, v0, Lwp;->c:Lvp;

    move v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lvp;->d(JIJILkk$a;)V

    return-void
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    iget-wide v0, p0, Lwp;->l:J

    invoke-static {p1, v0, v1}, Lwp;->l(Landroidx/media2/exoplayer/external/Format;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iget-object v1, p0, Lwp;->c:Lvp;

    invoke-virtual {v1, v0}, Lvp;->j(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v1

    iput-object p1, p0, Lwp;->k:Landroidx/media2/exoplayer/external/Format;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lwp;->j:Z

    iget-object p1, p0, Lwp;->o:Lwp$b;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lwp$b;->b(Landroidx/media2/exoplayer/external/Format;)V

    :cond_0
    return-void
.end method

.method public c(Lyt;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lwp;->u(I)I

    move-result v0

    iget-object v1, p0, Lwp;->h:Lwp$a;

    iget-object v2, v1, Lwp$a;->d:Lds;

    iget-object v2, v2, Lds;->a:[B

    iget-wide v3, p0, Lwp;->m:J

    invoke-virtual {v1, v3, v4}, Lwp$a;->c(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lyt;->f([BII)V

    sub-int/2addr p2, v0

    invoke-virtual {p0, v0}, Lwp;->t(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lbk;IZ)I
    .locals 4

    invoke-virtual {p0, p2}, Lwp;->u(I)I

    move-result p2

    iget-object v0, p0, Lwp;->h:Lwp$a;

    iget-object v1, v0, Lwp$a;->d:Lds;

    iget-object v1, v1, Lds;->a:[B

    iget-wide v2, p0, Lwp;->m:J

    invoke-virtual {v0, v2, v3}, Lwp$a;->c(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lbk;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lwp;->t(I)V

    return p1
.end method

.method public final e(J)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lwp;->g:Lwp$a;

    iget-wide v1, v0, Lwp$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v0, v0, Lwp$a;->e:Lwp$a;

    iput-object v0, p0, Lwp;->g:Lwp$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(JZZ)I
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvp;->a(JZZ)I

    move-result p1

    return p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->b()I

    move-result v0

    return v0
.end method

.method public final h(Lwp$a;)V
    .locals 6

    iget-boolean v0, p1, Lwp$a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwp;->h:Lwp$a;

    iget-boolean v1, v0, Lwp$a;->c:Z

    iget-wide v2, v0, Lwp$a;->a:J

    iget-wide v4, p1, Lwp$a;->a:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lwp;->b:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    new-array v0, v1, [Lds;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p1, Lwp$a;->d:Lds;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lwp$a;->a()Lwp$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lwp;->a:Les;

    invoke-interface {p1, v0}, Les;->b([Lds;)V

    return-void
.end method

.method public final i(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lwp;->f:Lwp$a;

    iget-wide v1, v0, Lwp$a;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    iget-object v1, p0, Lwp;->a:Les;

    iget-object v0, v0, Lwp$a;->d:Lds;

    invoke-interface {v1, v0}, Les;->a(Lds;)V

    iget-object v0, p0, Lwp;->f:Lwp$a;

    invoke-virtual {v0}, Lwp$a;->a()Lwp$a;

    move-result-object v0

    iput-object v0, p0, Lwp;->f:Lwp$a;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lwp;->g:Lwp$a;

    iget-wide p1, p1, Lwp$a;->a:J

    iget-wide v1, v0, Lwp$a;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    iput-object v0, p0, Lwp;->g:Lwp$a;

    :cond_2
    return-void
.end method

.method public j(JZZ)V
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lvp;->f(JZZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lwp;->i(J)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lwp;->i(J)V

    return-void
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->m()I

    move-result v0

    return v0
.end method

.method public o()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->o()Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->p()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->q()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->r()Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lwp;->c:Lvp;

    invoke-virtual {v0}, Lvp;->s()I

    move-result v0

    return v0
.end method

.method public final t(I)V
    .locals 5

    iget-wide v0, p0, Lwp;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwp;->m:J

    iget-object p1, p0, Lwp;->h:Lwp$a;

    iget-wide v2, p1, Lwp$a;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lwp$a;->e:Lwp$a;

    iput-object p1, p0, Lwp;->h:Lwp$a;

    :cond_0
    return-void
.end method

.method public final u(I)I
    .locals 6

    iget-object v0, p0, Lwp;->h:Lwp$a;

    iget-boolean v1, v0, Lwp$a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lwp;->a:Les;

    invoke-interface {v1}, Les;->allocate()Lds;

    move-result-object v1

    new-instance v2, Lwp$a;

    iget-object v3, p0, Lwp;->h:Lwp$a;

    iget-wide v3, v3, Lwp$a;->b:J

    iget v5, p0, Lwp;->b:I

    invoke-direct {v2, v3, v4, v5}, Lwp$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lwp$a;->b(Lds;Lwp$a;)V

    :cond_0
    iget-object v0, p0, Lwp;->h:Lwp$a;

    iget-wide v0, v0, Lwp$a;->b:J

    iget-wide v2, p0, Lwp;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public v(Lwg;Lzi;ZZJ)I
    .locals 7

    iget-object v0, p0, Lwp;->c:Lvp;

    iget-object v5, p0, Lwp;->i:Landroidx/media2/exoplayer/external/Format;

    iget-object v6, p0, Lwp;->d:Lvp$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lvp;->t(Lwg;Lzi;ZZLandroidx/media2/exoplayer/external/Format;Lvp$a;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p2}, Lwi;->e()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p2, Lzi;->d:J

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p3}, Lwi;->a(I)V

    :cond_2
    invoke-virtual {p2}, Lzi;->l()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lzi;->k()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lwp;->d:Lvp$a;

    invoke-virtual {p0, p2, p3}, Lwp;->y(Lzi;Lvp$a;)V

    :cond_3
    iget-object p3, p0, Lwp;->d:Lvp$a;

    iget p3, p3, Lvp$a;->a:I

    invoke-virtual {p2, p3}, Lzi;->i(I)V

    iget-object p3, p0, Lwp;->d:Lvp$a;

    iget-wide p4, p3, Lvp$a;->b:J

    iget-object p2, p2, Lzi;->c:Ljava/nio/ByteBuffer;

    iget p3, p3, Lvp$a;->a:I

    invoke-virtual {p0, p4, p5, p2, p3}, Lwp;->w(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    :cond_5
    iget-object p1, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iput-object p1, p0, Lwp;->i:Landroidx/media2/exoplayer/external/Format;

    return p4
.end method

.method public final w(JLjava/nio/ByteBuffer;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lwp;->e(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    iget-object v0, p0, Lwp;->g:Lwp$a;

    iget-wide v0, v0, Lwp$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lwp;->g:Lwp$a;

    iget-object v2, v1, Lwp$a;->d:Lds;

    iget-object v2, v2, Lds;->a:[B

    invoke-virtual {v1, p1, p2}, Lwp$a;->c(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lwp;->g:Lwp$a;

    iget-wide v1, v0, Lwp$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iget-object v0, v0, Lwp$a;->e:Lwp$a;

    iput-object v0, p0, Lwp;->g:Lwp$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x(J[BI)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lwp;->e(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lwp;->g:Lwp$a;

    iget-wide v1, v1, Lwp$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lwp;->g:Lwp$a;

    iget-object v3, v2, Lwp$a;->d:Lds;

    iget-object v3, v3, Lds;->a:[B

    invoke-virtual {v2, p1, p2}, Lwp$a;->c(J)I

    move-result v2

    sub-int v4, p4, v0

    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-object v1, p0, Lwp;->g:Lwp$a;

    iget-wide v2, v1, Lwp$a;->b:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    iget-object v1, v1, Lwp$a;->e:Lwp$a;

    iput-object v1, p0, Lwp;->g:Lwp$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y(Lzi;Lvp$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v2, Lvp$a;->b:J

    iget-object v5, v0, Lwp;->e:Lyt;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lyt;->F(I)V

    iget-object v5, v0, Lwp;->e:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lwp;->x(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iget-object v5, v0, Lwp;->e:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    iget-object v9, v1, Lzi;->b:Lxi;

    iget-object v10, v9, Lxi;->a:[B

    if-nez v10, :cond_1

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lxi;->a:[B

    :cond_1
    iget-object v9, v9, Lxi;->a:[B

    invoke-virtual {v0, v3, v4, v9, v5}, Lwp;->x(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    iget-object v5, v0, Lwp;->e:Lyt;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lyt;->F(I)V

    iget-object v5, v0, Lwp;->e:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    invoke-virtual {v0, v3, v4, v5, v6}, Lwp;->x(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lwp;->e:Lyt;

    invoke-virtual {v5}, Lyt;->C()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    :goto_1
    iget-object v5, v1, Lzi;->b:Lxi;

    iget-object v6, v5, Lxi;->b:[I

    if-eqz v6, :cond_3

    array-length v9, v6

    if-ge v9, v10, :cond_4

    :cond_3
    new-array v6, v10, [I

    :cond_4
    move-object v11, v6

    iget-object v5, v5, Lxi;->c:[I

    if-eqz v5, :cond_5

    array-length v6, v5

    if-ge v6, v10, :cond_6

    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    iget-object v6, v0, Lwp;->e:Lyt;

    invoke-virtual {v6, v5}, Lyt;->F(I)V

    iget-object v6, v0, Lwp;->e:Lyt;

    iget-object v6, v6, Lyt;->a:[B

    invoke-virtual {v0, v3, v4, v6, v5}, Lwp;->x(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lwp;->e:Lyt;

    invoke-virtual {v5, v7}, Lyt;->J(I)V

    :goto_2
    if-ge v7, v10, :cond_8

    iget-object v5, v0, Lwp;->e:Lyt;

    invoke-virtual {v5}, Lyt;->C()I

    move-result v5

    aput v5, v11, v7

    iget-object v5, v0, Lwp;->e:Lyt;

    invoke-virtual {v5}, Lyt;->A()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    aput v7, v11, v7

    iget v5, v2, Lvp$a;->a:I

    iget-wide v8, v2, Lvp$a;->b:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    :cond_8
    iget-object v5, v2, Lvp$a;->c:Lkk$a;

    iget-object v9, v1, Lzi;->b:Lxi;

    iget-object v13, v5, Lkk$a;->b:[B

    iget-object v14, v9, Lxi;->a:[B

    iget v15, v5, Lkk$a;->a:I

    iget v1, v5, Lkk$a;->c:I

    iget v5, v5, Lkk$a;->d:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lxi;->b(I[I[I[B[BIII)V

    iget-wide v5, v2, Lvp$a;->b:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    int-to-long v3, v1

    add-long/2addr v5, v3

    iput-wide v5, v2, Lvp$a;->b:J

    iget v3, v2, Lvp$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, Lvp$a;->a:I

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwp;->A(Z)V

    return-void
.end method
