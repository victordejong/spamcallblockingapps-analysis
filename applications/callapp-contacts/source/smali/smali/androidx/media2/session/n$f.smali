.class final Landroidx/media2/session/n$f;
.super Landroidx/media2/session/u$a;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/common/MediaItem$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/media2/common/MediaItem;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/media2/session/n$d;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;)V
    .locals 1

    .line 1373
    invoke-direct {p0}, Landroidx/media2/session/u$a;-><init>()V

    .line 1374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/n$f;->a:Ljava/lang/ref/WeakReference;

    .line 1375
    new-instance v0, Landroidx/media2/session/n$d;

    invoke-direct {v0, p1}, Landroidx/media2/session/n$d;-><init>(Landroidx/media2/session/n;)V

    iput-object v0, p0, Landroidx/media2/session/n$f;->d:Landroidx/media2/session/n$d;

    return-void
.end method

.method private a()Landroidx/media2/session/n;
    .locals 2

    .line 1671
    iget-object v0, p0, Landroidx/media2/session/n$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/n;

    if-nez v0, :cond_0

    .line 1672
    sget-boolean v1, Landroidx/media2/session/n;->a:Z

    if-eqz v1, :cond_0

    .line 1673
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :cond_0
    return-object v0
.end method

.method private a(Landroidx/media2/common/MediaItem;)V
    .locals 3

    .line 1766
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1770
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/n$f$7;

    invoke-direct {v2, p0, p1, v0}, Landroidx/media2/session/n$f$7;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaItem;Landroidx/media2/session/n;)V

    invoke-direct {p0, v1, v2}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method private a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V
    .locals 2

    .line 1680
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1681
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1684
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Landroidx/media2/common/SessionPlayer;)Z
    .locals 2

    .line 1695
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1700
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 1699
    invoke-static {p0, v0, v1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)Z
    .locals 7

    .line 1716
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->f()J

    move-result-wide v0

    .line 1718
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 1719
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->d()I

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    const-wide/16 v2, 0x1

    const-string v4, "androidx.media2.metadata.PLAYABLE"

    const-string v5, "android.media.metadata.DURATION"

    if-eqz p2, :cond_1

    .line 1723
    invoke-virtual {p2, v5}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1724
    new-instance p0, Landroidx/media2/common/MediaMetadata$a;

    invoke-direct {p0, p2}, Landroidx/media2/common/MediaMetadata$a;-><init>(Landroidx/media2/common/MediaMetadata;)V

    .line 1726
    invoke-virtual {p0, v5, v0, v1}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 1727
    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 1728
    invoke-virtual {p0}, Landroidx/media2/common/MediaMetadata$a;->a()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    goto :goto_0

    .line 1731
    :cond_0
    invoke-virtual {p2, v5}, Landroidx/media2/common/MediaMetadata;->d(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 1735
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "duration mismatch for an item. duration from player="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " duration from metadata="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". May be a timing issue?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MSImplBase"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1746
    :cond_1
    new-instance p0, Landroidx/media2/common/MediaMetadata$a;

    invoke-direct {p0}, Landroidx/media2/common/MediaMetadata$a;-><init>()V

    .line 1747
    invoke-virtual {p0, v5, v0, v1}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 1748
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0, p2}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 1749
    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 1750
    invoke-virtual {p0}, Landroidx/media2/common/MediaMetadata$a;->a()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 1758
    invoke-virtual {p1, p0}, Landroidx/media2/common/MediaItem;->a(Landroidx/media2/common/MediaMetadata;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)V
    .locals 1

    .line 1631
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1635
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v0

    .line 1636
    invoke-static {v0, p1, p2}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1640
    invoke-direct {p0, p1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/MediaItem;)V

    :cond_1
    return-void
.end method

