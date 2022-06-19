.class public final Lpm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# instance fields
.field public final a:I

.field public final b:Lqm;

.field public final c:Lyt;

.field public final d:Lyt;

.field public final e:Lxt;

.field public final f:J

.field public g:Lck;

.field public h:J

.field public i:J

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lom;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lpm;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpm;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lpm;->f:J

    iput-wide p1, p0, Lpm;->h:J

    iput p3, p0, Lpm;->a:I

    new-instance p1, Lqm;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lqm;-><init>(Z)V

    iput-object p1, p0, Lpm;->b:Lqm;

    new-instance p1, Lyt;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lpm;->c:Lyt;

    const/4 p1, -0x1

    iput p1, p0, Lpm;->j:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lpm;->i:J

    new-instance p1, Lyt;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lpm;->d:Lyt;

    new-instance p2, Lxt;

    iget-object p1, p1, Lyt;->a:[B

    invoke-direct {p2, p1}, Lxt;-><init>([B)V

    iput-object p2, p0, Lpm;->e:Lxt;

    return-void
.end method

.method public static e(IJ)I
    .locals 4

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static final synthetic g()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lpm;

    invoke-direct {v1}, Lpm;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 6

    invoke-interface {p1}, Lbk;->getLength()J

    move-result-wide v0

    iget p2, p0, Lpm;->a:I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lpm;->d(Lbk;)V

    :cond_1
    iget-object v4, p0, Lpm;->c:Lyt;

    iget-object v4, v4, Lyt;->a:[B

    const/16 v5, 0x800

    invoke-interface {p1, v4, v3, v5}, Lbk;->read([BII)I

    move-result p1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1, p2, v5}, Lpm;->h(JZZ)V

    if-eqz v5, :cond_3

    return v4

    :cond_3
    iget-object p2, p0, Lpm;->c:Lyt;

    invoke-virtual {p2, v3}, Lyt;->J(I)V

    iget-object p2, p0, Lpm;->c:Lyt;

    invoke-virtual {p2, p1}, Lyt;->I(I)V

    iget-boolean p1, p0, Lpm;->l:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lpm;->b:Lqm;

    iget-wide v0, p0, Lpm;->h:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Lqm;->c(JI)V

    iput-boolean v2, p0, Lpm;->l:Z

    :cond_4
    iget-object p1, p0, Lpm;->b:Lqm;

    iget-object p2, p0, Lpm;->c:Lyt;

    invoke-virtual {p1, p2}, Lqm;->a(Lyt;)V

    return v3
.end method

.method public b(Lbk;)Z
    .locals 8

    invoke-virtual {p0, p1}, Lpm;->i(Lbk;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lpm;->d:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lbk;->peekFully([BII)V

    iget-object v5, p0, Lpm;->d:Lyt;

    invoke-virtual {v5, v1}, Lyt;->J(I)V

    iget-object v5, p0, Lpm;->d:Lyt;

    invoke-virtual {v5}, Lyt;->C()I

    move-result v5

    invoke-static {v5}, Lqm;->j(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v3}, Lbk;->advancePeekPosition(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    :cond_2
    iget-object v5, p0, Lpm;->d:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    invoke-interface {p1, v5, v1, v6}, Lbk;->peekFully([BII)V

    iget-object v5, p0, Lpm;->e:Lxt;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lxt;->l(I)V

    iget-object v5, p0, Lpm;->e:Lxt;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lxt;->g(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    invoke-interface {p1, v6}, Lbk;->advancePeekPosition(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public c(Lck;)V
    .locals 4

    iput-object p1, p0, Lpm;->g:Lck;

    iget-object v0, p0, Lpm;->b:Lqm;

    new-instance v1, Lpn$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lpn$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lqm;->b(Lck;Lpn$d;)V

    invoke-interface {p1}, Lck;->endTracks()V

    return-void
.end method

.method public final d(Lbk;)V
    .locals 10

    iget-boolean v0, p0, Lpm;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lpm;->j:I

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1}, Lbk;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    invoke-virtual {p0, p1}, Lpm;->i(Lbk;)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2
    iget-object v5, p0, Lpm;->d:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-interface {p1, v5, v1, v6, v7}, Lbk;->peekFully([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lpm;->d:Lyt;

    invoke-virtual {v5, v1}, Lyt;->J(I)V

    iget-object v5, p0, Lpm;->d:Lyt;

    invoke-virtual {v5}, Lyt;->C()I

    move-result v5

    invoke-static {v5}, Lqm;->j(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lpm;->d:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    const/4 v6, 0x4

    invoke-interface {p1, v5, v1, v6, v7}, Lbk;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lpm;->e:Lxt;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lxt;->l(I)V

    iget-object v5, p0, Lpm;->e:Lxt;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lxt;->g(I)I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_6

    int-to-long v8, v5

    add-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, -0x6

    invoke-interface {p1, v5, v7}, Lbk;->advancePeekPosition(IZ)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    goto :goto_1

    :cond_6
    iput-boolean v7, p0, Lpm;->k:Z

    new-instance p1, Lch;

    const-string v0, "Malformed ADTS stream"

    invoke-direct {p1, v0}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    move v1, v2

    :goto_2
    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    if-lez v1, :cond_8

    int-to-long v0, v1

    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lpm;->j:I

    goto :goto_3

    :cond_8
    iput v0, p0, Lpm;->j:I

    :goto_3
    iput-boolean v7, p0, Lpm;->k:Z

    return-void
.end method

.method public final f(J)Lik;
    .locals 10

    iget v0, p0, Lpm;->j:I

    iget-object v1, p0, Lpm;->b:Lqm;

    invoke-virtual {v1}, Lqm;->h()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lpm;->e(IJ)I

    move-result v8

    new-instance v0, Lwj;

    iget-wide v6, p0, Lpm;->i:J

    iget v9, p0, Lpm;->j:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lwj;-><init>(JJII)V

    return-object v0
.end method

.method public final h(JZZ)V
    .locals 6

    iget-boolean v0, p0, Lpm;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget p3, p0, Lpm;->j:I

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_2

    iget-object v3, p0, Lpm;->b:Lqm;

    invoke-virtual {v3}, Lqm;->h()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    if-nez p4, :cond_2

    return-void

    :cond_2
    iget-object p4, p0, Lpm;->g:Lck;

    invoke-static {p4}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lck;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lpm;->b:Lqm;

    invoke-virtual {p3}, Lqm;->h()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lpm;->f(J)Lik;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Lik$b;

    invoke-direct {p1, v1, v2}, Lik$b;-><init>(J)V

    :goto_1
    invoke-interface {p4, p1}, Lck;->e(Lik;)V

    iput-boolean v0, p0, Lpm;->m:Z

    return-void
.end method

.method public final i(Lbk;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lpm;->d:Lyt;

    iget-object v2, v2, Lyt;->a:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lbk;->peekFully([BII)V

    iget-object v2, p0, Lpm;->d:Lyt;

    invoke-virtual {v2, v0}, Lyt;->J(I)V

    iget-object v2, p0, Lpm;->d:Lyt;

    invoke-virtual {v2}, Lyt;->z()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1, v1}, Lbk;->advancePeekPosition(I)V

    iget-wide v2, p0, Lpm;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lpm;->i:J

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lpm;->d:Lyt;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lyt;->K(I)V

    iget-object v2, p0, Lpm;->d:Lyt;

    invoke-virtual {v2}, Lyt;->v()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Lbk;->advancePeekPosition(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lpm;->l:Z

    iget-object p1, p0, Lpm;->b:Lqm;

    invoke-virtual {p1}, Lqm;->seek()V

    iget-wide p1, p0, Lpm;->f:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lpm;->h:J

    return-void
.end method
