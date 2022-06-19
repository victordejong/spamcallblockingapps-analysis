.class public Ld2/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ld2/k2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    .line 2
    iput-wide v0, p0, Ld2/g2;->a:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld2/g2;->d:Z

    .line 4
    iput-boolean v0, p0, Ld2/g2;->e:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld2/g2;->g:Z

    .line 6
    iput-boolean v0, p0, Ld2/g2;->h:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ld2/g2;->e:Z

    .line 2
    iget-object v1, p0, Ld2/g2;->k:Ld2/k2;

    .line 3
    iget-object v2, v1, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, v1, Ld2/k2;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Ld2/i2;

    invoke-direct {v4, v1}, Ld2/i2;-><init>(Ld2/k2;)V

    iget-object v5, v1, Ld2/k2;->d:Ld2/g2;

    .line 5
    iget-wide v5, v5, Ld2/g2;->a:J

    .line 6
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v2, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v1, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RejectedExecutionException when scheduling session stop "

    .line 8
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v3, v3, v1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 13
    :cond_0
    :goto_0
    new-instance v1, Ld2/g2$b;

    invoke-direct {v1, p0, p1}, Ld2/g2$b;-><init>(Ld2/g2;Z)V

    .line 14
    invoke-static {v1}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "RejectedExecutionException on session pause."

    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v3, v3, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ld2/g2;->e:Z

    .line 2
    iget-object v1, p0, Ld2/g2;->k:Ld2/k2;

    .line 3
    iget-object v2, v1, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v1, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Ld2/k2;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    :cond_0
    new-instance v1, Ld2/g2$c;

    invoke-direct {v1, p0, p1}, Ld2/g2$c;-><init>(Ld2/g2;Z)V

    .line 7
    invoke-static {v1}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "RejectedExecutionException on session resume."

    .line 8
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v0, p1, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 5

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ld2/g2;->f:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v1, p0, Ld2/g2;->i:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iput-boolean v2, v0, Ld2/f1;->B:Z

    .line 5
    iput-boolean v2, p0, Ld2/g2;->i:Z

    .line 6
    :cond_1
    iput v2, p0, Ld2/g2;->b:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Ld2/g2;->c:J

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ld2/g2;->d:Z

    .line 9
    iput-boolean v1, p0, Ld2/g2;->f:Z

    .line 10
    iput-boolean v1, p0, Ld2/g2;->g:Z

    .line 11
    iput-boolean v2, p0, Ld2/g2;->h:Z

    .line 12
    sget-object v3, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    :cond_2
    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 15
    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-static {p1, v4, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    new-instance v3, Ld2/t0;

    const-string v4, "SessionInfo.on_start"

    invoke-direct {v3, v4, v1, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v3}, Ld2/t0;->b()V

    .line 17
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->q()Ld2/u0;

    move-result-object p1

    .line 18
    iget-object p1, p1, Ld2/u0;->b:Ljava/util/HashMap;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/x3;

    if-eqz p1, :cond_3

    .line 20
    new-instance v3, Ld2/g2$a;

    invoke-direct {v3, p0, p1, v0}, Ld2/g2$a;-><init>(Ld2/g2;Ld2/x3;Ld2/f1;)V

    invoke-static {v3}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "RejectedExecutionException on controller update."

    .line 21
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {v2, v2, p1, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 23
    :cond_3
    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/u0;->i()V

    .line 24
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object p1

    .line 25
    iget-object p1, p1, Ld2/d3;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v1, p0, Ld2/g2;->e:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ld2/g2;->b(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-boolean v1, p0, Ld2/g2;->e:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ld2/g2;->a(Z)V

    .line 5
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ld2/g2;->d:Z

    return-void
.end method
