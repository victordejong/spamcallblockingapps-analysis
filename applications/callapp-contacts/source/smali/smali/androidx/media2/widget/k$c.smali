.class final Landroidx/media2/widget/k$c;
.super Landroidx/media2/common/SessionPlayer$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/k;


# direct methods
.method constructor <init>(Landroidx/media2/widget/k;)V
    .locals 0

    .line 538
    iput-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 1

    .line 561
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Landroidx/media2/widget/k;->f:Landroidx/media2/common/MediaMetadata;

    .line 562
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public final onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 1

    .line 573
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;)V

    return-void
.end method

.method public final onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 1

    .line 550
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;F)V

    return-void
.end method

.method public final onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 1

    .line 543
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget p1, p1, Landroidx/media2/widget/k;->d:I

    if-ne p1, p2, :cond_0

    return-void

    .line 544
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iput p2, p1, Landroidx/media2/widget/k;->d:I

    .line 545
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;I)V

    return-void
.end method

.method public final onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
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

    .line 568
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public final onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 1

    .line 555
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;J)V

    return-void
.end method

.method public final onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 584
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object p2, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public final onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 600
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->b(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public final onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 595
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public final onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
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

    .line 590
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V
    .locals 1

    .line 578
    iget-object p1, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$c;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/VideoSize;)V

    return-void
.end method
