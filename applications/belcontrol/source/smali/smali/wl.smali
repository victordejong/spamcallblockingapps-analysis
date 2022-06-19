.class public final Lwl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwl$b;
    }
.end annotation


# instance fields
.field public final a:Lbm;

.field public final b:J

.field public final c:J

.field public final d:Lem;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(JJLem;JJZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    iput-object v0, p0, Lwl;->a:Lbm;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lit;->a(Z)V

    iput-object p5, p0, Lwl;->d:Lem;

    iput-wide p1, p0, Lwl;->b:J

    iput-wide p3, p0, Lwl;->c:J

    sub-long/2addr p3, p1

    cmp-long p1, p6, p3

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v0, p0, Lwl;->e:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lwl;->f:J

    const/4 p1, 0x3

    iput p1, p0, Lwl;->e:I

    :goto_2
    return-void
.end method

.method public static synthetic b(Lwl;)J
    .locals 2

    iget-wide v0, p0, Lwl;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lwl;)Lem;
    .locals 0

    iget-object p0, p0, Lwl;->d:Lem;

    return-object p0
.end method

.method public static synthetic d(Lwl;JJJ)J
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lwl;->g(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic e(Lwl;)J
    .locals 2

    iget-wide v0, p0, Lwl;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Lbk;)J
    .locals 14

    iget v0, p0, Lwl;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-wide v0, p0, Lwl;->h:J

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lwl;->h(JLbk;)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-ltz v7, :cond_3

    return-wide v0

    :cond_3
    iget-wide v10, p0, Lwl;->h:J

    add-long/2addr v0, v3

    neg-long v12, v0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lwl;->m(Lbk;JJ)J

    move-result-wide v5

    :goto_0
    iput v2, p0, Lwl;->e:I

    add-long/2addr v5, v3

    neg-long v0, v5

    return-wide v0

    :cond_4
    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lwl;->g:J

    iput v1, p0, Lwl;->e:I

    iget-wide v0, p0, Lwl;->c:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p0, p1}, Lwl;->i(Lbk;)J

    move-result-wide v0

    iput-wide v0, p0, Lwl;->f:J

    iput v2, p0, Lwl;->e:I

    iget-wide v0, p0, Lwl;->g:J

    return-wide v0
.end method