.method public final onAudioAttributesChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)V
    .locals 3

    .line 1540
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1541
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 1544
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/n;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p2

    .line 1546
    iget-object v1, v0, Landroidx/media2/session/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1547
    :try_start_0
    iget-object v2, v0, Landroidx/media2/session/n;->g:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1548
    iput-object p2, v0, Landroidx/media2/session/n;->g:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1549
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    invoke-static {p2, v2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1551
    invoke-virtual {v0, p2}, Landroidx/media2/session/n;->a(Landroidx/media2/session/MediaController$PlaybackInfo;)V

    .line 1552
    instance-of p1, p1, Landroidx/media2/session/u;

    if-nez p1, :cond_2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3121
    :cond_1
    iget-object p1, v2, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    .line 1553
    :goto_0
    invoke-static {p1}, Landroidx/media2/session/n;->a(Landroidx/media/AudioAttributesCompat;)I

    move-result p1

    .line 4121
    iget-object p2, p2, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    .line 1555
    invoke-static {p2}, Landroidx/media2/session/n;->a(Landroidx/media/AudioAttributesCompat;)I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 4975
    iget-object p1, v0, Landroidx/media2/session/n;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 1557
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1549
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final onBufferingStateChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;I)V
    .locals 1

    .line 1425
    invoke-static {p1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;)Z

    .line 1426
    new-instance v0, Landroidx/media2/session/n$f$8;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/session/n$f$8;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SessionPlayer;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 1381
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1382
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1385
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/n$f;->b:Landroidx/media2/common/MediaItem;

    if-eqz v1, :cond_1

    .line 1386
    invoke-virtual {v1, p0}, Landroidx/media2/common/MediaItem;->a(Landroidx/media2/common/MediaItem$b;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1389
    iget-object v1, v0, Landroidx/media2/session/n;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v1, p0}, Landroidx/media2/common/MediaItem;->a(Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem$b;)V

    .line 1391
    :cond_2
    iput-object p2, p0, Landroidx/media2/session/n$f;->b:Landroidx/media2/common/MediaItem;

    .line 1392
    invoke-virtual {v0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    invoke-virtual {v0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1397
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 1396
    invoke-static {p1, p2, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaMetadata;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 1401
    invoke-direct {p0, p2}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/MediaItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 1

    .line 1529
    new-instance v0, Landroidx/media2/session/n$f$15;

    invoke-direct {v0, p0}, Landroidx/media2/session/n$f$15;-><init>(Landroidx/media2/session/n$f;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 1

    .line 1437
    new-instance v0, Landroidx/media2/session/n$f$9;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/n$f$9;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;F)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2

    .line 1407
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1408
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 1411
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    invoke-virtual {v0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 1412
    invoke-static {p1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;)Z

    .line 1413
    new-instance v1, Landroidx/media2/session/n$f$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/n$f$1;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 5
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

    .line 1460
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1461
    invoke-virtual {v0}, Landroidx/media2/session/n;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_2

    .line 1464
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/n$f;->c:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1465
    :goto_0
    iget-object v3, p0, Landroidx/media2/session/n$f;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1466
    iget-object v3, p0, Landroidx/media2/session/n$f;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/MediaItem;

    iget-object v4, p0, Landroidx/media2/session/n$f;->d:Landroidx/media2/session/n$d;

    invoke-virtual {v3, v4}, Landroidx/media2/common/MediaItem;->a(Landroidx/media2/common/MediaItem$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1470
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1471
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/MediaItem;

    iget-object v3, v0, Landroidx/media2/session/n;->d:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/media2/session/n$f;->d:Landroidx/media2/session/n$d;

    invoke-virtual {v1, v3, v4}, Landroidx/media2/common/MediaItem;->a(Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1475
    :cond_2
    iput-object p2, p0, Landroidx/media2/session/n$f;->c:Ljava/util/List;

    .line 1477
    new-instance v1, Landroidx/media2/session/n$f$11;

    invoke-direct {v1, p0, p2, p3, v0}, Landroidx/media2/session/n$f$11;-><init>(Landroidx/media2/session/n$f;Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/session/n;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onPlaylistMetadataChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaMetadata;)V
    .locals 1

    .line 1490
    new-instance v0, Landroidx/media2/session/n$f$12;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/n$f$12;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaMetadata;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onRepeatModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2

    .line 1500
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    .line 1501
    new-instance v1, Landroidx/media2/session/n$f$13;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/n$f$13;-><init>(Landroidx/media2/session/n$f;ILandroidx/media2/session/n;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 1

    .line 1448
    new-instance v0, Landroidx/media2/session/n$f$10;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/session/n$f$10;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;J)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onShuffleModeChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 2

    .line 1515
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    .line 1516
    new-instance v1, Landroidx/media2/session/n$f$14;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/n$f$14;-><init>(Landroidx/media2/session/n$f;ILandroidx/media2/session/n;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1

    .line 1619
    new-instance v0, Landroidx/media2/session/n$f$6;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/session/n$f$6;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 1607
    new-instance v0, Landroidx/media2/session/n$f$5;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/n$f$5;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 1596
    new-instance v0, Landroidx/media2/session/n$f$4;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/n$f$4;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1576
    invoke-direct {p0}, Landroidx/media2/session/n$f;->a()Landroidx/media2/session/n;

    move-result-object v0

    .line 1577
    new-instance v1, Landroidx/media2/session/n$f$3;

    invoke-direct {v1, p0, p2, v0}, Landroidx/media2/session/n$f$3;-><init>(Landroidx/media2/session/n$f;Ljava/util/List;Landroidx/media2/session/n;)V

    invoke-direct {p0, p1, v1}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V
    .locals 1

    .line 1565
    new-instance v0, Landroidx/media2/session/n$f$2;

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/n$f$2;-><init>(Landroidx/media2/session/n$f;Landroidx/media2/common/VideoSize;)V

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/n$f;->a(Landroidx/media2/common/SessionPlayer;Landroidx/media2/session/n$e;)V

    return-void
.end method
