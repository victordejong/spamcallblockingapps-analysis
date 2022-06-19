.class final Landroidx/media2/session/o$c;
.super Landroidx/media2/session/MediaSession$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;)V
    .locals 0

    .line 770
    iput-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    invoke-direct {p0}, Landroidx/media2/session/MediaSession$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 914
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    invoke-direct {v2, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 915
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v4

    .line 916
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v6

    const/4 v3, 0x2

    .line 4184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;

    move-result-object p1

    .line 917
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 919
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 2914
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->d(I)V

    return-void
.end method

.method final a(IJJF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 824
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 823
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(IJJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 816
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 815
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(IJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 840
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 839
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 847
    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object p2

    invoke-static {p2}, Landroidx/media2/session/s;->a(Landroidx/media2/common/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    .line 1817
    :goto_0
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 848
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 849
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 848
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;IJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 832
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->I()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p2

    .line 831
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    return-void
.end method

.method final a(ILandroidx/media2/common/MediaMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 883
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 2796
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 883
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->c()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    .line 887
    invoke-virtual {p2, v0}, Landroidx/media2/common/MediaMetadata;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.media.metadata.TITLE"

    .line 889
    invoke-virtual {p2, v0}, Landroidx/media2/common/MediaMetadata;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 893
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 894
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method final a(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILandroidx/media2/common/SessionPlayer$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILandroidx/media2/common/VideoSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILandroidx/media2/session/LibraryResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILandroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILandroidx/media2/session/SessionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final a(ILjava/util/List;Landroidx/media2/common/MediaMetadata;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x15

    if-ge p4, p5, :cond_2

    if-nez p2, :cond_0

    .line 857
    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Ljava/util/List;)V

    goto :goto_0

    .line 861
    :cond_0
    invoke-static {p2}, Landroidx/media2/session/s;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 862
    invoke-static {p4}, Landroidx/media2/session/s;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 864
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    if-eq p5, p6, :cond_1

    .line 865
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Sending "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " items out of "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 868
    :cond_1
    iget-object p2, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p2, p2, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Ljava/util/List;)V

    goto :goto_0

    .line 874
    :cond_2
    iget-object p4, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p4, p4, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p4}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p4

    .line 875
    invoke-static {p2}, Landroidx/media2/session/s;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 874
    invoke-virtual {p4, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Ljava/util/List;)V

    .line 877
    :goto_0
    invoke-virtual {p0, p1, p3}, Landroidx/media2/session/o$c;->a(ILandroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method final a(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method final b(IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    iget-object p1, p0, Landroidx/media2/session/o$c;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    .line 3899
    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->c(I)V

    return-void
.end method

.method final b(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
