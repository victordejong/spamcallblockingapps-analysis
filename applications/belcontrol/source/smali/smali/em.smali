.class public abstract Lem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem$c;,
        Lem$b;
    }
.end annotation


# instance fields
.field public final a:Lam;

.field public b:Lkk;

.field public c:Lck;

.field public d:Lcm;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:Lem$b;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lam;

    invoke-direct {v0}, Lam;-><init>()V

    iput-object v0, p0, Lem;->a:Lam;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lem;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public b(J)J
    .locals 2

    iget v0, p0, Lem;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public c(Lck;Lkk;)V
    .locals 0

    iput-object p1, p0, Lem;->c:Lck;

    iput-object p2, p0, Lem;->b:Lkk;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lem;->j(Z)V

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lem;->g:J

    return-void
.end method

.method public abstract e(Lyt;)J
.end method

.method public final f(Lbk;Lhk;)I
    .locals 3

    iget v0, p0, Lem;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lem;->i(Lbk;Lhk;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-wide v0, p0, Lem;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lbk;->skipFully(I)V

    iput v2, p0, Lem;->h:I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lem;->g(Lbk;)I

    move-result p1

    return p1
.end method

.method public final g(Lbk;)I
    .locals 17

    move-object/from16 v11, p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v11, Lem;->a:Lam;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lam;->d(Lbk;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    iput v0, v11, Lem;->h:I

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lbk;->getPosition()J

    move-result-wide v3

    iget-wide v5, v11, Lem;->f:J

    sub-long/2addr v3, v5

    iput-wide v3, v11, Lem;->k:J

    iget-object v1, v11, Lem;->a:Lam;

    invoke-virtual {v1}, Lam;->c()Lyt;

    move-result-object v1

    iget-wide v3, v11, Lem;->f:J

    iget-object v5, v11, Lem;->j:Lem$b;

    invoke-virtual {v11, v1, v3, v4, v5}, Lem;->h(Lyt;JLem$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lbk;->getPosition()J

    move-result-wide v3

    iput-wide v3, v11, Lem;->f:J

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    iget-object v1, v11, Lem;->j:Lem$b;

    iget-object v1, v1, Lem$b;->a:Landroidx/media2/exoplayer/external/Format;

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->y:I

    iput v3, v11, Lem;->i:I

    iget-boolean v3, v11, Lem;->m:Z

    if-nez v3, :cond_3

    iget-object v3, v11, Lem;->b:Lkk;

    invoke-interface {v3, v1}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    iput-boolean v0, v11, Lem;->m:Z

    :cond_3
    iget-object v1, v11, Lem;->j:Lem$b;

    iget-object v1, v1, Lem$b;->b:Lcm;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    iput-object v1, v11, Lem;->d:Lcm;

    goto :goto_2

    :cond_4
    invoke-interface/range {p1 .. p1}, Lbk;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    new-instance v0, Lem$c;

    invoke-direct {v0, v13}, Lem$c;-><init>(Lem$a;)V

    iput-object v0, v11, Lem;->d:Lcm;

    goto :goto_2

    :cond_5
    iget-object v1, v11, Lem;->a:Lam;

    invoke-virtual {v1}, Lam;->b()Lbm;

    move-result-object v1

    iget v3, v1, Lbm;->b:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    new-instance v14, Lwl;

    iget-wide v3, v11, Lem;->f:J

    invoke-interface/range {p1 .. p1}, Lbk;->getLength()J

    move-result-wide v5

    iget v0, v1, Lbm;->e:I

    iget v2, v1, Lbm;->f:I

    add-int/2addr v0, v2

    int-to-long v7, v0

    iget-wide v1, v1, Lbm;->c:J

    move-object v0, v14

    move-wide v15, v1

    move-wide v1, v3

    move-wide v3, v5

    move-object/from16 v5, p0

    move-wide v6, v7

    move-wide v8, v15

    invoke-direct/range {v0 .. v10}, Lwl;-><init>(JJLem;JJZ)V

    iput-object v14, v11, Lem;->d:Lcm;

    :goto_2
    iput-object v13, v11, Lem;->j:Lem$b;

    const/4 v0, 0x2

    iput v0, v11, Lem;->h:I

    iget-object v0, v11, Lem;->a:Lam;

    invoke-virtual {v0}, Lam;->f()V

    return v12
.end method

.method public abstract h(Lyt;JLem$b;)Z
.end method

.method public final i(Lbk;Lhk;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lem;->d:Lcm;

    invoke-interface {v2, v1}, Lcm;->a(Lbk;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    iput-wide v2, v7, Lhk;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lem;->d(J)V

    :cond_1
    iget-boolean v2, v0, Lem;->l:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lem;->d:Lcm;

    invoke-interface {v2}, Lcm;->createSeekMap()Lik;

    move-result-object v2

    iget-object v3, v0, Lem;->c:Lck;

    invoke-interface {v3, v2}, Lck;->e(Lik;)V

    iput-boolean v4, v0, Lem;->l:Z

    :cond_2
    iget-wide v2, v0, Lem;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lem;->a:Lam;

    invoke-virtual {v2, v1}, Lam;->d(Lbk;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Lem;->h:I

    const/4 v1, -0x1

    return v1

    :cond_4
    :goto_0
    iput-wide v5, v0, Lem;->k:J

    iget-object v1, v0, Lem;->a:Lam;

    invoke-virtual {v1}, Lam;->c()Lyt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lem;->e(Lyt;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    iget-wide v4, v0, Lem;->g:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lem;->e:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    invoke-virtual {v0, v4, v5}, Lem;->a(J)J

    move-result-wide v10

    iget-object v4, v0, Lem;->b:Lkk;

    invoke-virtual {v1}, Lyt;->d()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lkk;->c(Lyt;I)V

    iget-object v9, v0, Lem;->b:Lkk;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lyt;->d()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lkk;->a(JIIILkk$a;)V

    iput-wide v7, v0, Lem;->e:J

    :cond_5
    iget-wide v4, v0, Lem;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lem;->g:J

    const/4 v1, 0x0

    return v1
.end method

.method public j(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lem$b;

    invoke-direct {p1}, Lem$b;-><init>()V

    iput-object p1, p0, Lem;->j:Lem$b;

    iput-wide v0, p0, Lem;->f:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lem;->h:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lem;->e:J

    iput-wide v0, p0, Lem;->g:J

    return-void
.end method

.method public final k(JJ)V
    .locals 3

    iget-object v0, p0, Lem;->a:Lam;

    invoke-virtual {v0}, Lam;->e()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lem;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lem;->j(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lem;->h:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lem;->d:Lcm;

    invoke-interface {p1, p3, p4}, Lcm;->startSeek(J)J

    move-result-wide p1

    iput-wide p1, p0, Lem;->e:J

    const/4 p1, 0x2

    iput p1, p0, Lem;->h:I

    :cond_1
    :goto_0
    return-void
.end method
