.class public final Ldt$d;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ldt$e;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ldt$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:J

.field public d:Ldt$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Ljava/io/IOException;

.field public g:I

.field public volatile h:Ljava/lang/Thread;

.field public volatile j:Z

.field public volatile k:Z

.field public final synthetic l:Ldt;


# direct methods
.method public constructor <init>(Ldt;Landroid/os/Looper;Ldt$e;Ldt$b;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Ldt$b<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Ldt$d;->l:Ldt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Ldt$d;->b:Ldt$e;

    iput-object p4, p0, Ldt$d;->d:Ldt$b;

    iput p5, p0, Ldt$d;->a:I

    iput-wide p6, p0, Ldt$d;->c:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 9

    iput-boolean p1, p0, Ldt$d;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldt$d;->f:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Ldt$d;->j:Z

    iget-object v1, p0, Ldt$d;->b:Ldt$e;

    invoke-interface {v1}, Ldt$e;->cancelLoad()V

    iget-object v1, p0, Ldt$d;->h:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldt$d;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ldt$d;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, p0, Ldt$d;->d:Ldt$b;

    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    iget-wide v6, p0, Ldt$d;->c:J

    sub-long v6, v4, v6

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Ldt$b;->j(Ldt$e;JJZ)V

    iput-object v0, p0, Ldt$d;->d:Ldt$b;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Ldt$d;->f:Ljava/io/IOException;

    iget-object v0, p0, Ldt$d;->l:Ldt;

    invoke-static {v0}, Ldt;->d(Ldt;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Ldt$d;->l:Ldt;

    invoke-static {v1}, Ldt;->a(Ldt;)Ldt$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ldt$d;->l:Ldt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldt;->b(Ldt;Ldt$d;)Ldt$d;

    return-void
.end method

.method public final d()J
    .locals 2

    iget v0, p0, Ldt$d;->g:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Ldt$d;->f:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Ldt$d;->g:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public f(J)V
    .locals 4

    iget-object v0, p0, Ldt$d;->l:Ldt;

    invoke-static {v0}, Ldt;->a(Ldt;)Ldt$d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p0, Ldt$d;->l:Ldt;

    invoke-static {v0, p0}, Ldt;->b(Ldt;Ldt$d;)Ldt$d;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldt$d;->b()V

    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget-boolean v0, p0, Ldt$d;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldt$d;->b()V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Ldt$d;->c()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Ldt$d;->c:J

    sub-long v6, v4, v0

    iget-boolean v0, p0, Ldt$d;->j:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Ldt$d;->d:Ldt$b;

    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Ldt$b;->j(Ldt$e;JJZ)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v10, 0x2

    if-eq v0, v10, :cond_7

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Ldt$d;->f:Ljava/io/IOException;

    iget p1, p0, Ldt$d;->g:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Ldt$d;->g:I

    iget-object v2, p0, Ldt$d;->d:Ldt$b;

    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    invoke-interface/range {v2 .. v9}, Ldt$b;->c(Ldt$e;JJLjava/io/IOException;I)Ldt$c;

    move-result-object p1

    invoke-static {p1}, Ldt$c;->a(Ldt$c;)I

    move-result v0

    if-ne v0, v11, :cond_4

    iget-object p1, p0, Ldt$d;->l:Ldt;

    iget-object v0, p0, Ldt$d;->f:Ljava/io/IOException;

    invoke-static {p1, v0}, Ldt;->c(Ldt;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ldt$c;->a(Ldt$c;)I

    move-result v0

    if-eq v0, v10, :cond_9

    invoke-static {p1}, Ldt$c;->a(Ldt$c;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iput v1, p0, Ldt$d;->g:I

    :cond_5
    invoke-static {p1}, Ldt$c;->b(Ldt$c;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    invoke-static {p1}, Ldt$c;->b(Ldt$c;)J

    move-result-wide v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ldt$d;->d()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Ldt$d;->f(J)V

    goto :goto_1

    :cond_7
    :try_start_0
    iget-object v2, p0, Ldt$d;->d:Ldt$b;

    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    invoke-interface/range {v2 .. v7}, Ldt$b;->h(Ldt$e;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldt$d;->l:Ldt;

    new-instance v1, Ldt$h;

    invoke-direct {v1, p1}, Ldt$h;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Ldt;->c(Ldt;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Ldt$d;->d:Ldt$b;

    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Ldt$b;->j(Ldt$e;JJZ)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ldt$d;->h:Ljava/lang/Thread;

    iget-boolean v3, p0, Ldt$d;->j:Z

    if-nez v3, :cond_1

    const-string v3, "load:"

    iget-object v4, p0, Ldt$d;->b:Ldt$e;

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
    invoke-static {v3}, Lku;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Ldt$d;->b:Ldt$e;

    invoke-interface {v3}, Ldt$e;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lku;->c()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {}, Lku;->c()V

    throw v3

    :cond_1
    :goto_1
    iget-boolean v3, p0, Ldt$d;->k:Z

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Ldt$d;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Ldt$d;->k:Z

    if-nez v0, :cond_3

    new-instance v0, Ldt$h;

    invoke-direct {v0, v1}, Ldt$h;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Lst;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Ldt$d;->k:Z

    if-nez v0, :cond_3

    new-instance v0, Ldt$h;

    invoke-direct {v0, v1}, Ldt$h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    nop

    iget-boolean v0, p0, Ldt$d;->j:Z

    invoke-static {v0}, Lit;->f(Z)V

    iget-boolean v0, p0, Ldt$d;->k:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :catch_4
    move-exception v0

    iget-boolean v1, p0, Ldt$d;->k:Z

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
