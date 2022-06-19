.class final Lcom/google/android/exoplayer2/upstream/Loader$c;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$d;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final c:Lcom/google/android/exoplayer2/upstream/Loader$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Lcom/google/android/exoplayer2/upstream/Loader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/io/IOException;

.field private g:I

.field private h:Ljava/lang/Thread;

.field private i:Z

.field private volatile j:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 347
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    .line 349
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->e:Lcom/google/android/exoplayer2/upstream/Loader$a;

    .line 350
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->a:I

    .line 351
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->d:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->f:Ljava/io/IOException;

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$c;)Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->f:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->g:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$c;)Lcom/google/android/exoplayer2/upstream/Loader$c;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 364
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 371
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->f:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 373
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 375
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->i:Z

    .line 376
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->removeMessages(I)V

    if-nez p1, :cond_2

    .line 378
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/upstream/Loader$c;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 382
    :cond_0
    monitor-enter p0

    .line 383
    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->i:Z

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$d;->a()V

    .line 385
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 389
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$c;->b()V

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 394
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->e:Lcom/google/android/exoplayer2/upstream/Loader$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/Loader$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->d:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 395
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$a;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V

    .line 400
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->e:Lcom/google/android/exoplayer2/upstream/Loader$a;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 389
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 460
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a()V

    return-void

    .line 467
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 470
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$c;->b()V

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 472
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->d:J

    sub-long v6, v4, v2

    .line 473
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->e:Lcom/google/android/exoplayer2/upstream/Loader$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Loader$a;

    .line 474
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->i:Z

    if-eqz v0, :cond_2

    .line 475
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$a;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V

    return-void

    .line 478
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_8

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 489
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->f:Ljava/io/IOException;

    .line 490
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->g:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->g:I

    .line 491
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    .line 492
    invoke-interface/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$a;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    .line 1191
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/Loader$b;->a:I

    if-ne v0, v1, :cond_4

    .line 494
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->f:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 2191
    :cond_4
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/Loader$b;->a:I

    if-eq v0, v11, :cond_7

    .line 3191
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/Loader$b;->a:I

    if-ne v0, v10, :cond_5

    .line 497
    iput v10, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->g:I

    .line 4191
    :cond_5
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/Loader$b;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 5191
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/Loader$b;->b:J

    goto :goto_0

    .line 5521
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->g:I

    sub-int/2addr p1, v10

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 499
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(J)V

    :cond_7
    :goto_1
    return-void

    .line 481
    :cond_8
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$a;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 484
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 468
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x2

    .line 408
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->i:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 410
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->h:Ljava/lang/Thread;

    .line 411
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    .line 413
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 415
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->c:Lcom/google/android/exoplayer2/upstream/Loader$d;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$d;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    :try_start_4
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    .line 418
    throw v1

    .line 420
    :cond_1
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v1, 0x0

    .line 421
    :try_start_5
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->h:Ljava/lang/Thread;

    .line 423
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 424
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 425
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-nez v1, :cond_2

    .line 426
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    .line 424
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v1

    .line 411
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 450
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 452
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 454
    :cond_3
    throw v0

    :catch_1
    move-exception v1

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 442
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-nez v2, :cond_4

    .line 444
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_2
    move-exception v1

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 434
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-nez v2, :cond_5

    .line 436
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    :catch_3
    move-exception v1

    .line 429
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$c;->j:Z

    if-nez v2, :cond_6

    .line 430
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    return-void
.end method
