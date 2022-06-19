.class public final Lpk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# instance fields
.field public final a:Lyt;

.field public final b:Lyt;

.field public final c:Lyt;

.field public final d:Lyt;

.field public final e:Lqk;

.field public f:Lck;

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public n:Lnk;

.field public o:Lsk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lok;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyt;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lpk;->a:Lyt;

    new-instance v0, Lyt;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lpk;->b:Lyt;

    new-instance v0, Lyt;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lpk;->c:Lyt;

    new-instance v0, Lyt;

    invoke-direct {v0}, Lyt;-><init>()V

    iput-object v0, p0, Lpk;->d:Lyt;

    new-instance v0, Lqk;

    invoke-direct {v0}, Lqk;-><init>()V

    iput-object v0, p0, Lpk;->e:Lqk;

    const/4 v0, 0x1

    iput v0, p0, Lpk;->g:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lpk;->h:J

    return-void
.end method

.method public static final synthetic e()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lpk;

    invoke-direct {v1}, Lpk;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 2

    :cond_0
    :goto_0
    iget p2, p0, Lpk;->g:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lpk;->h(Lbk;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p0, p1}, Lpk;->i(Lbk;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lpk;->j(Lbk;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lpk;->g(Lbk;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public b(Lbk;)Z
    .locals 3

    iget-object v0, p0, Lpk;->a:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0}, Lyt;->z()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lpk;->a:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0}, Lyt;->C()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lpk;->a:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lbk;->peekFully([BII)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0, v1}, Lyt;->J(I)V

    iget-object v0, p0, Lpk;->a:Lyt;

    invoke-virtual {v0}, Lyt;->h()I

    move-result v0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lbk;->advancePeekPosition(I)V

    iget-object v0, p0, Lpk;->a:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lbk;->peekFully([BII)V

    iget-object p1, p0, Lpk;->a:Lyt;

    invoke-virtual {p1, v1}, Lyt;->J(I)V

    iget-object p1, p0, Lpk;->a:Lyt;

    invoke-virtual {p1}, Lyt;->h()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c(Lck;)V
    .locals 0

    iput-object p1, p0, Lpk;->f:Lck;

    return-void
.end method

.method public final d()V
    .locals 5

    iget-boolean v0, p0, Lpk;->m:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    iget-object v0, p0, Lpk;->f:Lck;

    new-instance v3, Lik$b;

    invoke-direct {v3, v1, v2}, Lik$b;-><init>(J)V

    invoke-interface {v0, v3}, Lck;->e(Lik;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpk;->m:Z

    :cond_0
    iget-wide v3, p0, Lpk;->h:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lpk;->e:Lqk;

    invoke-virtual {v0}, Lqk;->d()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lpk;->l:J

    neg-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lpk;->h:J

    :cond_2
    return-void
.end method

.method public final f(Lbk;)Lyt;
    .locals 4

    iget v0, p0, Lpk;->k:I

    iget-object v1, p0, Lpk;->d:Lyt;

    invoke-virtual {v1}, Lyt;->b()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lpk;->d:Lyt;

    invoke-virtual {v0}, Lyt;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lpk;->k:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lyt;->H([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpk;->d:Lyt;

    invoke-virtual {v0, v2}, Lyt;->J(I)V

    :goto_0
    iget-object v0, p0, Lpk;->d:Lyt;

    iget v1, p0, Lpk;->k:I

    invoke-virtual {v0, v1}, Lyt;->I(I)V

    iget-object v0, p0, Lpk;->d:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    iget v1, p0, Lpk;->k:I

    invoke-interface {p1, v0, v2, v1}, Lbk;->readFully([BII)V

    iget-object p1, p0, Lpk;->d:Lyt;

    return-object p1
.end method

.method public final g(Lbk;)Z
    .locals 6

    iget-object v0, p0, Lpk;->b:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lbk;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lpk;->b:Lyt;

    invoke-virtual {p1, v1}, Lyt;->J(I)V

    iget-object p1, p0, Lpk;->b:Lyt;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lyt;->K(I)V

    iget-object p1, p0, Lpk;->b:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object p1, p0, Lpk;->n:Lnk;

    if-nez p1, :cond_3

    new-instance p1, Lnk;

    iget-object v4, p0, Lpk;->f:Lck;

    const/16 v5, 0x8

    invoke-interface {v4, v5, v3}, Lck;->track(II)Lkk;

    move-result-object v4

    invoke-direct {p1, v4}, Lnk;-><init>(Lkk;)V

    iput-object p1, p0, Lpk;->n:Lnk;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lpk;->o:Lsk;

    if-nez v1, :cond_4

    new-instance v1, Lsk;

    iget-object v4, p0, Lpk;->f:Lck;

    invoke-interface {v4, v2, p1}, Lck;->track(II)Lkk;

    move-result-object v4

    invoke-direct {v1, v4}, Lsk;-><init>(Lkk;)V

    iput-object v1, p0, Lpk;->o:Lsk;

    :cond_4
    iget-object v1, p0, Lpk;->f:Lck;

    invoke-interface {v1}, Lck;->endTracks()V

    iget-object v1, p0, Lpk;->b:Lyt;

    invoke-virtual {v1}, Lyt;->h()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lpk;->i:I

    iput p1, p0, Lpk;->g:I

    return v3
.end method

.method public final h(Lbk;)Z
    .locals 6

    iget v0, p0, Lpk;->j:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lpk;->n:Lnk;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lpk;->d()V

    iget-object v0, p0, Lpk;->n:Lnk;

    :goto_0
    invoke-virtual {p0, p1}, Lpk;->f(Lbk;)Lyt;

    move-result-object p1

    iget-wide v2, p0, Lpk;->h:J

    iget-wide v4, p0, Lpk;->l:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lrk;->a(Lyt;J)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lpk;->o:Lsk;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lpk;->d()V

    iget-object v0, p0, Lpk;->o:Lsk;

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lpk;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lpk;->e:Lqk;

    invoke-virtual {p0, p1}, Lpk;->f(Lbk;)Lyt;

    move-result-object p1

    iget-wide v2, p0, Lpk;->l:J

    invoke-virtual {v0, p1, v2, v3}, Lrk;->a(Lyt;J)V

    iget-object p1, p0, Lpk;->e:Lqk;

    invoke-virtual {p1}, Lqk;->d()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lpk;->f:Lck;

    new-instance v0, Lik$b;

    invoke-direct {v0, v2, v3}, Lik$b;-><init>(J)V

    invoke-interface {p1, v0}, Lck;->e(Lik;)V

    iput-boolean v1, p0, Lpk;->m:Z

    goto :goto_1

    :cond_2
    iget v0, p0, Lpk;->k:I

    invoke-interface {p1, v0}, Lbk;->skipFully(I)V

    const/4 v1, 0x0

    :cond_3
    :goto_1
    const/4 p1, 0x4

    iput p1, p0, Lpk;->i:I

    const/4 p1, 0x2

    iput p1, p0, Lpk;->g:I

    return v1
.end method

.method public final i(Lbk;)Z
    .locals 6

    iget-object v0, p0, Lpk;->c:Lyt;

    iget-object v0, v0, Lyt;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lbk;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lpk;->c:Lyt;

    invoke-virtual {p1, v1}, Lyt;->J(I)V

    iget-object p1, p0, Lpk;->c:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    iput p1, p0, Lpk;->j:I

    iget-object p1, p0, Lpk;->c:Lyt;

    invoke-virtual {p1}, Lyt;->z()I

    move-result p1

    iput p1, p0, Lpk;->k:I

    iget-object p1, p0, Lpk;->c:Lyt;

    invoke-virtual {p1}, Lyt;->z()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lpk;->l:J

    iget-object p1, p0, Lpk;->c:Lyt;

    invoke-virtual {p1}, Lyt;->w()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lpk;->l:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lpk;->l:J

    iget-object p1, p0, Lpk;->c:Lyt;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lyt;->K(I)V

    const/4 p1, 0x4

    iput p1, p0, Lpk;->g:I

    return v3
.end method

.method public final j(Lbk;)V
    .locals 1

    iget v0, p0, Lpk;->i:I

    invoke-interface {p1, v0}, Lbk;->skipFully(I)V

    const/4 p1, 0x0

    iput p1, p0, Lpk;->i:I

    const/4 p1, 0x3

    iput p1, p0, Lpk;->g:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lpk;->g:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lpk;->h:J

    const/4 p1, 0x0

    iput p1, p0, Lpk;->i:I

    return-void
.end method
