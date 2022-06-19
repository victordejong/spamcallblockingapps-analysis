.class Lokhttp3/internal/http2/f$d;
.super Lokhttp3/internal/b;
.source "Http2Connection.java"

# interfaces
.implements Lokhttp3/internal/http2/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/http2/g;

.field final synthetic c:Lokhttp3/internal/http2/f;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/f;Lokhttp3/internal/http2/g;)V
    .locals 4

    .prologue
    .line 598
    iput-object p1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    .line 599
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    iput-object p2, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    .line 601
    return-void
.end method

.method private a(Lokhttp3/internal/http2/l;)V
    .locals 6

    .prologue
    .line 736
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/internal/http2/f;->b(Lokhttp3/internal/http2/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http2/f$d$3;

    const-string/jumbo v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v5, v5, Lokhttp3/internal/http2/f;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/http2/f$d$3;-><init>(Lokhttp3/internal/http2/f$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2, p3}, Lokhttp3/internal/http2/f;->a(ILjava/util/List;)V

    .line 814
    return-void
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    .line 791
    if-nez p1, :cond_1

    .line 792
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-wide v2, v0, Lokhttp3/internal/http2/f;->j:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lokhttp3/internal/http2/f;->j:J

    .line 794
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 795
    monitor-exit v1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 797
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/f;->a(I)Lokhttp3/internal/http2/h;

    move-result-object v1

    .line 798
    if-eqz v1, :cond_0

    .line 799
    monitor-enter v1

    .line 800
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/http2/h;->a(J)V

    .line 801
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(ILokhttp3/internal/http2/a;)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/f;->c(ILokhttp3/internal/http2/a;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/h;->c(Lokhttp3/internal/http2/a;)V

    goto :goto_0
.end method

.method public a(ILokhttp3/internal/http2/a;La/f;)V
    .locals 5

    .prologue
    .line 771
    invoke-virtual {p3}, La/f;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 776
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    monitor-enter v1

    .line 777
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v0, v0, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v2, v2, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/http2/h;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/h;

    .line 778
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/http2/f;->g:Z

    .line 779
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 783
    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->a()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 784
    sget-object v4, Lokhttp3/internal/http2/a;->e:Lokhttp3/internal/http2/a;

    invoke-virtual {v3, v4}, Lokhttp3/internal/http2/h;->c(Lokhttp3/internal/http2/a;)V

    .line 785
    iget-object v4, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lokhttp3/internal/http2/f;->b(I)Lokhttp3/internal/http2/h;

    .line 782
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 788
    :cond_2
    return-void
.end method

.method public a(ZII)V
    .locals 4

    .prologue
    .line 755
    if-eqz p1, :cond_0

    .line 756
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/f;Z)Z

    .line 758
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit v1

    .line 768
    :goto_0
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 763
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/internal/http2/f;->b(Lokhttp3/internal/http2/f;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http2/f$c;

    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lokhttp3/internal/http2/f$c;-><init>(Lokhttp3/internal/http2/f;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2, p4, p1}, Lokhttp3/internal/http2/f;->a(ILjava/util/List;Z)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v6, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    monitor-enter v6

    .line 650
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/f;->a(I)Lokhttp3/internal/http2/h;

    move-result-object v0

    .line 652
    if-nez v0, :cond_5

    .line 654
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-boolean v0, v0, Lokhttp3/internal/http2/f;->g:Z

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 657
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget v0, v0, Lokhttp3/internal/http2/f;->e:I

    if-gt p2, v0, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 660
    :cond_3
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget v1, v1, Lokhttp3/internal/http2/f;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 663
    :cond_4
    new-instance v0, Lokhttp3/internal/http2/h;

    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/h;-><init>(ILokhttp3/internal/http2/f;ZZLjava/util/List;)V

    .line 665
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iput p2, v1, Lokhttp3/internal/http2/f;->e:I

    .line 666
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v1, v1, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-static {}, Lokhttp3/internal/http2/f;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/http2/f$d$1;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v7, v7, Lokhttp3/internal/http2/f;->d:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/http2/f$d$1;-><init>(Lokhttp3/internal/http2/f$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/h;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 680
    monitor-exit v6

    goto :goto_0

    .line 682
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    invoke-virtual {v0, p4}, Lokhttp3/internal/http2/h;->a(Ljava/util/List;)V

    .line 686
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->i()V

    goto :goto_0
.end method

.method public a(ZILa/e;I)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/f;->a(ILa/e;IZ)V

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/f;->a(I)Lokhttp3/internal/http2/h;

    move-result-object v0

    .line 631
    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    sget-object v1, Lokhttp3/internal/http2/a;->b:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/http2/f;->a(ILokhttp3/internal/http2/a;)V

    .line 633
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, La/e;->h(J)V

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/h;->a(La/e;I)V

    .line 637
    if-eqz p1, :cond_0

    .line 638
    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->i()V

    goto :goto_0
.end method

.method public a(ZLokhttp3/internal/http2/l;)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 701
    .line 702
    const/4 v0, 0x0

    .line 703
    iget-object v3, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    monitor-enter v3

    .line 704
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v2, v2, Lokhttp3/internal/http2/f;->l:Lokhttp3/internal/http2/l;

    invoke-virtual {v2}, Lokhttp3/internal/http2/l;->d()I

    move-result v2

    .line 705
    if-eqz p1, :cond_0

    iget-object v4, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v4, v4, Lokhttp3/internal/http2/f;->l:Lokhttp3/internal/http2/l;

    invoke-virtual {v4}, Lokhttp3/internal/http2/l;->a()V

    .line 706
    :cond_0
    iget-object v4, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v4, v4, Lokhttp3/internal/http2/f;->l:Lokhttp3/internal/http2/l;

    invoke-virtual {v4, p2}, Lokhttp3/internal/http2/l;->a(Lokhttp3/internal/http2/l;)V

    .line 707
    invoke-direct {p0, p2}, Lokhttp3/internal/http2/f$d;->a(Lokhttp3/internal/http2/l;)V

    .line 708
    iget-object v4, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v4, v4, Lokhttp3/internal/http2/f;->l:Lokhttp3/internal/http2/l;

    invoke-virtual {v4}, Lokhttp3/internal/http2/l;->d()I

    move-result v4

    .line 709
    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v2, :cond_4

    .line 710
    sub-int v2, v4, v2

    int-to-long v4, v2

    .line 711
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-boolean v2, v2, Lokhttp3/internal/http2/f;->m:Z

    if-nez v2, :cond_1

    .line 712
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/f;->a(J)V

    .line 713
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lokhttp3/internal/http2/f;->m:Z

    .line 715
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v2, v2, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 716
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v0, v0, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v2, v2, Lokhttp3/internal/http2/f;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/http2/h;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/http2/h;

    move-object v2, v0

    .line 719
    :goto_0
    invoke-static {}, Lokhttp3/internal/http2/f;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lokhttp3/internal/http2/f$d$2;

    const-string/jumbo v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v12, v12, Lokhttp3/internal/http2/f;->d:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v8, p0, v9, v10}, Lokhttp3/internal/http2/f$d$2;-><init>(Lokhttp3/internal/http2/f$d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 724
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-eqz v2, :cond_2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 726
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v1, v2, v0

    .line 727
    monitor-enter v1

    .line 728
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lokhttp3/internal/http2/h;->a(J)V

    .line 729
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 729
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 732
    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move-wide v4, v6

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 604
    sget-object v0, Lokhttp3/internal/http2/a;->c:Lokhttp3/internal/http2/a;

    .line 605
    sget-object v3, Lokhttp3/internal/http2/a;->c:Lokhttp3/internal/http2/a;

    .line 607
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    invoke-virtual {v1, p0}, Lokhttp3/internal/http2/g;->a(Lokhttp3/internal/http2/g$b;)V

    .line 608
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lokhttp3/internal/http2/g;->a(ZLokhttp3/internal/http2/g$b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    sget-object v0, Lokhttp3/internal/http2/a;->a:Lokhttp3/internal/http2/a;

    .line 611
    sget-object v1, Lokhttp3/internal/http2/a;->f:Lokhttp3/internal/http2/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 620
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    .line 622
    :goto_1
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    :try_start_2
    sget-object v2, Lokhttp3/internal/http2/a;->b:Lokhttp3/internal/http2/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :try_start_3
    sget-object v0, Lokhttp3/internal/http2/a;->b:Lokhttp3/internal/http2/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 617
    :try_start_4
    iget-object v1, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 620
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 616
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 617
    :goto_3
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 620
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/http2/f$d;->a:Lokhttp3/internal/http2/g;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/io/Closeable;)V

    throw v1

    .line 618
    :catch_1
    move-exception v0

    goto :goto_4

    .line 616
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 618
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method
