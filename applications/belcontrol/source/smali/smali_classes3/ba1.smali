.class public Lba1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lba1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Li91;Ln91$b;)V
    .locals 3

    invoke-static {p0, p1}, Lba1;->b(Li91;Ln91$b;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lm91$c;->g:Lm91$c;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p1, Lba1;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    sget-object p1, Lba1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lba1$a;

    invoke-direct {v0, p0}, Lba1$a;-><init>(Li91;)V

    const-wide/16 v1, 0x0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lba1;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static b(Li91;Ln91$b;)Z
    .locals 2

    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr71$a;->J0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lr71$a;->h:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lr71$a;->g:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Ln91$b;->a:Ln91$a;

    sget-object v1, Ln91$a;->p:Ln91$a;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Ln91$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Ln91$b;->c:Lq71$a;

    invoke-virtual {v0}, Lq71$a;->d()Lq71$a;

    move-result-object v0

    sget-object v1, Lq71$a;->f:Lq71$a;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object p1, p1, Ln91$b;->a:Ln91$a;

    sget-object v0, Ln91$a;->c:Ln91$a;

    if-eq p1, v0, :cond_3

    sget-object v0, Ln91$a;->f:Ln91$a;

    if-eq p1, v0, :cond_3

    sget-object v0, Ln91$a;->o:Ln91$a;

    if-eq p1, v0, :cond_3

    sget-object v0, Ln91$a;->h:Ln91$a;

    if-eq p1, v0, :cond_3

    sget-object v0, Ln91$a;->g:Ln91$a;

    if-eq p1, v0, :cond_3

    sget-object v0, Ln91$a;->k:Ln91$a;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Li91;->p()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Li91;->n()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Li91;->s()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Li91;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
