.class final Landroidx/media2/exoplayer/external/upstream/Loader$c;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/upstream/Loader$d;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field final synthetic b:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private final c:Landroidx/media2/exoplayer/external/upstream/Loader$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Landroidx/media2/exoplayer/external/upstream/Loader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/io/IOException;

.field private g:I

.field private volatile h:Ljava/lang/Thread;

.field private volatile i:Z

.field private volatile j:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 331
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    .line 332
    iput-object p4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    .line 333
    iput p5, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a:I

    .line 334
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->d:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->f:Ljava/io/IOException;

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->b(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$c;)Landroidx/media2/exoplayer/external/upstream/Loader$c;

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

    .line 338
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->f:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->g:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 344
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 345
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-static {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$c;)Landroidx/media2/exoplayer/external/upstream/Loader$c;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 347
    invoke-virtual {p0, v1, p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 9

    .line 354
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->f:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 359
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 362
    :cond_0
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->i:Z

    .line 363
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/upstream/Loader$d;->a()V

    .line 364
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 369
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b()V

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 371
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->d:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$a;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V

    .line 376
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    :cond_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 433
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a()V

    return-void

    .line 440
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 443
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b()V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 445
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->d:J

    sub-long v6, v4, v0

    .line 446
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->i:Z

    if-eqz v0, :cond_2

    .line 447
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$a;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V

    return-void

    .line 450
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v10, 0x2

    if-eq v0, v10, :cond_8

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 464
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->f:Ljava/io/IOException;

    .line 465
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->g:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->g:I

    .line 466
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    .line 467
    invoke-interface/range {v2 .. v9}, Landroidx/media2/exoplayer/external/upstream/Loader$a;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object p1

    .line 1181
    iget v0, p1, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a:I

    if-ne v0, v11, :cond_4

    .line 469
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->f:Ljava/io/IOException;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 2181
    :cond_4
    iget v0, p1, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a:I

    if-eq v0, v10, :cond_7

    .line 3181
    iget v0, p1, Landroidx/media2/exoplayer/external/upstream/Loader$b;->a:I

    if-ne v0, v1, :cond_5

    .line 472
    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->g:I

    .line 4181
    :cond_5
    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/Loader$b;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 5181
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/Loader$b;->b:J

    goto :goto_0

    .line 5496
    :cond_6
    iget p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->g:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 474
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a(J)V

    :cond_7
    :goto_1
    return-void

    .line 456
    :cond_8
    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$a;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 459
    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->b:Landroidx/media2/exoplayer/external/upstream/Loader;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 452
    :cond_9
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->e:Landroidx/media2/exoplayer/external/upstream/Loader$a;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/upstream/Loader$a;->a(Landroidx/media2/exoplayer/external/upstream/Loader$d;JJZ)V

    return-void

    .line 441
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 383
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->h:Ljava/lang/Thread;

    .line 384
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->i:Z

    if-nez v3, :cond_1

    const-string v3, "load:"

    .line 385
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :try_start_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->c:Landroidx/media2/exoplayer/external/upstream/Loader$d;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/upstream/Loader$d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    throw v3

    .line 392
    :cond_1
    :goto_1
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v3, :cond_2

    .line 393
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 423
    invoke-static {v0, v2, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 425
    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 427
    :cond_3
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 415
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v0, :cond_4

    .line 417
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 407
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v0, :cond_5

    .line 409
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    :catch_3
    nop

    .line 401
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->i:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 402
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v0, :cond_6

    .line 403
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->sendEmptyMessage(I)Z

    :cond_6
    return-void

    :catch_4
    move-exception v0

    .line 396
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->j:Z

    if-nez v1, :cond_7

    .line 397
    invoke-virtual {p0, v2, v0}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method
