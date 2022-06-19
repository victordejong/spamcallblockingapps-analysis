.class public final Lzg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lfp;

.field public final b:Ljava/lang/Object;

.field public final c:[Lxp;

.field public d:Z

.field public e:Z

.field public f:Lah;

.field public final g:[Z

.field public final h:[Lkh;

.field public final i:Lbs;

.field public final j:Lhp;

.field public k:Lzg;

.field public l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public m:Lcs;

.field public n:J


# direct methods
.method public constructor <init>([Lkh;JLbs;Les;Lhp;Lah;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg;->h:[Lkh;

    iget-wide v3, p7, Lah;->b:J

    sub-long/2addr p2, v3

    iput-wide p2, p0, Lzg;->n:J

    iput-object p4, p0, Lzg;->i:Lbs;

    iput-object p6, p0, Lzg;->j:Lhp;

    iget-object v0, p7, Lah;->a:Lhp$a;

    iget-object p2, v0, Lhp$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lzg;->b:Ljava/lang/Object;

    iput-object p7, p0, Lzg;->f:Lah;

    array-length p2, p1

    new-array p2, p2, [Lxp;

    iput-object p2, p0, Lzg;->c:[Lxp;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lzg;->g:[Z

    iget-wide v5, p7, Lah;->d:J

    move-object v1, p6

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lzg;->e(Lhp$a;Lhp;Les;JJ)Lfp;

    move-result-object p1

    iput-object p1, p0, Lzg;->a:Lfp;

    return-void
.end method

.method public static e(Lhp$a;Lhp;Les;JJ)Lfp;
    .locals 7

    invoke-interface {p1, p0, p2, p3, p4}, Lhp;->e(Lhp$a;Les;J)Lfp;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    const-wide/high16 p0, -0x8000000000000000L

    cmp-long p2, p5, p0

    if-eqz p2, :cond_0

    new-instance p0, Lro;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lro;-><init>(Lfp;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public static u(JLhp;Lfp;)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    :try_start_0
    check-cast p3, Lro;

    iget-object p0, p3, Lro;->a:Lfp;

    invoke-interface {p2, p0}, Lhp;->b(Lfp;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Lhp;->b(Lfp;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string p2, "Period release failed."

    invoke-static {p1, p2, p0}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcs;JZ)J
    .locals 7

    iget-object v0, p0, Lzg;->h:[Lkh;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lzg;->b(Lcs;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Lcs;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v1, Lcs;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lzg;->g:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lzg;->m:Lcs;

    invoke-virtual {p1, v6, v3}, Lcs;->b(Lcs;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lzg;->c:[Lxp;

    invoke-virtual {p0, v3}, Lzg;->g([Lxp;)V

    invoke-virtual {p0}, Lzg;->f()V

    iput-object v1, v0, Lzg;->m:Lcs;

    invoke-virtual {p0}, Lzg;->h()V

    iget-object v3, v1, Lcs;->c:Lzr;

    iget-object v6, v0, Lzg;->a:Lfp;

    invoke-virtual {v3}, Lzr;->b()[Lyr;

    move-result-object v7

    iget-object v8, v0, Lzg;->g:[Z

    iget-object v9, v0, Lzg;->c:[Lxp;

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Lfp;->f([Lyr;[Z[Lxp;[ZJ)J

    move-result-wide v6

    iget-object v4, v0, Lzg;->c:[Lxp;

    invoke-virtual {p0, v4}, Lzg;->c([Lxp;)V

    iput-boolean v2, v0, Lzg;->e:Z

    const/4 v4, 0x0

    :goto_2
    iget-object v8, v0, Lzg;->c:[Lxp;

    array-length v9, v8

    if-ge v4, v9, :cond_5

    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    invoke-virtual {p1, v4}, Lcs;->c(I)Z

    move-result v8

    invoke-static {v8}, Lit;->f(Z)V

    iget-object v8, v0, Lzg;->h:[Lkh;

    aget-object v8, v8, v4

    invoke-interface {v8}, Lkh;->getTrackType()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_4

    iput-boolean v5, v0, Lzg;->e:Z

    goto :goto_4

    :cond_2
    invoke-virtual {v3, v4}, Lzr;->a(I)Lyr;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-static {v8}, Lit;->f(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-wide v6
.end method

.method public final c([Lxp;)V
    .locals 4

    iget-object v0, p0, Lzg;->m:Lcs;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcs;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lzg;->h:[Lkh;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2}, Lkh;->getTrackType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcs;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lbp;

    invoke-direct {v2}, Lbp;-><init>()V

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(J)V
    .locals 1

    invoke-virtual {p0}, Lzg;->r()Z

    move-result v0

    invoke-static {v0}, Lit;->f(Z)V

    invoke-virtual {p0, p1, p2}, Lzg;->x(J)J

    move-result-wide p1

    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-interface {v0, p1, p2}, Lfp;->continueLoading(J)Z

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lzg;->m:Lcs;

    invoke-virtual {p0}, Lzg;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcs;->a:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcs;->c(I)Z

    move-result v2

    iget-object v3, v0, Lcs;->c:Lzr;

    invoke-virtual {v3, v1}, Lzr;->a(I)Lyr;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lyr;->disable()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g([Lxp;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzg;->h:[Lkh;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lkh;->getTrackType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lzg;->m:Lcs;

    invoke-virtual {p0}, Lzg;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcs;->a:I

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcs;->c(I)Z

    move-result v2

    iget-object v3, v0, Lcs;->c:Lzr;

    invoke-virtual {v3, v1}, Lzr;->a(I)Lyr;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lyr;->enable()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public i()J
    .locals 5

    iget-boolean v0, p0, Lzg;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lzg;->f:Lah;

    iget-wide v0, v0, Lah;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lzg;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-interface {v0}, Lfp;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lzg;->f:Lah;

    iget-wide v3, v0, Lah;->e:J

    :cond_2
    return-wide v3
.end method

.method public j()Lzg;
    .locals 1

    iget-object v0, p0, Lzg;->k:Lzg;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-boolean v0, p0, Lzg;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-interface {v0}, Lfp;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lzg;->n:J

    return-wide v0
.end method

.method public m()J
    .locals 4

    iget-object v0, p0, Lzg;->f:Lah;

    iget-wide v0, v0, Lah;->b:J

    iget-wide v2, p0, Lzg;->n:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lzg;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public o()Lcs;
    .locals 1

    iget-object v0, p0, Lzg;->m:Lcs;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcs;

    return-object v0
.end method

.method public p(FLph;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzg;->d:Z

    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-interface {v0}, Lfp;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lzg;->l:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {p0, p1, p2}, Lzg;->v(FLph;)Lcs;

    move-result-object p1

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcs;

    iget-object p2, p0, Lzg;->f:Lah;

    iget-wide v0, p2, Lah;->b:J

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lzg;->a(Lcs;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lzg;->n:J

    iget-object v2, p0, Lzg;->f:Lah;

    iget-wide v3, v2, Lah;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lzg;->n:J

    invoke-virtual {v2, p1, p2}, Lah;->b(J)Lah;

    move-result-object p1

    iput-object p1, p0, Lzg;->f:Lah;

    return-void
.end method

.method public q()Z
    .locals 5

    iget-boolean v0, p0, Lzg;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzg;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-interface {v0}, Lfp;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lzg;->k:Lzg;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(J)V
    .locals 1

    invoke-virtual {p0}, Lzg;->r()Z

    move-result v0

    invoke-static {v0}, Lit;->f(Z)V

    iget-boolean v0, p0, Lzg;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzg;->a:Lfp;

    invoke-virtual {p0, p1, p2}, Lzg;->x(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lfp;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 4

    invoke-virtual {p0}, Lzg;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzg;->m:Lcs;

    iget-object v0, p0, Lzg;->f:Lah;

    iget-wide v0, v0, Lah;->d:J

    iget-object v2, p0, Lzg;->j:Lhp;

    iget-object v3, p0, Lzg;->a:Lfp;

    invoke-static {v0, v1, v2, v3}, Lzg;->u(JLhp;Lfp;)V

    return-void
.end method

.method public v(FLph;)Lcs;
    .locals 4

    iget-object v0, p0, Lzg;->i:Lbs;

    iget-object v1, p0, Lzg;->h:[Lkh;

    invoke-virtual {p0}, Lzg;->n()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Lzg;->f:Lah;

    iget-object v3, v3, Lah;->a:Lhp$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lbs;->e([Lkh;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lhp$a;Lph;)Lcs;

    move-result-object p2

    iget-object v0, p0, Lzg;->m:Lcs;

    invoke-virtual {p2, v0}, Lcs;->a(Lcs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p2, Lcs;->c:Lzr;

    invoke-virtual {v0}, Lzr;->b()[Lyr;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lyr;->onPlaybackSpeed(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public w(Lzg;)V
    .locals 1

    iget-object v0, p0, Lzg;->k:Lzg;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lzg;->f()V

    iput-object p1, p0, Lzg;->k:Lzg;

    invoke-virtual {p0}, Lzg;->h()V

    return-void
.end method

.method public x(J)J
    .locals 2

    invoke-virtual {p0}, Lzg;->l()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public y(J)J
    .locals 2

    invoke-virtual {p0}, Lzg;->l()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
