.class public final Lsq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lxp;


# instance fields
.field public final a:I

.field public final b:Lwq;

.field public c:I


# direct methods
.method public constructor <init>(Lwq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsq;->b:Lwq;

    iput p2, p0, Lsq;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lsq;->c:I

    return-void
.end method


# virtual methods
.method public a(Lwg;Lzi;Z)I
    .locals 2

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lwi;->a(I)V

    const/4 p1, -0x4

    return p1

    :cond_0
    invoke-virtual {p0}, Lsq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsq;->b:Lwq;

    iget v1, p0, Lsq;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lwq;->G(ILwg;Lzi;Z)I

    move-result v1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->a(Z)V

    iget-object v0, p0, Lsq;->b:Lwq;

    iget v1, p0, Lsq;->a:I

    invoke-virtual {v0, v1}, Lwq;->g(I)I

    move-result v0

    iput v0, p0, Lsq;->c:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsq;->b:Lwq;

    iget v2, p0, Lsq;->a:I

    invoke-virtual {v0, v2}, Lwq;->P(I)V

    iput v1, p0, Lsq;->c:I

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lsq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->b:Lwq;

    iget v1, p0, Lsq;->c:I

    invoke-virtual {v0, v1}, Lwq;->w(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public maybeThrowError()V
    .locals 3

    iget v0, p0, Lsq;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lsq;->b:Lwq;

    invoke-virtual {v0}, Lwq;->z()V

    return-void

    :cond_0
    new-instance v0, Lxq;

    iget-object v1, p0, Lsq;->b:Lwq;

    invoke-virtual {v1}, Lwq;->getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v1

    iget v2, p0, Lsq;->a:I

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lxq;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipData(J)I
    .locals 2

    invoke-virtual {p0}, Lsq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsq;->b:Lwq;

    iget v1, p0, Lsq;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lwq;->O(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
