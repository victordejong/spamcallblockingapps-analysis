.class public Landroidx/media2/widget/VideoView$f;
.super Luw$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/VideoView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Luw$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Luw;Landroidx/media2/common/MediaItem;)V
    .locals 2

    sget-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaItemChanged(): MediaItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/VideoView;->k(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public e(Luw;I)V
    .locals 2

    sget-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged(): state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p1

    return-void
.end method

.method public h(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 4

    sget-boolean p2, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSubtitleData(): TrackInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", getCurrentPosition: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Luw;->o()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", getStartTimeUs(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->e()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", diff: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1}, Luw;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms, getDurationUs(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroidx/media2/common/SubtitleData;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->q:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p3, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->o:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfx;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lfx;->f(Landroidx/media2/common/SubtitleData;)V

    :cond_3
    return-void
.end method

.method public i(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    sget-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackDeselected(): deselected track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->o:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfx;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->p:Lex;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lex;->m(Lfx;)Z

    :cond_2
    return-void
.end method

.method public j(Luw;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luw;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackInfoChanged(): tracks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/VideoView;->l(Luw;Ljava/util/List;)V

    iget-object p2, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Luw;->n()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media2/widget/VideoView;->k(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public k(Luw;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    sget-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSelected(): selected track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->o:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfx;

    if-eqz p1, :cond_2

    iget-object p2, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->p:Lex;

    invoke-virtual {p2, p1}, Lex;->m(Lfx;)Z

    :cond_2
    return-void
.end method

.method public l(Luw;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V
    .locals 1

    sget-boolean p2, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVideoSizeChanged(): size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/widget/VideoView$f;->m(Luw;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget p2, p2, Landroidx/media2/widget/VideoView;->m:I

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->c()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p3}, Landroidx/media2/common/VideoSize;->d()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p2}, Landroidx/media2/widget/VideoView;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Luw;->w()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/widget/VideoView;->l(Luw;Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->f:Ljx;

    invoke-virtual {p1}, Landroid/view/TextureView;->forceLayout()V

    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->g:Lix;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->forceLayout()V

    iget-object p1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final m(Luw;)Z
    .locals 3

    const-string v0, "VideoView"

    iget-object v1, p0, Landroidx/media2/widget/VideoView$f;->a:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eq p1, v1, :cond_1

    sget-boolean p1, Landroidx/media2/widget/VideoView;->t:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be ignored. player is already gone."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "A PlayerCallback should be ignored. player is already gone."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
