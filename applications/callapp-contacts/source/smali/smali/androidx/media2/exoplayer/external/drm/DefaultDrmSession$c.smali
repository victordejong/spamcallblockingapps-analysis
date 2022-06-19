.class final Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 527
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 528
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;Z)V
    .locals 3

    .line 532
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;-><init>(ZJLjava/lang/Object;)V

    .line 534
    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;

    const/4 v1, 0x1

    .line 542
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    .line 548
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->g:Landroidx/media2/exoplayer/external/drm/p;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/drm/p;->b()[B

    move-result-object v1

    goto :goto_3

    .line 551
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 544
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->g:Landroidx/media2/exoplayer/external/drm/p;

    .line 545
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/drm/p;->a()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 1565
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;

    .line 1566
    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->a:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 1569
    :cond_2
    iget v4, v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->d:I

    add-int/2addr v4, v1

    iput v4, v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->d:I

    .line 1570
    iget v4, v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->d:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 2059
    iget-object v6, v6, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->f:Landroidx/media2/exoplayer/external/upstream/t;

    const/4 v7, 0x3

    .line 1571
    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/upstream/t;->a(I)I

    move-result v6

    if-le v4, v6, :cond_3

    goto :goto_0

    .line 1574
    :cond_3
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    .line 1577
    instance-of v5, v2, Ljava/io/IOException;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/io/IOException;

    goto :goto_1

    :cond_4
    new-instance v5, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-direct {v5, v2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    .line 1578
    :goto_1
    iget-object v6, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    .line 3059
    iget-object v6, v6, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->f:Landroidx/media2/exoplayer/external/upstream/t;

    .line 1581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget v3, v3, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->d:I

    .line 1579
    invoke-interface {v6, v5, v3}, Landroidx/media2/exoplayer/external/upstream/t;->a(Ljava/io/IOException;I)J

    move-result-wide v5

    .line 1584
    invoke-virtual {p0, v4, v5, v6}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    if-eqz v1, :cond_5

    return-void

    :cond_5
    move-object v1, v2

    .line 559
    :goto_3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$c;->a:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession;->i:Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$d;->c:Ljava/lang/Object;

    .line 560
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSession$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 561
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
