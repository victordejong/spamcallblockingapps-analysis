.class public Ld2/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld2/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/z0;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ld2/y0;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:I

.field public final f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ld2/f4;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public final h:Ljava/util/concurrent/ScheduledExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld2/u0;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/u0;->b:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Ld2/u0;->c:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/u0;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Ld2/u0;->e:I

    .line 7
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ld2/u0;->g:Z

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ld2/u0;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ld2/u0;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static c(Ld2/u0;Ld2/f4;)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "m_type"

    .line 2
    invoke-virtual {p1, v2}, Ld2/f4;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m_origin"

    .line 3
    invoke-virtual {p1, v3}, Ld2/f4;->f(Ljava/lang/String;)I

    move-result v3

    .line 4
    new-instance v4, Ld2/w0;

    invoke-direct {v4, p0, v2, p1}, Ld2/w0;-><init>(Ld2/u0;Ljava/lang/String;Ld2/f4;)V

    const/4 p1, 0x2

    if-lt v3, p1, :cond_0

    .line 5
    invoke-static {v4}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Ld2/u0;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JSON error from message dispatcher\'s dispatchNativeMessage(): "

    .line 7
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {v1, v1, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "RejectedExecutionException from message dispatcher\'s dispatchNativeMessage(): "

    .line 12
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v1, v1, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Ld2/z0;
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/u0;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld2/u0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/z0;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    iget-object v2, p0, Ld2/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Ld2/u0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v1}, Ld2/z0;->c()V

    .line 7
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Ld2/f1;->B:Z

    if-nez v1, :cond_1

    .line 3
    iget-boolean v0, v0, Ld2/f1;->C:Z

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ld2/u0;->e()V

    .line 6
    new-instance v1, Ld2/u0$a;

    invoke-direct {v1, p0, v0}, Ld2/u0$a;-><init>(Ld2/u0;Landroid/content/Context;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ld2/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Ld2/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld2/u0;->g:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Ld2/u0;->g:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ld2/u0;->g:Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld2/u0$b;

    invoke-direct {v1, p0}, Ld2/u0$b;-><init>(Ld2/u0;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ld2/f4;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "m_id"

    .line 1
    iget v3, p0, Ld2/u0;->e:I

    invoke-virtual {p1, v2, v3}, Ld2/f4;->g(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget v2, p0, Ld2/u0;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Ld2/u0;->e:I

    :cond_0
    const-string v2, "m_origin"

    .line 3
    invoke-virtual {p1, v2, v1}, Ld2/f4;->g(Ljava/lang/String;I)Z

    const-string v2, "m_target"

    .line 4
    invoke-virtual {p1, v2}, Ld2/f4;->f(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ld2/u0;->e()V

    .line 6
    iget-object v2, p0, Ld2/u0;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v3, p0, Ld2/u0;->b:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/z0;

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2, p1}, Ld2/z0;->e(Ld2/f4;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "JSON error in ADCMessageDispatcher\'s sendMessage(): "

    .line 9
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()I
    .locals 2

    .line 1
    iget v0, p0, Ld2/u0;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ld2/u0;->c:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/u0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/z0;

    .line 2
    invoke-interface {v1}, Ld2/z0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ld2/u0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/u0;->j:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Ld2/u0;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ld2/v0;

    invoke-direct {v2, p0}, Ld2/v0;-><init>(Ld2/u0;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ld2/u0;->j:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error when scheduling message pumping"

    .line 4
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/u0;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld2/u0;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ld2/u0;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method
