.class public final Lcom/facebook/ads/redexgen/X/9F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/ads/redexgen/X/9G;",
        "E:",
        "Lcom/facebook/ads/redexgen/X/9E;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19607
    .local v0, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    .line 19609
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    .line 19610
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 19611
    .local v0, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v0, "event":Lcom/facebook/ads/redexgen/X/9E;, "TE;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 19612
    return-void

    .line 19613
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19614
    .local p0, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v1, :cond_1

    .line 19615
    return-void

    .line 19616
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/util/List;)V

    .line 19617
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19618
    return-void

    .line 19619
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19620
    .local p1, "immutableSubscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 19621
    .local v0, "subscriberReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9G;

    .line 19622
    .local v1, "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/9G;->A00(Lcom/facebook/ads/redexgen/X/9E;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19623
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/9G;->A04(Lcom/facebook/ads/redexgen/X/9E;)V

    goto :goto_0

    .line 19624
    :cond_4
    return-void
.end method

.method private A01(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 19625
    .local v0, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v1, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz p1, :cond_2

    .line 19626
    const/4 v3, 0x0

    .line 19627
    .local p0, "writePtr":I
    const/4 v2, 0x0

    .local p1, "readPtr":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 19628
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19629
    .local v3, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19630
    add-int/lit8 v0, v3, 0x1

    .end local p0    # "writePtr":I
    .local v2, "writePtr":I
    invoke-interface {p1, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v0

    .line 19631
    .end local v3    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    .end local v2    # "writePtr":I
    .restart local p0    # "writePtr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19632
    .end local p1    # "readPtr":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local p1, "ix":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 19633
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19634
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 19635
    .end local p0    # "writePtr":I
    .end local p1    # "ix":I
    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized A02(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v0, "event":Lcom/facebook/ads/redexgen/X/9E;, "TE;"
    monitor-enter p0

    .line 19636
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19638
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9E;

    .line 19640
    .local p0, "currentEvent":Lcom/facebook/ads/redexgen/X/9E;, "TE;"
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9F;->A00(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 19641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 19642
    .end local v0    # "event":Lcom/facebook/ads/redexgen/X/9E;, "TE;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A01:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19643
    :cond_1
    monitor-exit p0

    return-void

    .line 19644
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A03([Lcom/facebook/ads/redexgen/X/9G;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v0, "subscribers":[Lcom/facebook/ads/redexgen/X/9G;, "[TT;"
    monitor-enter p0

    .line 19645
    if-nez p1, :cond_0

    .line 19646
    monitor-exit p0

    return-void

    .line 19647
    :cond_0
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 19648
    .local v2, "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9F;->A05(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 19649
    .end local v2    # "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19650
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 19651
    .end local v0    # "subscribers":[Lcom/facebook/ads/redexgen/X/9G;, "[TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized A04([Lcom/facebook/ads/redexgen/X/9G;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v0, "subscribers":[Lcom/facebook/ads/redexgen/X/9G;, "[TT;"
    monitor-enter p0

    .line 19652
    if-nez p1, :cond_0

    .line 19653
    monitor-exit p0

    return-void

    .line 19654
    :cond_0
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 19655
    .local v2, "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9F;->A06(Lcom/facebook/ads/redexgen/X/9G;)Z

    .line 19656
    .end local v2    # "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19657
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 19658
    .end local v0    # "subscribers":[Lcom/facebook/ads/redexgen/X/9G;, "[TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(Lcom/facebook/ads/redexgen/X/9G;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v0, "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    monitor-enter p0

    .line 19659
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 19660
    monitor-exit p0

    return v4

    .line 19661
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9G;->A02()Ljava/lang/Class;

    move-result-object v2

    .line 19662
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 19663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19664
    .local v4, "subscriberSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19665
    .end local v4    # "subscriberSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 19666
    .local v4, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/9F;->A01(Ljava/util/List;)V

    .line 19667
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v0, "len":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19668
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 19669
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19670
    :goto_1
    monitor-exit p0

    return v4

    .line 19671
    .end local v2    # "i":I
    .end local v0    # "len":I
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 19672
    .end local p1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local v4    # "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06(Lcom/facebook/ads/redexgen/X/9G;)Z
    .locals 5
    .param p1    # Lcom/facebook/ads/redexgen/X/9G;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .local v3, "this":Lcom/facebook/ads/redexgen/X/9F;, "Lcom/facebook/ads/internal/events/EventBus<TT;TE;>;"
    .local v3, "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    monitor-enter p0

    .line 19673
    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 19674
    monitor-exit p0

    return v4

    .line 19675
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9F;->A00:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9G;->A02()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 19676
    .local p1, "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v3, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19677
    monitor-exit p0

    return v4

    .line 19678
    :cond_1
    const/4 v2, 0x0

    .local v4, "i":I
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 19679
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 19680
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_1

    .line 19681
    .end local v3    # "subscriber":Lcom/facebook/ads/redexgen/X/9G;, "TT;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19682
    :goto_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 19683
    .end local v4    # "i":I
    .end local v1    # "len":I
    :cond_3
    monitor-exit p0

    return v4

    .line 19684
    .end local p1    # "subscribers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
