.class final Landroidx/media2/widget/VideoView$b;
.super Landroidx/media2/widget/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0

    .line 715
    iput-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Landroidx/media2/widget/k$b;-><init>()V

    return-void
.end method

.method private d(Landroidx/media2/widget/k;)Z
    .locals 3

    const-string v0, "VideoView"

    .line 824
    iget-object v1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eq p1, v1, :cond_1

    .line 825
    sget-boolean p1, Landroidx/media2/widget/VideoView;->a:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 827
    :try_start_0
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 828
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    .line 829
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

    .line 831
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a(Landroidx/media2/widget/k;I)V
    .locals 0

    .line 770
    sget-boolean p2, Landroidx/media2/widget/VideoView;->a:Z

    .line 773
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 781
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCurrentMediaItemChanged(): MediaItem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 784
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 786
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 801
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrackSelected(): selected track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 804
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 805
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/widget/p;

    if-eqz p1, :cond_2

    .line 807
    iget-object p2, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/o;->a(Landroidx/media2/widget/p;)Z

    :cond_2
    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 5

    .line 749
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSubtitleData(): TrackInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getCurrentPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {p1}, Landroidx/media2/widget/k;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", getStartTimeUs(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4099
    iget-wide v1, p3, Landroidx/media2/common/SubtitleData;->a:J

    .line 753
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5099
    iget-wide v1, p3, Landroidx/media2/common/SubtitleData;->a:J

    const-wide/16 v3, 0x3e8

    .line 755
    div-long/2addr v1, v3

    invoke-virtual {p1}, Landroidx/media2/widget/k;->d()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, getDurationUs(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5107
    iget-wide v1, p3, Landroidx/media2/common/SubtitleData;->b:J

    .line 756
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 758
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 759
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 762
    :cond_2
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/widget/p;

    if-eqz p1, :cond_3

    .line 764
    invoke-virtual {p1, p3}, Landroidx/media2/widget/p;->a(Landroidx/media2/common/SubtitleData;)V

    :cond_3
    return-void
.end method

.method final a(Landroidx/media2/widget/k;Landroidx/media2/common/VideoSize;)V
    .locals 2

    .line 729
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoSizeChanged(): size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget v0, v0, Landroidx/media2/widget/VideoView;->k:I

    if-nez v0, :cond_3

    .line 2074
    iget v0, p2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v0, :cond_3

    .line 3066
    iget p2, p2, Landroidx/media2/common/VideoSize;->a:I

    if-lez p2, :cond_3

    .line 734
    iget-object p2, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    .line 3581
    iget-object v0, p2, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    .line 3582
    invoke-virtual {v0}, Landroidx/media2/widget/k;->f()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    .line 3583
    invoke-virtual {p2}, Landroidx/media2/widget/k;->f()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 735
    invoke-virtual {p1}, Landroidx/media2/widget/k;->o()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 737
    iget-object v0, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    .line 741
    :cond_3
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    invoke-virtual {p1}, Landroidx/media2/widget/s;->forceLayout()V

    .line 742
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    invoke-virtual {p1}, Landroidx/media2/widget/r;->forceLayout()V

    .line 743
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Landroidx/media2/widget/VideoView;->requestLayout()V

    return-void
.end method

.method final a(Landroidx/media2/widget/k;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/k;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 791
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrackInfoChanged(): tracks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 794
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    .line 796
    iget-object p2, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    invoke-virtual {p1}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method final b(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 813
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrackDeselected(): deselected track: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 816
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 817
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/widget/p;

    if-eqz p1, :cond_2

    .line 819
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media2/widget/o;->a(Landroidx/media2/widget/p;)Z

    :cond_2
    return-void
.end method

.method final c(Landroidx/media2/widget/k;)V
    .locals 1

    .line 718
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    .line 721
    invoke-direct {p0, p1}, Landroidx/media2/widget/VideoView$b;->d(Landroidx/media2/widget/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 722
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    .line 1084
    iget-boolean p1, p1, Landroidx/media2/widget/i;->ah:Z

    if-eqz p1, :cond_1

    .line 723
    iget-object p1, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    iget-object v0, p0, Landroidx/media2/widget/VideoView$b;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-interface {p1, v0}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    :cond_1
    return-void
.end method
