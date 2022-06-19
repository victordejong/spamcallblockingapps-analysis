.class public final Lokhttp3/internal/a/d;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/a/d$b;,
        Lokhttp3/internal/a/d$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic j:Z


# instance fields
.field final b:Lokhttp3/internal/d/a;

.field final c:I

.field d:La/d;

.field final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field private k:J

.field private l:J

.field private m:J

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/a/d;->j:Z

    .line 94
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/a/d;->a:Ljava/util/regex/Pattern;

    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 653
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lokhttp3/internal/a/d$a;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lokhttp3/internal/a/d$a;->a:Lokhttp3/internal/a/d$b;

    .line 536
    iget-object v1, v2, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    if-eq v1, p1, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 541
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    iget-boolean v1, v2, Lokhttp3/internal/a/d$b;->e:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 542
    :goto_0
    iget v3, p0, Lokhttp3/internal/a/d;->c:I

    if-ge v1, v3, :cond_4

    .line 543
    iget-object v3, p1, Lokhttp3/internal/a/d$a;->b:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 544
    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->b()V

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    iget-object v4, v2, Lokhttp3/internal/a/d$b;->d:[Ljava/io/File;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lokhttp3/internal/d/a;->b(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 548
    invoke-virtual {p1}, Lokhttp3/internal/a/d$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 542
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lokhttp3/internal/a/d;->c:I

    if-ge v0, v1, :cond_7

    .line 555
    iget-object v1, v2, Lokhttp3/internal/a/d$b;->d:[Ljava/io/File;

    aget-object v1, v1, v0

    .line 556
    if-eqz p2, :cond_6

    .line 557
    iget-object v3, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    invoke-interface {v3, v1}, Lokhttp3/internal/d/a;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 558
    iget-object v3, v2, Lokhttp3/internal/a/d$b;->c:[Ljava/io/File;

    aget-object v3, v3, v0

    .line 559
    iget-object v4, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    invoke-interface {v4, v1, v3}, Lokhttp3/internal/d/a;->a(Ljava/io/File;Ljava/io/File;)V

    .line 560
    iget-object v1, v2, Lokhttp3/internal/a/d$b;->b:[J

    aget-wide v4, v1, v0

    .line 561
    iget-object v1, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    invoke-interface {v1, v3}, Lokhttp3/internal/d/a;->c(Ljava/io/File;)J

    move-result-wide v6

    .line 562
    iget-object v1, v2, Lokhttp3/internal/a/d$b;->b:[J

    aput-wide v6, v1, v0

    .line 563
    iget-wide v8, p0, Lokhttp3/internal/a/d;->l:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/a/d;->l:J

    .line 554
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 566
    :cond_6
    iget-object v3, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    invoke-interface {v3, v1}, Lokhttp3/internal/d/a;->a(Ljava/io/File;)V

    goto :goto_3

    .line 570
    :cond_7
    iget v0, p0, Lokhttp3/internal/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/d;->f:I

    .line 571
    const/4 v0, 0x0

    iput-object v0, v2, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    .line 572
    iget-boolean v0, v2, Lokhttp3/internal/a/d$b;->e:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, v2, Lokhttp3/internal/a/d$b;->e:Z

    .line 574
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    const-string/jumbo v1, "CLEAN"

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, La/d;->i(I)La/d;

    .line 575
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    .line 576
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    invoke-virtual {v2, v0}, Lokhttp3/internal/a/d$b;->a(La/d;)V

    .line 577
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, La/d;->i(I)La/d;

    .line 578
    if-eqz p2, :cond_8

    .line 579
    iget-wide v0, p0, Lokhttp3/internal/a/d;->m:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lokhttp3/internal/a/d;->m:J

    iput-wide v0, v2, Lokhttp3/internal/a/d$b;->g:J

    .line 587
    :cond_8
    :goto_4
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    invoke-interface {v0}, La/d;->flush()V

    .line 589
    iget-wide v0, p0, Lokhttp3/internal/a/d;->l:J

    iget-wide v2, p0, Lokhttp3/internal/a/d;->k:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 582
    :cond_a
    iget-object v0, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    const-string/jumbo v1, "REMOVE"

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, La/d;->i(I)La/d;

    .line 584
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    iget-object v1, v2, Lokhttp3/internal/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    .line 585
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, La/d;->i(I)La/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method a()Z
    .locals 2

    .prologue
    .line 599
    .line 600
    iget v0, p0, Lokhttp3/internal/a/d;->f:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/a/d;->f:I

    iget-object v1, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    .line 601
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 600
    :goto_0
    return v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lokhttp3/internal/a/d$b;)Z
    .locals 6

    .prologue
    .line 623
    iget-object v0, p1, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p1, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    invoke-virtual {v0}, Lokhttp3/internal/a/d$a;->a()V

    .line 627
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lokhttp3/internal/a/d;->c:I

    if-ge v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Lokhttp3/internal/a/d;->b:Lokhttp3/internal/d/a;

    iget-object v2, p1, Lokhttp3/internal/a/d$b;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/d/a;->a(Ljava/io/File;)V

    .line 629
    iget-wide v2, p0, Lokhttp3/internal/a/d;->l:J

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->b:[J

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/a/d;->l:J

    .line 630
    iget-object v1, p1, Lokhttp3/internal/a/d$b;->b:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    iget v0, p0, Lokhttp3/internal/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/a/d;->f:I

    .line 634
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    const-string/jumbo v1, "REMOVE"

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, La/d;->i(I)La/d;

    move-result-object v0

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, La/d;->i(I)La/d;

    .line 635
    iget-object v0, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lokhttp3/internal/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lokhttp3/internal/a/d;->n:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/a/d;->o:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 641
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 683
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/a/d;->l:J

    iget-wide v2, p0, Lokhttp3/internal/a/d;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 684
    iget-object v0, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/a/d$b;

    .line 685
    invoke-virtual {p0, v0}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/a/d$b;)Z

    goto :goto_0

    .line 687
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->i:Z

    .line 688
    return-void
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/a/d;->h:Z

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :goto_0
    monitor-exit p0

    return-void

    .line 671
    :cond_1
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/a/d;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/a/d$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/a/d$b;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 672
    iget-object v4, v3, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    if-eqz v4, :cond_2

    .line 673
    iget-object v3, v3, Lokhttp3/internal/a/d$b;->f:Lokhttp3/internal/a/d$a;

    invoke-virtual {v3}, Lokhttp3/internal/a/d$a;->b()V

    .line 671
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 676
    :cond_3
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->c()V

    .line 677
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    invoke-interface {v0}, La/d;->close()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/d;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/a/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 662
    :goto_0
    monitor-exit p0

    return-void

    .line 659
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/a/d;->d()V

    .line 660
    invoke-virtual {p0}, Lokhttp3/internal/a/d;->c()V

    .line 661
    iget-object v0, p0, Lokhttp3/internal/a/d;->d:La/d;

    invoke-interface {v0}, La/d;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
