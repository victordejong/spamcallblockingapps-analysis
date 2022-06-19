.class public Luw$c;
.super Landroidx/media2/common/SessionPlayer$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Luw;


# direct methods
.method public constructor <init>(Luw;)V
    .locals 0

    iput-object p1, p0, Luw$c;->a:Luw;

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->h()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Luw;->j:Landroidx/media2/common/MediaMetadata;

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->b(Luw;Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1}, Luw$b;->c(Luw;)V

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->d(Luw;F)V

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget v0, p1, Luw;->h:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p2, p1, Luw;->h:I

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->e(Luw;I)V

    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2, p3}, Luw$b;->f(Luw;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2, p3}, Luw$b;->g(Luw;J)V

    return-void
.end method

.method public onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Luw$b;->h(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->i(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public onTrackInfoChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->j(Luw;Ljava/util/List;)V

    return-void
.end method

.method public onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2}, Luw$b;->k(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 1

    iget-object p1, p0, Luw$c;->a:Luw;

    iget-object v0, p1, Luw;->d:Luw$b;

    invoke-virtual {v0, p1, p2, p3}, Luw$b;->l(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    return-void
.end method