.method public bridge synthetic createSeekMap()Lik;
    .locals 1

    invoke-virtual {p0}, Lwl;->f()Lwl$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lwl$b;
    .locals 6

    iget-wide v0, p0, Lwl;->f:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lwl$b;

    invoke-direct {v0, p0, v2}, Lwl$b;-><init>(Lwl;Lwl$a;)V

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public final g(JJJ)J
    .locals 6

    iget-wide v0, p0, Lwl;->c:J

    iget-wide v2, p0, Lwl;->b:J

    sub-long v4, v0, v2

    mul-long p3, p3, v4

    iget-wide v4, p0, Lwl;->f:J

    div-long/2addr p3, v4

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const-wide/16 p1, 0x1

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method public h(JLbk;)J
    .locals 12

    iget-wide v0, p0, Lwl;->i:J

    iget-wide v2, p0, Lwl;->j:J

    const-wide/16 v4, 0x2

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    iget-wide p1, p0, Lwl;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    :cond_0
    invoke-interface {p3}, Lbk;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lwl;->j:J

    invoke-virtual {p0, p3, v2, v3}, Lwl;->l(Lbk;J)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide p1, p0, Lwl;->i:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No ogg page can be found."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, p0, Lwl;->a:Lbm;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lbm;->a(Lbk;Z)Z

    invoke-interface {p3}, Lbk;->resetPeekPosition()V

    iget-object v2, p0, Lwl;->a:Lbm;

    iget-wide v6, v2, Lbm;->c:J

    sub-long/2addr p1, v6

    iget v3, v2, Lbm;->e:I

    iget v2, v2, Lbm;->f:I

    add-int/2addr v3, v2

    const-wide/16 v8, 0x0

    cmp-long v2, p1, v8

    if-ltz v2, :cond_4

    const-wide/32 v8, 0x11940

    cmp-long v10, p1, v8

    if-lez v10, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p3, v3}, Lbk;->skipFully(I)V

    iget-object p1, p0, Lwl;->a:Lbm;

    iget-wide p1, p1, Lbm;->c:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    :cond_4
    :goto_0
    const-wide/32 v8, 0x186a0

    if-gez v2, :cond_5

    iput-wide v0, p0, Lwl;->j:J

    iput-wide v6, p0, Lwl;->l:J

    goto :goto_1

    :cond_5
    invoke-interface {p3}, Lbk;->getPosition()J

    move-result-wide v0

    int-to-long v6, v3

    add-long/2addr v0, v6

    iput-wide v0, p0, Lwl;->i:J

    iget-object v10, p0, Lwl;->a:Lbm;

    iget-wide v10, v10, Lbm;->c:J

    iput-wide v10, p0, Lwl;->k:J

    iget-wide v10, p0, Lwl;->j:J

    sub-long/2addr v10, v0

    add-long/2addr v10, v6

    cmp-long v0, v10, v8

    if-gez v0, :cond_6

    invoke-interface {p3, v3}, Lbk;->skipFully(I)V

    iget-wide p1, p0, Lwl;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    :cond_6
    :goto_1
    iget-wide v0, p0, Lwl;->j:J

    iget-wide v6, p0, Lwl;->i:J

    sub-long/2addr v0, v6

    cmp-long v10, v0, v8

    if-gez v10, :cond_7

    iput-wide v6, p0, Lwl;->j:J

    return-wide v6

    :cond_7
    int-to-long v0, v3

    const-wide/16 v6, 0x1

    if-gtz v2, :cond_8

    goto :goto_2

    :cond_8
    move-wide v4, v6

    :goto_2
    mul-long v0, v0, v4

    invoke-interface {p3}, Lbk;->getPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lwl;->j:J

    iget-wide v4, p0, Lwl;->i:J

    sub-long/2addr v0, v4

    mul-long p1, p1, v0

    iget-wide v0, p0, Lwl;->l:J

    iget-wide v8, p0, Lwl;->k:J

    sub-long/2addr v0, v8

    div-long/2addr p1, v0

    add-long/2addr v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lwl;->j:J

    sub-long/2addr v0, v6

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public i(Lbk;)J
    .locals 5

    invoke-virtual {p0, p1}, Lwl;->k(Lbk;)V

    iget-object v0, p0, Lwl;->a:Lbm;

    invoke-virtual {v0}, Lbm;->b()V

    :goto_0
    iget-object v0, p0, Lwl;->a:Lbm;

    iget v0, v0, Lbm;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lwl;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lwl;->a:Lbm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbm;->a(Lbk;Z)Z

    iget-object v0, p0, Lwl;->a:Lbm;

    iget v1, v0, Lbm;->e:I

    iget v0, v0, Lbm;->f:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lbk;->skipFully(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lwl;->a:Lbm;

    iget-wide v0, p1, Lbm;->c:J

    return-wide v0
.end method

.method public j()V
    .locals 2

    iget-wide v0, p0, Lwl;->b:J

    iput-wide v0, p0, Lwl;->i:J

    iget-wide v0, p0, Lwl;->c:J

    iput-wide v0, p0, Lwl;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwl;->k:J

    iget-wide v0, p0, Lwl;->f:J

    iput-wide v0, p0, Lwl;->l:J

    return-void
.end method

.method public k(Lbk;)V
    .locals 2

    iget-wide v0, p0, Lwl;->c:J

    invoke-virtual {p0, p1, v0, v1}, Lwl;->l(Lbk;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public l(Lbk;J)Z
    .locals 6

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    iget-wide v0, p0, Lwl;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    new-array v1, v0, [B

    :goto_0
    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, p2

    if-lez v5, :cond_0

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v2

    sub-long v2, p2, v2

    long-to-int v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v4

    :cond_0
    invoke-interface {p1, v1, v4, v0, v4}, Lbk;->peekFully([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v0, -0x3

    if-ge v4, v2, :cond_2

    aget-byte v2, v1, v4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    invoke-interface {p1, v4}, Lbk;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v2}, Lbk;->skipFully(I)V

    goto :goto_0
.end method

.method public m(Lbk;JJ)J
    .locals 5

    iget-object v0, p0, Lwl;->a:Lbm;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbm;->a(Lbk;Z)Z

    :goto_0
    iget-object v0, p0, Lwl;->a:Lbm;

    iget-wide v2, v0, Lbm;->c:J

    cmp-long v4, v2, p2

    if-gez v4, :cond_0

    iget p4, v0, Lbm;->e:I

    iget p5, v0, Lbm;->f:I

    add-int/2addr p4, p5

    invoke-interface {p1, p4}, Lbk;->skipFully(I)V

    iget-object p4, p0, Lwl;->a:Lbm;

    iget-wide v2, p4, Lbm;->c:J

    invoke-virtual {p4, p1, v1}, Lbm;->a(Lbk;Z)Z

    move-wide p4, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    return-wide p4
.end method

.method public startSeek(J)J
    .locals 4

    iget v0, p0, Lwl;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lit;->a(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lwl;->d:Lem;

    invoke-virtual {v0, p1, p2}, Lem;->b(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lwl;->h:J

    iput v1, p0, Lwl;->e:I

    invoke-virtual {p0}, Lwl;->j()V

    iget-wide p1, p0, Lwl;->h:J

    return-wide p1
.end method
