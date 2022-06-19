.class public final Lym;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lum;


# instance fields
.field public final a:Lyt;

.field public b:Lkk;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyt;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyt;-><init>(I)V

    iput-object v0, p0, Lym;->a:Lyt;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 7

    iget-boolean v0, p0, Lym;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    iget v1, p0, Lym;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p1, Lyt;->a:[B

    invoke-virtual {p1}, Lyt;->c()I

    move-result v4

    iget-object v5, p0, Lym;->a:Lyt;

    iget-object v5, v5, Lyt;->a:[B

    iget v6, p0, Lym;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lym;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lym;->a:Lyt;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lyt;->J(I)V

    const/16 v1, 0x49

    iget-object v4, p0, Lym;->a:Lyt;

    invoke-virtual {v4}, Lyt;->w()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lym;->a:Lyt;

    invoke-virtual {v4}, Lyt;->w()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lym;->a:Lyt;

    invoke-virtual {v4}, Lyt;->w()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lym;->a:Lyt;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lyt;->K(I)V

    iget-object v1, p0, Lym;->a:Lyt;

    invoke-virtual {v1}, Lyt;->v()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lym;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lym;->c:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lym;->e:I

    iget v2, p0, Lym;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lym;->b:Lkk;

    invoke-interface {v1, p1, v0}, Lkk;->c(Lyt;I)V

    iget p1, p0, Lym;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lym;->f:I

    return-void
.end method

.method public b(Lck;Lpn$d;)V
    .locals 3

    invoke-virtual {p2}, Lpn$d;->a()V

    invoke-virtual {p2}, Lpn$d;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lck;->track(II)Lkk;

    move-result-object p1

    iput-object p1, p0, Lym;->b:Lkk;

    invoke-virtual {p2}, Lpn$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/id3"

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p2, v0, v1, v2, v1}, Landroidx/media2/exoplayer/external/Format;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Lkk;->b(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method

.method public c(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lym;->c:Z

    iput-wide p1, p0, Lym;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lym;->e:I

    iput p1, p0, Lym;->f:I

    return-void
.end method

.method public packetFinished()V
    .locals 8

    iget-boolean v0, p0, Lym;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lym;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lym;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lym;->b:Lkk;

    iget-wide v2, p0, Lym;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lkk;->a(JIIILkk$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lym;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lym;->c:Z

    return-void
.end method
