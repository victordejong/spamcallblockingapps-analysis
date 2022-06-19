.class public abstract Lev$i0;
.super Landroidx/media2/common/SessionPlayer$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i0"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmInfo(Lev;Landroidx/media2/common/MediaItem;Lev$a0;)V
    .locals 0

    return-void
.end method

.method public onError(Lev;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    return-void
.end method

.method public onInfo(Lev;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    return-void
.end method

.method public onMediaTimeDiscontinuity(Lev;Landroidx/media2/common/MediaItem;Lgv;)V
    .locals 0

    return-void
.end method

.method public onTimedMetaDataAvailable(Lev;Landroidx/media2/common/MediaItem;Liv;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lev;Landroidx/media2/common/MediaItem;Ljv;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChangedInternal(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 1

    instance-of v0, p1, Lev;

    if-eqz v0, :cond_0

    new-instance v0, Ljv;

    invoke-direct {v0, p3}, Ljv;-><init>(Landroidx/media2/common/VideoSize;)V

    check-cast p1, Lev;

    invoke-virtual {p0, p1, p2, v0}, Lev$i0;->onVideoSizeChanged(Lev;Landroidx/media2/common/MediaItem;Ljv;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "player must be MediaPlayer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
