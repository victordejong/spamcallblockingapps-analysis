.class public Lzl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lak;


# instance fields
.field public a:Lck;

.field public b:Lem;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyl;->a:Ldk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic d()[Lak;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lak;

    new-instance v1, Lzl;

    invoke-direct {v1}, Lzl;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static e(Lyt;)Lyt;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyt;->J(I)V

    return-object p0
.end method


# virtual methods
.method public a(Lbk;Lhk;)I
    .locals 4

    iget-object v0, p0, Lzl;->b:Lem;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lzl;->f(Lbk;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lbk;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    new-instance p1, Lch;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lch;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lzl;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lzl;->a:Lck;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lck;->track(II)Lkk;

    move-result-object v0

    iget-object v1, p0, Lzl;->a:Lck;

    invoke-interface {v1}, Lck;->endTracks()V

    iget-object v1, p0, Lzl;->b:Lem;

    iget-object v3, p0, Lzl;->a:Lck;

    invoke-virtual {v1, v3, v0}, Lem;->c(Lck;Lkk;)V

    iput-boolean v2, p0, Lzl;->c:Z

    :cond_2
    iget-object v0, p0, Lzl;->b:Lem;

    invoke-virtual {v0, p1, p2}, Lem;->f(Lbk;Lhk;)I

    move-result p1

    return p1
.end method

.method public b(Lbk;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lzl;->f(Lbk;)Z

    move-result p1
    :try_end_0
    .catch Lch; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lck;)V
    .locals 0

    iput-object p1, p0, Lzl;->a:Lck;

    return-void
.end method

.method public final f(Lbk;)Z
    .locals 5

    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbm;->a(Lbk;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lbm;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, v0, Lbm;->f:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lyt;

    invoke-direct {v2, v0}, Lyt;-><init>(I)V

    iget-object v4, v2, Lyt;->a:[B

    invoke-interface {p1, v4, v3, v0}, Lbk;->peekFully([BII)V

    invoke-static {v2}, Lzl;->e(Lyt;)Lyt;

    invoke-static {v2}, Lxl;->o(Lyt;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lxl;

    invoke-direct {p1}, Lxl;-><init>()V

    :goto_0
    iput-object p1, p0, Lzl;->b:Lem;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lzl;->e(Lyt;)Lyt;

    invoke-static {v2}, Lgm;->p(Lyt;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lgm;

    invoke-direct {p1}, Lgm;-><init>()V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lzl;->e(Lyt;)Lyt;

    invoke-static {v2}, Ldm;->n(Lyt;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ldm;

    invoke-direct {p1}, Ldm;-><init>()V

    goto :goto_0

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget-object v0, p0, Lzl;->b:Lem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lem;->k(JJ)V

    :cond_0
    return-void
.end method
