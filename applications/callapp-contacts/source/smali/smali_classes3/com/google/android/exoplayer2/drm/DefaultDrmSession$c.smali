.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 578
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Landroid/os/Message;Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 627
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;

    .line 628
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->b:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 631
    :cond_0
    iget v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->e:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->e:I

    .line 632
    iget v4, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->e:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 2058
    iget-object v7, v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/upstream/r;

    const/4 v8, 0x3

    .line 633
    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/upstream/r;->a(I)I

    move-result v7

    if-le v4, v7, :cond_1

    return v5

    .line 636
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/source/l;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->a:J

    iget-object v12, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->a:Lcom/google/android/exoplayer2/upstream/j;

    iget-object v13, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->b:Landroid/net/Uri;

    iget-object v14, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->c:Ljava/util/Map;

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    iget-wide v6, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->c:J

    sub-long v17, v17, v6

    iget-wide v6, v2, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->d:J

    move-object v9, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplayer2/source/l;-><init>(JLcom/google/android/exoplayer2/upstream/j;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 645
    new-instance v6, Lcom/google/android/exoplayer2/source/o;

    invoke-direct {v6, v8}, Lcom/google/android/exoplayer2/source/o;-><init>(I)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/io/IOException;

    if-eqz v7, :cond_2

    .line 648
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    goto :goto_0

    .line 649
    :cond_2
    new-instance v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v7

    .line 650
    :goto_0
    iget-object v7, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 3058
    iget-object v7, v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->d:Lcom/google/android/exoplayer2/upstream/r;

    .line 651
    new-instance v8, Lcom/google/android/exoplayer2/upstream/r$a;

    iget v3, v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->e:I

    invoke-direct {v8, v4, v6, v2, v3}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;I)V

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/upstream/r;->a(Lcom/google/android/exoplayer2/upstream/r$a;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-nez v4, :cond_3

    return v5

    .line 658
    :cond_3
    monitor-enter p0

    .line 659
    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->b:Z

    if-nez v4, :cond_4

    .line 660
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 661
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 663
    :cond_4
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 668
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(ILjava/lang/Object;Z)V
    .locals 8

    .line 582
    new-instance v7, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;

    .line 584
    invoke-static {}, Lcom/google/android/exoplayer2/source/l;->a()J

    move-result-wide v1

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v7

    move v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;-><init>(JZJLjava/lang/Object;)V

    .line 588
    invoke-virtual {p0, p1, v7}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 593
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;

    .line 596
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 602
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/m;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->f:Ljava/util/UUID;

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/drm/i$b;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/m;->a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/i$b;)[B

    move-result-object v1

    goto :goto_0

    .line 605
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->e:Lcom/google/android/exoplayer2/drm/m;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/i$e;

    .line 599
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/m;->a(Lcom/google/android/exoplayer2/drm/i$e;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 613
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 608
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a(Landroid/os/Message;Lcom/google/android/exoplayer2/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 617
    :cond_2
    :goto_0
    monitor-enter p0

    .line 618
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->b:Z

    if-nez v2, :cond_3

    .line 619
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$c;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->d:Ljava/lang/Object;

    .line 620
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 623
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
