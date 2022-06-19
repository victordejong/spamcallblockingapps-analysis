.class public final Lmm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# instance fields
.field public final a:J

.field public final b:Lnm;

.field public final c:Lyt;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Llm;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lmm;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmm;->a:J

    new-instance p1, Lnm;

    invoke-direct {p1}, Lnm;-><init>()V

    iput-object p1, p0, Lmm;->b:Lnm;

    new-instance p1, Lyt;

    const/16 p2, 0x4000

    invoke-direct {p1, p2}, Lyt;-><init>(I)V

    iput-object p1, p0, Lmm;->c:Lyt;

    return-void
.end method

.method public static final synthetic d()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lmm;

    invoke-direct {v1}, Lmm;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 3

    iget-object p2, p0, Lmm;->c:Lyt;

    iget-object p2, p2, Lyt;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lbk;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lmm;->c:Lyt;

    invoke-virtual {p2, v0}, Lyt;->J(I)V

    iget-object p2, p0, Lmm;->c:Lyt;

    invoke-virtual {p2, p1}, Lyt;->I(I)V

    iget-boolean p1, p0, Lmm;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lmm;->b:Lnm;

    iget-wide v1, p0, Lmm;->a:J

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lnm;->c(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmm;->d:Z

    :cond_1
    iget-object p1, p0, Lmm;->b:Lnm;

    iget-object p2, p0, Lmm;->c:Lyt;

    invoke-virtual {p1, p2}, Lnm;->a(Lyt;)V

    return v0
.end method

.method public b(Lbk;)Z
    .locals 8

    new-instance v0, Lyt;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lyt;->a:[B

    invoke-interface {p1, v4, v2, v1}, Lbk;->peekFully([BII)V

    invoke-virtual {v0, v2}, Lyt;->J(I)V

    invoke-virtual {v0}, Lyt;->z()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_4

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    invoke-interface {p1, v3}, Lbk;->advancePeekPosition(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v5, v0, Lyt;->a:[B

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lbk;->peekFully([BII)V

    invoke-virtual {v0, v2}, Lyt;->J(I)V

    invoke-virtual {v0}, Lyt;->C()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_1

    const v6, 0xac41

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    :cond_0
    invoke-interface {p1, v4}, Lbk;->advancePeekPosition(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    :cond_2
    iget-object v6, v0, Lyt;->a:[B

    invoke-static {v6, v5}, Lth;->e([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x7

    invoke-interface {p1, v5}, Lbk;->advancePeekPosition(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lyt;->K(I)V

    invoke-virtual {v0}, Lyt;->v()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    invoke-interface {p1, v4}, Lbk;->advancePeekPosition(I)V

    goto :goto_0
.end method

.method public c(Lck;)V
    .locals 4

    iget-object v0, p0, Lmm;->b:Lnm;

    new-instance v1, Lpn$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lpn$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lnm;->b(Lck;Lpn$d;)V

    invoke-interface {p1}, Lck;->endTracks()V

    new-instance v0, Lik$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lik$b;-><init>(J)V

    invoke-interface {p1, v0}, Lck;->e(Lik;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmm;->d:Z

    iget-object p1, p0, Lmm;->b:Lnm;

    invoke-virtual {p1}, Lnm;->seek()V

    return-void
.end method
