.class Landroid/support/v4/media/session/MediaSessionCompat$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/media/session/MediaSession;

.field final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final c:Ljava/lang/Object;

.field d:Landroid/os/Bundle;

.field e:Z

.field final f:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/media/session/PlaybackStateCompat;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/support/v4/media/MediaMetadataCompat;

.field j:I

.field k:Z

.field l:I

.field m:I

.field n:Landroid/support/v4/media/session/MediaSessionCompat$a;

.field o:Landroidx/media/b$b;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSession;Landroidx/versionedparcelable/c;Landroid/os/Bundle;)V
    .locals 2

    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3776
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3779
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->e:Z

    .line 3780
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    .line 3798
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    .line 3799
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$e$a;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$e$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$e;)V

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;Landroidx/versionedparcelable/c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 3800
    iput-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->d:Landroid/os/Bundle;

    const/4 p1, 0x3

    .line 3802
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$e;->a(I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 3805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3776
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3779
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->e:Z

    .line 3780
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    .line 3806
    instance-of v0, p1, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 3810
    check-cast p1, Landroid/media/session/MediaSession;

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    .line 3811
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$e$a;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$e$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$e;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/b;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 p1, 0x0

    .line 3812
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->d:Landroid/os/Bundle;

    const/4 p1, 0x3

    .line 3814
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$e;->a(I)V

    return-void

    .line 3807
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mediaSession is not a valid MediaSession object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v0, 0x1

    .line 3877
    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->e:Z

    .line 3878
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 3879
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_0

    .line 3882
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mCallback"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3883
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3884
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3886
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionCompat"

    const-string v3, "Exception happened while accessing MediaSession.mCallback."

    .line 3889
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3894
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 3895
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 3832
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 1

    .line 3933
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    .line 3926
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->i:Landroid/support/v4/media/MediaMetadataCompat;

    .line 3927
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3928
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaMetadata;

    .line 3927
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 3

    .line 3819
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3820
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->n:Landroid/support/v4/media/session/MediaSessionCompat$a;

    .line 3821
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->c:Landroid/media/session/MediaSession$Callback;

    :goto_0
    invoke-virtual {v1, v2, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 3823
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/session/MediaSessionCompat$b;Landroid/os/Handler;)V

    .line 3825
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .line 3905
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->g:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 3906
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3908
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3910
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3914
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3915
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 3916
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/PlaybackState;

    .line 3915
    :goto_1
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public a(Landroidx/media/b$b;)V
    .locals 1

    .line 4036
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4037
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->o:Landroidx/media/b$b;

    .line 4038
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media/f;)V
    .locals 9

    .line 3846
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    .line 4201
    iget-object v1, p1, Landroidx/media/f;->f:Landroid/media/VolumeProvider;

    if-nez v1, :cond_1

    .line 4202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 4203
    new-instance v1, Landroidx/media/f$1;

    iget v5, p1, Landroidx/media/f;->a:I

    iget v6, p1, Landroidx/media/f;->b:I

    iget v7, p1, Landroidx/media/f;->d:I

    iget-object v8, p1, Landroidx/media/f;->c:Ljava/lang/String;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media/f$1;-><init>(Landroidx/media/f;IIILjava/lang/String;)V

    iput-object v1, p1, Landroidx/media/f;->f:Landroid/media/VolumeProvider;

    goto :goto_0

    .line 4215
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 4216
    new-instance v1, Landroidx/media/f$2;

    iget v2, p1, Landroidx/media/f;->a:I

    iget v3, p1, Landroidx/media/f;->b:I

    iget v4, p1, Landroidx/media/f;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Landroidx/media/f$2;-><init>(Landroidx/media/f;III)V

    iput-object v1, p1, Landroidx/media/f;->f:Landroid/media/VolumeProvider;

    .line 4229
    :cond_1
    :goto_0
    iget-object p1, p1, Landroidx/media/f;->f:Landroid/media/VolumeProvider;

    .line 3846
    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 3957
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 3943
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->h:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3945
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void

    .line 3948
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3949
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 3950
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3952
    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 3851
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 3900
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 3839
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3840
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 3841
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public final b(Landroid/app/PendingIntent;)V
    .locals 1

    .line 3938
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final c()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .line 3921
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->g:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .line 3987
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->l:I

    if-eq v0, p1, :cond_1

    .line 3988
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->l:I

    .line 3989
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3991
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 3993
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3997
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .line 4043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    return-object v1

    .line 4047
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getCallingPackage"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4049
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->a:Landroid/media/session/MediaSession;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "MediaSessionCompat"

    const-string v3, "Cannot execute MediaSession.getCallingPackage()"

    .line 4051
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final d(I)V
    .locals 2

    .line 4003
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->m:I

    if-eq v0, p1, :cond_1

    .line 4004
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->m:I

    .line 4005
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4007
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/a;

    .line 4009
    :try_start_0
    invoke-interface {v1, p1}, Landroid/support/v4/media/session/a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4013
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->f:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method

.method public e()Landroidx/media/b$b;
    .locals 2

    .line 4059
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4060
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->o:Landroidx/media/b$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4061
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Landroid/support/v4/media/session/MediaSessionCompat$a;
    .locals 2

    .line 4066
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4067
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$e;->n:Landroid/support/v4/media/session/MediaSessionCompat$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4068
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
