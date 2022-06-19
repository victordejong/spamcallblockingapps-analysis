.class final Landroidx/media2/exoplayer/external/ak$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media2/exoplayer/external/ae$b;
.implements Landroidx/media2/exoplayer/external/audio/e$b;
.implements Landroidx/media2/exoplayer/external/audio/g;
.implements Landroidx/media2/exoplayer/external/metadata/d;
.implements Landroidx/media2/exoplayer/external/text/i;
.implements Landroidx/media2/exoplayer/external/video/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/ak;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/ak;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/ak;Landroidx/media2/exoplayer/external/ak$1;)V
    .locals 0

    .line 1432
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ak$b;-><init>(Landroidx/media2/exoplayer/external/ak;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(IIIF)V
    .locals 3

    .line 1479
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 8077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1479
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/f;

    .line 1482
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 9077
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1482
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1483
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/f;->a(IIIF)V

    goto :goto_0

    .line 1487
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 10077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1487
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1488
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/g;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 1471
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 7077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1471
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1472
    invoke-interface {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/g;->a(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 8

    .line 1562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 27077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1562
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/audio/g;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1563
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/g;->a(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .line 1495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 11077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->o:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 1496
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 12077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1496
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1500
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 13077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1500
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1501
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/g;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    .line 1463
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 5077
    iput-object p1, v0, Landroidx/media2/exoplayer/external/ak;->m:Landroidx/media2/exoplayer/external/Format;

    .line 1464
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 6077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1464
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1465
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/g;->a(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/al;I)V
    .locals 3

    .line 46347
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 46349
    new-instance p2, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 46648
    invoke-virtual {p1, v0, p2, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 1446
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 2077
    iput-object p1, v0, Landroidx/media2/exoplayer/external/ak;->p:Landroidx/media2/exoplayer/external/b/d;

    .line 1447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 3077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1447
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1448
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/g;->a(Landroidx/media2/exoplayer/external/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 2

    .line 1591
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 34077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1591
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/metadata/d;

    .line 1592
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/metadata/d;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/f;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8

    .line 1455
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 4077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1455
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/video/g;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1456
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/video/g;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a;",
            ">;)V"
        }
    .end annotation

    .line 1581
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 32077
    iput-object p1, v0, Landroidx/media2/exoplayer/external/ak;->v:Ljava/util/List;

    .line 1582
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 33077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1582
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/text/i;

    .line 1583
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/text/i;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 1655
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 40077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->w:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1656
    iget-object v1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 41077
    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/ak;->x:Z

    if-nez v1, :cond_0

    .line 1657
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 42077
    iget-object p1, p1, Landroidx/media2/exoplayer/external/ak;->w:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    .line 43066
    iget-object v1, p1, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 43067
    :try_start_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->b:Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 43068
    iget v2, p1, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->c:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->c:I

    .line 43069
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x1

    .line 43077
    iput-boolean v0, p1, Landroidx/media2/exoplayer/external/ak;->x:Z

    return-void

    :catchall_0
    move-exception p1

    .line 43069
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 1659
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 44077
    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/ak;->x:Z

    if-eqz p1, :cond_1

    .line 1660
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 45077
    iget-object p1, p1, Landroidx/media2/exoplayer/external/ak;->w:Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    .line 1660
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->a()V

    .line 1661
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 46077
    iput-boolean v0, p1, Landroidx/media2/exoplayer/external/ak;->x:Z

    :cond_1
    return-void
.end method

.method public final a(ZI)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1526
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 19077
    iget v0, v0, Landroidx/media2/exoplayer/external/ak;->r:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 20077
    iput p1, v0, Landroidx/media2/exoplayer/external/ak;->r:I

    .line 1530
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 21077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1530
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/f;

    .line 1533
    iget-object v2, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 22077
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1533
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1534
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/f;->b(I)V

    goto :goto_0

    .line 1537
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 23077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1537
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/g;

    .line 1538
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/g;->b(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 2

    .line 1553
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 25077
    iput-object p1, v0, Landroidx/media2/exoplayer/external/ak;->n:Landroidx/media2/exoplayer/external/Format;

    .line 1554
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 26077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1554
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/g;

    .line 1555
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/g;->b(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 1507
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 14077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1507
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/g;

    .line 1508
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/g;->b(Landroidx/media2/exoplayer/external/b/d;)V

    goto :goto_0

    .line 1510
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    .line 15077
    iput-object v0, p1, Landroidx/media2/exoplayer/external/ak;->m:Landroidx/media2/exoplayer/external/Format;

    .line 1511
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 16077
    iput-object v0, p1, Landroidx/media2/exoplayer/external/ak;->p:Landroidx/media2/exoplayer/external/b/d;

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 8

    .line 1545
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 24077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1545
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/audio/g;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1546
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/g;->b(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1643
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1648
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v1

    .line 39077
    invoke-virtual {v0, v1, p1}, Landroidx/media2/exoplayer/external/ak;->a(ZI)V

    return-void
.end method

.method public final c(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 1518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 17077
    iput-object p1, v0, Landroidx/media2/exoplayer/external/ak;->q:Landroidx/media2/exoplayer/external/b/d;

    .line 1519
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 18077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1519
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/g;

    .line 1520
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/g;->c(Landroidx/media2/exoplayer/external/b/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 1569
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 28077
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ak;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 1569
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/g;

    .line 1570
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/g;->d(Landroidx/media2/exoplayer/external/b/d;)V

    goto :goto_0

    .line 1572
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    .line 29077
    iput-object v0, p1, Landroidx/media2/exoplayer/external/ak;->n:Landroidx/media2/exoplayer/external/Format;

    .line 1573
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 30077
    iput-object v0, p1, Landroidx/media2/exoplayer/external/ak;->q:Landroidx/media2/exoplayer/external/b/d;

    .line 1574
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    .line 31077
    iput v0, p1, Landroidx/media2/exoplayer/external/ak;->r:I

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1618
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;Landroid/view/Surface;Z)V

    .line 1619
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1629
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;Landroid/view/Surface;Z)V

    .line 1630
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    .line 38077
    invoke-virtual {p1, v0, v0}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1624
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 37077
    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1605
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 35077
    invoke-virtual {p1, p3, p4}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1600
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1610
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/ak;->a(Landroidx/media2/exoplayer/external/ak;Landroid/view/Surface;Z)V

    .line 1611
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ak$b;->a:Landroidx/media2/exoplayer/external/ak;

    .line 36077
    invoke-virtual {p1, v1, v1}, Landroidx/media2/exoplayer/external/ak;->a(II)V

    return-void
.end method
