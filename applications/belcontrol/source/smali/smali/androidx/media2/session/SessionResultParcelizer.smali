.class public final Landroidx/media2/session/SessionResultParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/session/SessionResult;
    .locals 4

    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0}, Landroidx/media2/session/SessionResult;-><init>()V

    iget v1, v0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/session/SessionResult;->a:I

    iget-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/session/SessionResult;->b:J

    iget-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    iget-object v1, v0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object p0

    check-cast p0, Landroidx/media2/common/MediaItem;

    iput-object p0, v0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public static write(Landroidx/media2/session/SessionResult;Ld40;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    iget v0, p0, Landroidx/media2/session/SessionResult;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-wide v0, p0, Landroidx/media2/session/SessionResult;->b:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ld40;->b0(JI)V

    iget-object v0, p0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ld40;->O(Landroid/os/Bundle;I)V

    iget-object p0, p0, Landroidx/media2/session/SessionResult;->d:Landroidx/media2/common/MediaItem;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Ld40;->m0(Lf40;I)V

    return-void
.end method
