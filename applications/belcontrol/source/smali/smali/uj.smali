.class public abstract Luj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luj$a;,
        Luj$f;,
        Luj$d;,
        Luj$e;,
        Luj$b;,
        Luj$c;,
        Luj$g;
    }
.end annotation


# instance fields
.field public final a:Luj$a;

.field public final b:Luj$g;

.field public c:Luj$d;

.field public final d:I


# direct methods
.method public constructor <init>(Luj$e;Luj$g;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Luj;->b:Luj$g;

    move/from16 v1, p15

    iput v1, v0, Luj;->d:I

    new-instance v15, Luj$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Luj$a;-><init>(Luj$e;JJJJJJ)V

    iput-object v15, v0, Luj;->a:Luj$a;

    return-void
.end method


# virtual methods
.method public a(J)Luj$d;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Luj$d;

    iget-object v1, v0, Luj;->a:Luj$a;

    move-wide/from16 v4, p1

    invoke-virtual {v1, v4, v5}, Luj$a;->g(J)J

    iget-object v1, v0, Luj;->a:Luj$a;

    invoke-static {v1}, Luj$a;->a(Luj$a;)J

    move-result-wide v6

    iget-object v1, v0, Luj;->a:Luj$a;

    invoke-static {v1}, Luj$a;->b(Luj$a;)J

    move-result-wide v8

    iget-object v1, v0, Luj;->a:Luj$a;

    invoke-static {v1}, Luj$a;->c(Luj$a;)J

    move-result-wide v10

    iget-object v1, v0, Luj;->a:Luj$a;

    invoke-static {v1}, Luj$a;->e(Luj$a;)J

    move-result-wide v12

    iget-object v1, v0, Luj;->a:Luj$a;

    invoke-static {v1}, Luj$a;->f(Luj$a;)J

    move-result-wide v14

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Luj$d;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method public final b()Lik;
    .locals 1

    iget-object v0, p0, Luj;->a:Luj$a;

    return-object v0
.end method

.method public c(Lbk;Lhk;Luj$c;)I
    .locals 12

    iget-object v0, p0, Luj;->b:Luj$g;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Luj$g;

    :goto_0
    iget-object v1, p0, Luj;->c:Luj$d;

    invoke-static {v1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Luj$d;

    invoke-static {v1}, Luj$d;->b(Luj$d;)J

    move-result-wide v2

    invoke-static {v1}, Luj$d;->c(Luj$d;)J

    move-result-wide v4

    invoke-static {v1}, Luj$d;->d(Luj$d;)J

    move-result-wide v6

    sub-long/2addr v4, v2

    iget v8, p0, Luj;->d:I

    int-to-long v8, v8

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gtz v11, :cond_0

    invoke-virtual {p0, v10, v2, v3}, Luj;->e(ZJ)V

    invoke-virtual {p0, p1, v2, v3, p2}, Luj;->g(Lbk;JLhk;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, v6, v7}, Luj;->i(Lbk;J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v6, v7, p2}, Luj;->g(Lbk;JLhk;)I

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-static {v1}, Luj$d;->e(Luj$d;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3, p3}, Luj$g;->a(Lbk;JLuj$c;)Luj$f;

    move-result-object v2

    invoke-static {v2}, Luj$f;->a(Luj$f;)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    const/4 p3, 0x1

    invoke-static {v2}, Luj$f;->c(Luj$f;)J

    move-result-wide v0

    invoke-virtual {p0, p3, v0, v1}, Luj;->e(ZJ)V

    invoke-static {v2}, Luj$f;->c(Luj$f;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Luj;->i(Lbk;J)Z

    invoke-static {v2}, Luj$f;->c(Luj$f;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Luj;->g(Lbk;JLhk;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {v2}, Luj$f;->b(Luj$f;)J

    move-result-wide v3

    invoke-static {v2}, Luj$f;->c(Luj$f;)J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Luj$d;->f(Luj$d;JJ)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Luj$f;->b(Luj$f;)J

    move-result-wide v3

    invoke-static {v2}, Luj$f;->c(Luj$f;)J

    move-result-wide v5

    invoke-static {v1, v3, v4, v5, v6}, Luj$d;->g(Luj$d;JJ)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v10, v6, v7}, Luj;->e(ZJ)V

    invoke-virtual {p0, p1, v6, v7, p2}, Luj;->g(Lbk;JLhk;)I

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Luj;->c:Luj$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(ZJ)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Luj;->c:Luj$d;

    iget-object v0, p0, Luj;->b:Luj$g;

    invoke-interface {v0}, Luj$g;->b()V

    invoke-virtual {p0, p1, p2, p3}, Luj;->f(ZJ)V

    return-void
.end method

.method public f(ZJ)V
    .locals 0

    return-void
.end method

.method public final g(Lbk;JLhk;)I
    .locals 2

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-wide p2, p4, Lhk;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final h(J)V
    .locals 3

    iget-object v0, p0, Luj;->c:Luj$d;

    if-eqz v0, :cond_0

    invoke-static {v0}, Luj$d;->a(Luj$d;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Luj;->a(J)Luj$d;

    move-result-object p1

    iput-object p1, p0, Luj;->c:Luj$d;

    return-void
.end method

.method public final i(Lbk;J)Z
    .locals 3

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lbk;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
