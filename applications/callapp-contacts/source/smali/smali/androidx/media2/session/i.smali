.class Landroidx/media2/session/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/i$b;,
        Landroidx/media2/session/i$a;
    }
.end annotation


# static fields
.field static final b:Z


# instance fields
.field A:Landroid/support/v4/media/MediaMetadataCompat;

.field B:Z

.field final c:Landroid/content/Context;

.field final d:Landroidx/media2/session/SessionToken;

.field final e:Landroid/os/HandlerThread;

.field final f:Landroid/os/Handler;

.field final g:Ljava/lang/Object;

.field h:Landroidx/media2/session/MediaController;

.field i:Landroid/support/v4/media/MediaBrowserCompat;

.field j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroidx/media2/common/MediaMetadata;

.field n:I

.field o:I

.field p:I

.field q:Landroidx/media2/common/MediaItem;

.field r:I

.field s:I

.field t:J

.field u:Landroidx/media2/session/MediaController$PlaybackInfo;

.field v:Landroidx/media2/session/SessionCommandGroup;

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field x:Landroid/support/v4/media/session/MediaControllerCompat;

.field y:Landroidx/media2/session/i$b;

.field z:Landroid/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MC2ImplLegacy"

    const/4 v1, 0x3

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/i;->b:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;)V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 133
    iput v1, p0, Landroidx/media2/session/i;->s:I

    .line 169
    iput-object p1, p0, Landroidx/media2/session/i;->c:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    .line 171
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "MediaController_Thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/session/i;->e:Landroid/os/HandlerThread;

    .line 172
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/media2/session/i;->f:Landroid/os/Handler;

    .line 174
    iput-object p3, p0, Landroidx/media2/session/i;->d:Landroidx/media2/session/SessionToken;

    .line 176
    invoke-virtual {p3}, Landroidx/media2/session/SessionToken;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 177
    monitor-enter v0

    const/4 p1, 0x0

    .line 178
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p3}, Landroidx/media2/session/SessionToken;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p0, p1}, Landroidx/media2/session/i;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1871
    :cond_0
    new-instance p1, Landroidx/media2/session/i$4;

    invoke-direct {p1, p0}, Landroidx/media2/session/i$4;-><init>(Landroidx/media2/session/i;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(I)Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 238
    new-instance v2, Landroidx/media2/session/SessionResult;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v2}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception p1

    .line 236
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    const-string p1, "MC2ImplLegacy"

    const-string v0, "Session doesn\'t support getting selected track"

    .line 761
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(F)Lcom/google/common/util/concurrent/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string v1, "Session isn\'t active"

    .line 478
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, -0x64

    .line 479
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 481
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->a(F)V

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 483
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 482
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(J)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string p1, "MC2ImplLegacy"

    const-string p2, "Session isn\'t active"

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, -0x64

    .line 326
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 328
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$e;->a(J)V

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 330
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 329
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-string p1, "MC2ImplLegacy"

    const-string v0, "Session doesn\'t support setting Surface"

    .line 732
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x6

    .line 733
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-string p1, "MC2ImplLegacy"

    const-string v0, "Session doesn\'t support selecting track"

    .line 746
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x6

    .line 747
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 8

    .line 885
    iput-object p1, p0, Landroidx/media2/session/i;->A:Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 887
    iput v0, p0, Landroidx/media2/session/i;->r:I

    const/4 p1, 0x0

    .line 888
    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    return-void

    .line 892
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    if-nez v1, :cond_1

    .line 893
    iput v0, p0, Landroidx/media2/session/i;->r:I

    .line 894
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    return-void

    .line 898
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 900
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v3

    const/4 v1, 0x0

    .line 901
    :goto_0
    iget-object v5, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 902
    iget-object v5, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 903
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    .line 904
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 905
    iput v1, p0, Landroidx/media2/session/i;->r:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 911
    invoke-virtual {p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 913
    iput v0, p0, Landroidx/media2/session/i;->r:I

    .line 914
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    return-void

    .line 920
    :cond_4
    iget v3, p0, Landroidx/media2/session/i;->s:I

    if-ltz v3, :cond_5

    iget-object v4, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    iget v4, p0, Landroidx/media2/session/i;->s:I

    .line 922
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v3

    .line 921
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 924
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 925
    iget p1, p0, Landroidx/media2/session/i;->s:I

    iput p1, p0, Landroidx/media2/session/i;->r:I

    .line 926
    iput v0, p0, Landroidx/media2/session/i;->s:I

    return-void

    .line 931
    :cond_5
    :goto_1
    iget-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 932
    iget-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 933
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 934
    iput v2, p0, Landroidx/media2/session/i;->r:I

    .line 935
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 941
    :cond_7
    iput v0, p0, Landroidx/media2/session/i;->r:I

    .line 942
    iget-object p1, p0, Landroidx/media2/session/i;->A:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    return-void
.end method

.method final a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .line 853
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media2/session/i;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 855
    iget-object p1, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 856
    :try_start_0
    iput-object v0, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 857
    new-instance v0, Landroidx/media2/session/i$b;

    invoke-direct {v0, p0}, Landroidx/media2/session/i$b;-><init>(Landroidx/media2/session/i;)V

    iput-object v0, p0, Landroidx/media2/session/i;->y:Landroidx/media2/session/i$b;

    .line 858
    iget-object v0, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->g()Z

    move-result v0

    .line 859
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroidx/media2/session/i;->y:Landroidx/media2/session/i$b;

    iget-object v3, p0, Landroidx/media2/session/i;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Handler;)V

    .line 860
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 866
    invoke-virtual {p0}, Landroidx/media2/session/i;->r()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 860
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    .line 244
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 253
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x64

    .line 254
    invoke-direct {p0, v1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 256
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->a()V

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 257
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-string p1, "MC2ImplLegacy"

    const-string v0, "Session doesn\'t support deselecting track"

    .line 754
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x6

    .line 755
    invoke-direct {p0, p1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 265
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x64

    .line 266
    invoke-direct {p0, v1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 268
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .line 188
    sget-boolean v0, Landroidx/media2/session/i;->b:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/i;->d:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->j:Z

    if-eqz v1, :cond_1

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/i;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    .line 199
    iget-object v1, p0, Landroidx/media2/session/i;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Landroidx/media2/session/i;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Landroidx/media2/session/i;->j:Z

    .line 206
    iget-object v1, p0, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->b()V

    .line 208
    iput-object v2, p0, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    .line 210
    :cond_3
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_4

    .line 211
    iget-object v3, p0, Landroidx/media2/session/i;->y:Landroidx/media2/session/i$b;

    invoke-virtual {v1, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 212
    iput-object v2, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_4
    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$1;

    invoke-direct {v1, p0}, Landroidx/media2/session/i$1;-><init>(Landroidx/media2/session/i;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 215
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()I
    .locals 4

    .line 372
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 374
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x3

    .line 375
    monitor-exit v0

    return v1

    .line 377
    :cond_0
    iget v1, p0, Landroidx/media2/session/i;->p:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()J
    .locals 6

    .line 383
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 385
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    monitor-exit v0

    return-wide v2

    .line 388
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->A:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v1, :cond_1

    const-string v4, "android.media.metadata.DURATION"

    .line 389
    invoke-virtual {v1, v4}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Landroidx/media2/session/i;->A:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 392
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()J
    .locals 6

    .line 398
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 400
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    monitor-exit v0

    return-wide v2

    .line 403
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v1, :cond_1

    .line 404
    iget-object v2, p0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    iget-object v2, v2, Landroidx/media2/session/MediaController;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 406
    :cond_1
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    .line 407
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()F
    .locals 5

    .line 412
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v3, "Session isn\'t active"

    .line 414
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    monitor-exit v0

    return v2

    .line 417
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()J
    .locals 6

    .line 436
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v4, "Session isn\'t active"

    .line 438
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    monitor-exit v0

    return-wide v2

    .line 441
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v2

    :goto_0
    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Landroidx/media2/common/MediaItem;
    .locals 4

    .line 609
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 611
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 612
    monitor-exit v0

    return-object v1

    .line 614
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 615
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final k()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final l()Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 637
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x64

    .line 638
    invoke-direct {p0, v1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 640
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->d()V

    .line 641
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0, v0}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 641
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final m()Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 649
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x64

    .line 650
    invoke-direct {p0, v1}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 652
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->c()V

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, v0}, Landroidx/media2/session/i;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 653
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final n()Landroidx/media2/common/VideoSize;
    .locals 2

    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support getting VideoSize"

    .line 726
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "MC2ImplLegacy"

    const-string v1, "Session doesn\'t support getting TrackInfo"

    .line 739
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final p()Landroidx/media2/session/SessionCommandGroup;
    .locals 4

    .line 767
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    const-string v1, "MC2ImplLegacy"

    const-string v2, "Session isn\'t active"

    .line 769
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 770
    monitor-exit v0

    return-object v1

    .line 772
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 773
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 2

    .line 785
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final r()V
    .locals 4

    .line 792
    sget-boolean v0, Landroidx/media2/session/i;->b:Z

    if-eqz v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectedNotLocked token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/i;->d:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroidx/media2/session/i;->B:Z

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 802
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 803
    iget-object v1, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 804
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->f()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 803
    invoke-static {v1, v2, v3}, Landroidx/media2/session/s;->a(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    .line 805
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v1

    iput v1, p0, Landroidx/media2/session/i;->p:I

    .line 806
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_2

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Landroidx/media2/session/i;->t:J

    .line 808
    iget-object v1, p0, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v1}, Landroidx/media2/session/s;->b(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/session/i;->w:Ljava/util/List;

    .line 810
    iget-object v2, p0, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    .line 813
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 2489
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v3}, Landroid/support/v4/media/session/MediaControllerCompat$b;->j()Landroid/support/v4/media/session/MediaControllerCompat$d;

    move-result-object v3

    .line 813
    invoke-static {v3}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/session/MediaControllerCompat$d;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/i;->u:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 815
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->d()I

    move-result v3

    iput v3, p0, Landroidx/media2/session/i;->n:I

    .line 816
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->e()I

    move-result v3

    iput v3, p0, Landroidx/media2/session/i;->o:I

    .line 818
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 3319
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v3}, Landroid/support/v4/media/session/MediaControllerCompat$b;->d()Ljava/util/List;

    move-result-object v3

    .line 818
    invoke-static {v3}, Landroidx/media2/session/s;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 819
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 825
    :cond_3
    iget-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-static {v3}, Landroidx/media2/session/s;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/i;->k:Ljava/util/List;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 822
    iput-object v3, p0, Landroidx/media2/session/i;->l:Ljava/util/List;

    .line 823
    iput-object v3, p0, Landroidx/media2/session/i;->k:Ljava/util/List;

    .line 827
    :goto_2
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 828
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->c()Ljava/lang/CharSequence;

    move-result-object v3

    .line 827
    invoke-static {v3}, Landroidx/media2/session/s;->a(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/session/i;->m:Landroidx/media2/common/MediaMetadata;

    .line 831
    iget-object v3, p0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 4309
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v3}, Landroid/support/v4/media/session/MediaControllerCompat$b;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v3

    .line 831
    invoke-virtual {p0, v3}, Landroidx/media2/session/i;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    const/4 v3, 0x1

    .line 832
    iput-boolean v3, p0, Landroidx/media2/session/i;->B:Z

    .line 833
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    iget-object v0, p0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v3, Landroidx/media2/session/i$2;

    invoke-direct {v3, p0, v2}, Landroidx/media2/session/i$2;-><init>(Landroidx/media2/session/i;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    .line 840
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 841
    iget-object v0, p0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/i$3;

    invoke-direct {v2, p0, v1}, Landroidx/media2/session/i$3;-><init>(Landroidx/media2/session/i;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    :cond_5
    return-void

    .line 800
    :cond_6
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 833
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
