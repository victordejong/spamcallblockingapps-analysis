.class public final Lap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lfp;
.implements Lfp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lap$a;
    }
.end annotation


# instance fields
.field public final a:Lhp;

.field public final b:Lhp$a;

.field public final c:Les;

.field public d:Lfp;

.field public f:Lfp$a;

.field public g:J

.field public h:Lap$a;

.field public j:Z

.field public k:J


# direct methods
.method public constructor <init>(Lhp;Lhp$a;Les;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lap;->b:Lhp$a;

    iput-object p3, p0, Lap;->c:Les;

    iput-object p1, p0, Lap;->a:Lhp;

    iput-wide p4, p0, Lap;->g:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lap;->k:J

    return-void
.end method


# virtual methods
.method public a(JLnh;)J
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0, p1, p2, p3}, Lfp;->a(JLnh;)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Lfp;)V
    .locals 0

    iget-object p1, p0, Lap;->f:Lfp$a;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lfp$a;

    invoke-interface {p1, p0}, Lfp$a;->b(Lfp;)V

    return-void
.end method

.method public bridge synthetic c(Lyp;)V
    .locals 0

    check-cast p1, Lfp;

    invoke-virtual {p0, p1}, Lap;->j(Lfp;)V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lfp;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lfp$a;J)V
    .locals 0

    iput-object p1, p0, Lap;->f:Lfp$a;

    iget-object p1, p0, Lap;->d:Lfp;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lap;->g:J

    invoke-virtual {p0, p2, p3}, Lap;->i(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lfp;->d(Lfp$a;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0, p1, p2, p3}, Lfp;->discardBuffer(JZ)V

    return-void
.end method

.method public e(Lhp$a;)V
    .locals 4

    iget-wide v0, p0, Lap;->g:J

    invoke-virtual {p0, v0, v1}, Lap;->i(J)J

    move-result-wide v0

    iget-object v2, p0, Lap;->a:Lhp;

    iget-object v3, p0, Lap;->c:Les;

    invoke-interface {v2, p1, v3, v0, v1}, Lhp;->e(Lhp$a;Les;J)Lfp;

    move-result-object p1

    iput-object p1, p0, Lap;->d:Lfp;

    iget-object v2, p0, Lap;->f:Lfp$a;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lfp;->d(Lfp$a;J)V

    :cond_0
    return-void
.end method

.method public f([Lyr;[Z[Lxp;[ZJ)J
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lap;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lap;->g:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    iput-wide v3, v0, Lap;->k:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    :goto_0
    iget-object v1, v0, Lap;->d:Lfp;

    invoke-static {v1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lfp;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v14}, Lfp;->f([Lyr;[Z[Lxp;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lap;->g:J

    return-wide v0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0}, Lfp;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0}, Lfp;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0}, Lfp;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final i(J)J
    .locals 5

    iget-wide v0, p0, Lap;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method public j(Lfp;)V
    .locals 0

    iget-object p1, p0, Lap;->f:Lfp$a;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lfp$a;

    invoke-interface {p1, p0}, Lyp$a;->c(Lyp;)V

    return-void
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lap;->k:J

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lap;->d:Lfp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lap;->a:Lhp;

    invoke-interface {v1, v0}, Lhp;->b(Lfp;)V

    :cond_0
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lap;->d:Lfp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfp;->maybeThrowPrepareError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lap;->a:Lhp;

    invoke-interface {v0}, Lhp;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lap;->h:Lap$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lap;->j:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lap;->j:Z

    iget-object v2, p0, Lap;->b:Lhp$a;

    invoke-interface {v1, v2, v0}, Lap$a;->a(Lhp$a;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0}, Lfp;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0, p1, p2}, Lfp;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Lap;->d:Lfp;

    invoke-static {v0}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lfp;

    invoke-interface {v0, p1, p2}, Lfp;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method
