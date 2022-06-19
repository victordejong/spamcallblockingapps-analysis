.class public final Landroidx/media2/common/TrackInfoParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 3

    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>()V

    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iput-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    iget v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    iget-object v1, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->d()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/SessionPlayer$TrackInfo;Ld40;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    invoke-virtual {p1}, Ld40;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->e(Z)V

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object p0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Ld40;->O(Landroid/os/Bundle;I)V

    return-void
.end method
