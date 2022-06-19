.class final Lcom/google/android/exoplayer2/upstream/Loader$d;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final d:I

.field private final e:Lcom/google/android/exoplayer2/upstream/Loader$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:J

.field private g:Lcom/google/android/exoplayer2/upstream/Loader$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private h:Ljava/io/IOException;

.field private i:I

.field private volatile j:Ljava/lang/Thread;

.field private volatile k:Z

.field private volatile l:Z

.field final synthetic m:Lcom/google/android/exoplayer2/upstream/Loader;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$e;Lcom/google/android/exoplayer2/upstream/Loader$b;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$b<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->g:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->d:I

    .line 6
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->f:J

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->h:Ljava/io/IOException;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$d;)Lcom/google/android/exoplayer2/upstream/Loader$d;

    return-void
.end method

.method private d()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->i:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Z)V
    .locals 9

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->h:Ljava/io/IOException;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->k:Z

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$e;->c()V

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->j:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$d;->c()V

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->g:Lcom/google/android/exoplayer2/upstream/Loader$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Loader$b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->f:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    .line 13
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$b;->i(Lcom/google/android/exoplayer2/upstream/Loader$e;JJZ)V

    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->g:Lcom/google/android/exoplayer2/upstream/Loader$b;

    :cond_2
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->h:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->i:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public f(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->b(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$d;)Lcom/google/android/exoplayer2/upstream/Loader$d;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$d;->b()V

    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$d;->b()V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$d;->c()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->f:J

    sub-long v6, v4, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->g:Lcom/google/android/exoplayer2/upstream/Loader$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->k:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$b;->i(Lcom/google/android/exoplayer2/upstream/Loader$e;JJZ)V

    return-void

    .line 10
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->h:Ljava/io/IOException;

    .line 12
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->i:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->i:I

    .line 13
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    .line 14
    invoke-interface/range {v2 .. v9}, Lcom/google/android/exoplayer2/upstream/Loader$b;->s(Lcom/google/android/exoplayer2/upstream/Loader$e;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;)I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->h:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;)I

    move-result v0

    if-eq v0, v10, :cond_9

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(Lcom/google/android/exoplayer2/upstream/Loader$c;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 19
    iput v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->i:I

    .line 20
    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->b(Lcom/google/android/exoplayer2/upstream/Loader$c;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->b(Lcom/google/android/exoplayer2/upstream/Loader$c;)J

    move-result-wide v0

    goto :goto_0

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$d;->d()J

    move-result-wide v0

    .line 23
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$d;->f(J)V

    goto :goto_1

    .line 24
    :cond_7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$b;->k(Lcom/google/android/exoplayer2/upstream/Loader$e;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 25
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->c(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 27
    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$b;->i(Lcom/google/android/exoplayer2/upstream/Loader$e;JJZ)V

    :cond_9
    :goto_1
    return-void

    .line 28
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 5

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->j:Ljava/lang/Thread;

    .line 2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->k:Z

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/f0;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->e:Lcom/google/android/exoplayer2/upstream/Loader$e;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/Loader$e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/f0;->c()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/google/android/exoplayer2/util/f0;->c()V

    .line 6
    throw v3

    .line 7
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/util/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    :cond_1
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 13
    invoke-static {v0, v3, v1}, Lcom/google/android/exoplayer2/util/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 16
    invoke-static {v0, v3, v1}, Lcom/google/android/exoplayer2/util/o;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_3
    nop

    .line 19
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->k:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_4
    move-exception v0

    .line 22
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$d;->l:Z

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method
