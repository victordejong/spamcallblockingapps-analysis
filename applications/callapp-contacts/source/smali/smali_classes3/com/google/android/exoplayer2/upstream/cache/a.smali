.class public final Lcom/google/android/exoplayer2/upstream/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/h;

.field private final c:Lcom/google/android/exoplayer2/upstream/h;

.field private final d:Lcom/google/android/exoplayer2/upstream/h;

.field private final e:Lcom/google/android/exoplayer2/upstream/cache/f;

.field private final f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private j:Landroid/net/Uri;

.field private k:Lcom/google/android/exoplayer2/upstream/j;

.field private l:Lcom/google/android/exoplayer2/upstream/h;

.field private m:Z

.field private n:J

.field private o:J

.field private p:Lcom/google/android/exoplayer2/upstream/cache/g;

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;I)V
    .locals 7

    .line 424
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 455
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/f;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v9, p6

    .line 489
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/cache/f;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/cache/f;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 512
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/h;

    if-eqz p5, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    sget-object p5, Lcom/google/android/exoplayer2/upstream/cache/f;->a:Lcom/google/android/exoplayer2/upstream/cache/f;

    :goto_0
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->e:Lcom/google/android/exoplayer2/upstream/cache/f;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 514
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->g:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 515
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->h:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_3

    const/4 p3, 0x1

    .line 516
    :cond_3
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    if-eqz p7, :cond_4

    .line 520
    new-instance p3, Lcom/google/android/exoplayer2/upstream/s;

    invoke-direct {p3, p2, p7, p8}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object p2, p3

    .line 524
    :cond_4
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    if-eqz p4, :cond_5

    .line 527
    new-instance p1, Lcom/google/android/exoplayer2/upstream/u;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 528
    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_3

    .line 530
    :cond_6
    sget-object p2, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/q;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 531
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/h;

    .line 533
    :goto_3
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/cache/f;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$a;Lcom/google/android/exoplayer2/upstream/cache/a$1;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/upstream/g;Lcom/google/android/exoplayer2/upstream/cache/f;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/a$a;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/j;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 675
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 676
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v3, v9

    goto :goto_0

    .line 678
    :cond_0
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->g:Z

    if-eqz v3, :cond_1

    .line 680
    :try_start_0
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 683
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 686
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->b(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/g;

    move-result-object v3

    :goto_0
    const-wide/16 v4, -0x1

    if-nez v3, :cond_2

    .line 694
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/j;->a()Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    .line 3153
    iput-wide v10, v7, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    .line 696
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    .line 3164
    iput-wide v10, v7, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    .line 696
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v7

    goto :goto_2

    .line 697
    :cond_2
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->d:Z

    if-eqz v6, :cond_4

    .line 699
    iget-object v6, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 700
    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->b:J

    .line 701
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    sub-long/2addr v10, v7

    .line 702
    iget-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    sub-long/2addr v12, v10

    .line 703
    iget-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_3

    .line 704
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 708
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/j;->a()Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object v14

    .line 4094
    iput-object v6, v14, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    .line 4105
    iput-wide v7, v14, Lcom/google/android/exoplayer2/upstream/j$a;->b:J

    .line 4153
    iput-wide v10, v14, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    .line 4164
    iput-wide v12, v14, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    .line 713
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v7

    .line 714
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/h;

    goto :goto_2

    .line 718
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/g;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 719
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    goto :goto_1

    .line 721
    :cond_5
    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/cache/g;->c:J

    .line 722
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_6

    .line 723
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 727
    :cond_6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/j;->a()Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object v8

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    .line 5153
    iput-wide v10, v8, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    .line 5164
    iput-wide v6, v8, Lcom/google/android/exoplayer2/upstream/j$a;->g:J

    .line 727
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v7

    .line 728
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/h;

    if-eqz v6, :cond_7

    goto :goto_2

    .line 731
    :cond_7
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    .line 732
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v8, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    move-object v3, v9

    .line 738
    :goto_2
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    if-ne v6, v8, :cond_8

    .line 739
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_3

    :cond_8
    const-wide v10, 0x7fffffffffffffffL

    .line 740
    :goto_3
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->t:J

    if-eqz p2, :cond_b

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->e()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 743
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    if-ne v6, v8, :cond_9

    return-void

    .line 749
    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 751
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 753
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    .line 755
    :cond_a
    throw v2

    :cond_b
    :goto_4
    if-eqz v3, :cond_c

    .line 759
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/g;->b()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 760
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lcom/google/android/exoplayer2/upstream/cache/g;

    .line 762
    :cond_c
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    .line 763
    iget-wide v10, v7, Lcom/google/android/exoplayer2/upstream/j;->h:J

    const/4 v3, 0x1

    cmp-long v8, v10, v4

    if-nez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    .line 764
    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    move-result-wide v7

    .line 767
    new-instance v10, Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>()V

    .line 768
    iget-boolean v11, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    if-eqz v11, :cond_e

    cmp-long v11, v7, v4

    if-eqz v11, :cond_e

    .line 769
    iput-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    .line 770
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    add-long/2addr v4, v7

    const-string v7, "exo_len"

    .line 6046
    invoke-virtual {v10, v7, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/k;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/k;

    .line 772
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->d()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 773
    invoke-interface {v6}, Lcom/google/android/exoplayer2/upstream/h;->a()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    .line 774
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_f

    .line 775
    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    :cond_f
    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/upstream/cache/k;->a(Lcom/google/android/exoplayer2/upstream/cache/k;Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/cache/k;

    .line 777
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 778
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v2, v10}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V

    :cond_11
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 783
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/k;-><init>()V

    .line 786
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    const-string v3, "exo_len"

    .line 7046
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/k;->a(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/k;

    .line 787
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/k;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 829
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 830
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->q:Z

    :cond_1
    return-void
.end method

.method private d()Z
    .locals 1

    .line 797
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()Z
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g()Z
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->c:Lcom/google/android/exoplayer2/upstream/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 817
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    .line 820
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lcom/google/android/exoplayer2/upstream/cache/g;

    if-eqz v0, :cond_1

    .line 822
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    .line 823
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lcom/google/android/exoplayer2/upstream/cache/g;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 819
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    .line 820
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    .line 821
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lcom/google/android/exoplayer2/upstream/cache/g;

    if-eqz v1, :cond_2

    .line 822
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Lcom/google/android/exoplayer2/upstream/cache/g;)V

    .line 823
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->p:Lcom/google/android/exoplayer2/upstream/cache/g;

    .line 825
    :cond_2
    throw v0
.end method


# virtual methods
.method public final a([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/j;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return v1

    .line 593
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    return v6

    .line 597
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->t:J

    cmp-long v9, v2, v7

    if-ltz v9, :cond_2

    const/4 v2, 0x1

    .line 598
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Lcom/google/android/exoplayer2/upstream/j;Z)V

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->l:Lcom/google/android/exoplayer2/upstream/h;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result v2

    const-wide/16 v7, -0x1

    if-eq v2, v6, :cond_4

    .line 602
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 603
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    int-to-long v3, v2

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    .line 605
    :cond_3
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    int-to-long v3, v2

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    .line 606
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long p3, p1, v7

    if-eqz p3, :cond_6

    sub-long/2addr p1, v3

    .line 607
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    goto :goto_0

    .line 609
    :cond_4
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    if-eqz v3, :cond_5

    .line 610
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_5
    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v3, v9, v4

    if-gtz v3, :cond_7

    cmp-long v3, v9, v7

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    .line 612
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()V

    .line 613
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Lcom/google/android/exoplayer2/upstream/j;Z)V

    .line 614
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/a;->a([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 625
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/Throwable;)V

    .line 626
    throw p1

    :catch_0
    move-exception p1

    .line 618
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->m:Z

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;->a(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 619
    iget-object p1, v0, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/String;)V

    return v6

    .line 622
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/Throwable;)V

    .line 623
    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->e:Lcom/google/android/exoplayer2/upstream/cache/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/f;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/j;)Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/j;->a()Lcom/google/android/exoplayer2/upstream/j$a;

    move-result-object v1

    .line 1175
    iput-object v0, v1, Lcom/google/android/exoplayer2/upstream/j$a;->h:Ljava/lang/String;

    .line 557
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v1

    .line 558
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/j;

    .line 559
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    .line 1792
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v2

    const-string v4, "exo_redir"

    .line 2084
    invoke-interface {v2, v4}, Lcom/google/android/exoplayer2/upstream/cache/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2085
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 559
    :cond_1
    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    .line 560
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    .line 2835
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->h:Z

    const/4 v3, 0x1

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->q:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 2837
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->i:Z

    if-eqz v2, :cond_3

    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    cmp-long v2, v8, v5

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 563
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    .line 568
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    cmp-long v4, v2, v5

    if-nez v4, :cond_7

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->r:Z

    if-eqz v2, :cond_5

    goto :goto_3

    .line 571
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/j$-CC;->a(Lcom/google/android/exoplayer2/upstream/cache/j;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    cmp-long v0, v2, v5

    if-eqz v0, :cond_8

    .line 573
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/j;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_6

    goto :goto_4

    .line 575
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    invoke-direct {p1, v7}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 569
    :cond_7
    :goto_3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/j;->h:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J

    .line 579
    :cond_8
    :goto_4
    invoke-direct {p0, v1, v7}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Lcom/google/android/exoplayer2/upstream/j;Z)V

    .line 580
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p1

    .line 582
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/Throwable;)V

    .line 583
    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 548
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->b:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->d:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 641
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->k:Lcom/google/android/exoplayer2/upstream/j;

    .line 647
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->j:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 648
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->n:J

    .line 2851
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->f:Lcom/google/android/exoplayer2/upstream/cache/a$a;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 2852
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->a()J

    .line 2853
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/a;->s:J

    .line 651
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 653
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/a;->a(Ljava/lang/Throwable;)V

    .line 654
    throw v0
.end method
