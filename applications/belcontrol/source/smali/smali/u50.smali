.class public Lu50;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc60;
.implements Lh50;
.implements Lx50$b;


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Lv50;

.field public final f:Ld60;

.field public final g:Ljava/lang/Object;

.field public h:I

.field public j:Landroid/os/PowerManager$WakeLock;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lx40;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu50;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lv50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu50;->a:Landroid/content/Context;

    iput p2, p0, Lu50;->b:I

    iput-object p4, p0, Lu50;->d:Lv50;

    iput-object p3, p0, Lu50;->c:Ljava/lang/String;

    invoke-virtual {p4}, Lv50;->f()Lv70;

    move-result-object p2

    new-instance p3, Ld60;

    invoke-direct {p3, p1, p2, p0}, Ld60;-><init>(Landroid/content/Context;Lv70;Lc60;)V

    iput-object p3, p0, Lu50;->f:Ld60;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu50;->k:Z

    iput p1, p0, Lu50;->h:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu50;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v1, Lu50;->l:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exceeded time limits on execution for %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lu50;->g()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lu50;->g()V

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Lu50;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lu50;->f:Ld60;

    invoke-virtual {v1}, Ld60;->e()V

    iget-object v1, p0, Lu50;->d:Lv50;

    invoke-virtual {v1}, Lv50;->h()Lx50;

    move-result-object v1

    iget-object v2, p0, Lu50;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lx50;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    sget-object v2, Lu50;->l:Ljava/lang/String;

    const-string v3, "Releasing wakelock %s for WorkSpec %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lu50;->c:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v1, Lu50;->l:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "onExecuted %s, %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, v2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lu50;->c()V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lu50;->a:Landroid/content/Context;

    iget-object p2, p0, Lu50;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Ls50;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lu50;->d:Lv50;

    new-instance v0, Lv50$b;

    iget v1, p0, Lu50;->b:I

    invoke-direct {v0, p2, p1, v1}, Lv50$b;-><init>(Lv50;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Lv50;->k(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean p1, p0, Lu50;->k:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lu50;->a:Landroid/content/Context;

    invoke-static {p1}, Ls50;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lu50;->d:Lv50;

    new-instance v0, Lv50$b;

    iget v1, p0, Lu50;->b:I

    invoke-direct {v0, p2, p1, v1}, Lv50$b;-><init>(Lv50;Landroid/content/Intent;I)V

    invoke-virtual {p2, v0}, Lv50;->k(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lu50;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lu50;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lu50;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput v1, p0, Lu50;->h:I

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v3, Lu50;->l:Ljava/lang/String;

    const-string v4, "onAllConstraintsMet for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lu50;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Lu50;->d:Lv50;

    invoke-virtual {v0}, Lv50;->e()Lj50;

    move-result-object v0

    iget-object v1, p0, Lu50;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj50;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu50;->d:Lv50;

    invoke-virtual {v0}, Lv50;->h()Lx50;

    move-result-object v0

    iget-object v1, p0, Lu50;->c:Ljava/lang/String;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3, p0}, Lx50;->b(Ljava/lang/String;JLx50$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu50;->c()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v3, Lu50;->l:Ljava/lang/String;

    const-string v4, "Already started work for %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lu50;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lu50;->a:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lu50;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lu50;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lr70;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    sget-object v2, Lu50;->l:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    aput-object v3, v1, v4

    iget-object v3, p0, Lu50;->c:Ljava/lang/String;

    aput-object v3, v1, v5

    const-string v3, "Acquiring wakelock %s for WorkSpec %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Lu50;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lu50;->d:Lv50;

    invoke-virtual {v0}, Lv50;->g()Lo50;

    move-result-object v0

    invoke-virtual {v0}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->y()Ld70;

    move-result-object v0

    iget-object v1, p0, Lu50;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ld70;->f(Ljava/lang/String;)Lc70;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu50;->g()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lc70;->b()Z

    move-result v1

    iput-boolean v1, p0, Lu50;->k:Z

    if-nez v1, :cond_1

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lu50;->c:Ljava/lang/String;

    aput-object v3, v1, v4

    const-string v3, "No constraints for %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, v3}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v0, p0, Lu50;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu50;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lu50;->f:Ld60;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld60;->d(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lu50;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lu50;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    iput v2, p0, Lu50;->h:I

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    sget-object v2, Lu50;->l:Ljava/lang/String;

    const-string v5, "Stopping work for WorkSpec %s"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lu50;->c:Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v5, v6}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Lu50;->a:Landroid/content/Context;

    iget-object v5, p0, Lu50;->c:Ljava/lang/String;

    invoke-static {v1, v5}, Ls50;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lu50;->d:Lv50;

    new-instance v6, Lv50$b;

    iget v7, p0, Lu50;->b:I

    invoke-direct {v6, v5, v1, v7}, Lv50$b;-><init>(Lv50;Landroid/content/Intent;I)V

    invoke-virtual {v5, v6}, Lv50;->k(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lu50;->d:Lv50;

    invoke-virtual {v1}, Lv50;->e()Lj50;

    move-result-object v1

    iget-object v5, p0, Lu50;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lj50;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    const-string v5, "WorkSpec %s needs to be rescheduled"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lu50;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v1, p0, Lu50;->a:Landroid/content/Context;

    iget-object v2, p0, Lu50;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Ls50;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lu50;->d:Lv50;

    new-instance v3, Lv50$b;

    iget v4, p0, Lu50;->b:I

    invoke-direct {v3, v2, v1, v4}, Lv50$b;-><init>(Lv50;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Lv50;->k(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    const-string v5, "Processor does not have WorkSpec %s. No need to reschedule "

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lu50;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    sget-object v2, Lu50;->l:Ljava/lang/String;

    const-string v5, "Already stopped work for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lu50;->c:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
