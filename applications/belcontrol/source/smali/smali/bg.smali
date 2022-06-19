.class public abstract Lbg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljh;
.implements Lkh;


# instance fields
.field public final a:I

.field public b:Llh;

.field public c:I

.field public d:I

.field public f:Lxp;

.field public g:[Landroidx/media2/exoplayer/external/Format;

.field public h:J

.field public j:J

.field public k:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbg;->a:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lbg;->j:J

    return-void
.end method

.method public static t(Lmj;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmj<",
            "*>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0, p1}, Lmj;->d(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Llh;[Landroidx/media2/exoplayer/external/Format;Lxp;JZJ)V
    .locals 2

    iget v0, p0, Lbg;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iput-object p1, p0, Lbg;->b:Llh;

    iput v1, p0, Lbg;->d:I

    invoke-virtual {p0, p6}, Lbg;->l(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lbg;->e([Landroidx/media2/exoplayer/external/Format;Lxp;J)V

    invoke-virtual {p0, p4, p5, p6}, Lbg;->m(JZ)V

    return-void
.end method

.method public d(F)V
    .locals 0

    invoke-static {p0, p1}, Lih;->a(Ljh;F)V

    return-void
.end method

.method public final disable()V
    .locals 3

    iget v0, p0, Lbg;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lit;->f(Z)V

    iput v2, p0, Lbg;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbg;->f:Lxp;

    iput-object v0, p0, Lbg;->g:[Landroidx/media2/exoplayer/external/Format;

    iput-boolean v2, p0, Lbg;->k:Z

    invoke-virtual {p0}, Lbg;->k()V

    return-void
.end method

.method public final e([Landroidx/media2/exoplayer/external/Format;Lxp;J)V
    .locals 1

    iget-boolean v0, p0, Lbg;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lit;->f(Z)V

    iput-object p2, p0, Lbg;->f:Lxp;

    iput-wide p3, p0, Lbg;->j:J

    iput-object p1, p0, Lbg;->g:[Landroidx/media2/exoplayer/external/Format;

    iput-wide p3, p0, Lbg;->h:J

    invoke-virtual {p0, p1, p3, p4}, Lbg;->q([Landroidx/media2/exoplayer/external/Format;J)V

    return-void
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lbg;->j:J

    return-wide v0
.end method

.method public final g()Llh;
    .locals 1

    iget-object v0, p0, Lbg;->b:Llh;

    return-object v0
.end method

.method public final getCapabilities()Lkh;
    .locals 0

    return-object p0
.end method

.method public getMediaClock()Lut;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lbg;->d:I

    return v0
.end method

.method public final getStream()Lxp;
    .locals 1

    iget-object v0, p0, Lbg;->f:Lxp;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Lbg;->a:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lbg;->c:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 5

    iget-wide v0, p0, Lbg;->j:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()[Landroidx/media2/exoplayer/external/Format;
    .locals 1

    iget-object v0, p0, Lbg;->g:[Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    iget-boolean v0, p0, Lbg;->k:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lbg;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbg;->k:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbg;->f:Lxp;

    invoke-interface {v0}, Lxp;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Z)V
    .locals 0

    return-void
.end method

.method public abstract m(JZ)V
.end method

.method public final maybeThrowStreamError()V
    .locals 1

    iget-object v0, p0, Lbg;->f:Lxp;

    invoke-interface {v0}, Lxp;->maybeThrowError()V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 0

    return-void
.end method

.method public final r(Lwg;Lzi;Z)I
    .locals 5

    iget-object v0, p0, Lbg;->f:Lxp;

    invoke-interface {v0, p1, p2, p3}, Lxp;->a(Lwg;Lzi;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lwi;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lbg;->j:J

    iget-boolean p1, p0, Lbg;->k:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p2, Lzi;->d:J

    iget-wide v2, p0, Lbg;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lzi;->d:J

    iget-wide p1, p0, Lbg;->j:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lbg;->j:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object p2, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    iget-wide v0, p2, Landroidx/media2/exoplayer/external/Format;->o:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v2, p0, Lbg;->h:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Landroidx/media2/exoplayer/external/Format;->i(J)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    iput-object p2, p1, Lwg;->a:Landroidx/media2/exoplayer/external/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Lbg;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    invoke-virtual {p0}, Lbg;->n()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbg;->k:Z

    iput-wide p1, p0, Lbg;->j:J

    invoke-virtual {p0, p1, p2, v0}, Lbg;->m(JZ)V

    return-void
.end method

.method public s(J)I
    .locals 3

    iget-object v0, p0, Lbg;->f:Lxp;

    iget-wide v1, p0, Lbg;->h:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lxp;->skipData(J)I

    move-result p1

    return p1
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbg;->k:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Lbg;->c:I

    return-void
.end method

.method public final start()V
    .locals 2

    iget v0, p0, Lbg;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lit;->f(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lbg;->d:I

    invoke-virtual {p0}, Lbg;->o()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Lbg;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iput v1, p0, Lbg;->d:I

    invoke-virtual {p0}, Lbg;->p()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
