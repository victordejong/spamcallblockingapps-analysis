.class public final Landroidx/media2/common/CallbackMediaItemParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/common/CallbackMediaItem;
    .locals 4

    new-instance v0, Landroidx/media2/common/CallbackMediaItem;

    invoke-direct {v0}, Landroidx/media2/common/CallbackMediaItem;-><init>()V

    iget-object v1, v0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->I(Lf40;I)Lf40;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaMetadata;

    iput-object v1, v0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    iget-wide v1, v0, Landroidx/media2/common/MediaItem;->c:J

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/MediaItem;->c:J

    iget-wide v1, v0, Landroidx/media2/common/MediaItem;->d:J

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, v3}, Ld40;->y(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/common/MediaItem;->d:J

    invoke-virtual {v0}, Landroidx/versionedparcelable/CustomVersionedParcelable;->d()V

    return-object v0
.end method

.method public static write(Landroidx/media2/common/CallbackMediaItem;Ld40;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    invoke-virtual {p1}, Ld40;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media2/common/MediaItem;->e(Z)V

    iget-object v0, p0, Landroidx/media2/common/MediaItem;->b:Landroidx/media2/common/MediaMetadata;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->m0(Lf40;I)V

    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ld40;->b0(JI)V

    iget-wide v0, p0, Landroidx/media2/common/MediaItem;->d:J

    const/4 p0, 0x3

    invoke-virtual {p1, v0, v1, p0}, Ld40;->b0(JI)V

    return-void
.end method
