.class public Lp1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/k$c;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/work/WorkerParameters$a;

.field public e:Lx1/p;

.field public f:Landroidx/work/ListenableWorker;

.field public g:La2/a;

.field public h:Landroidx/work/ListenableWorker$a;

.field public i:Landroidx/work/a;

.field public j:Lw1/a;

.field public k:Landroidx/work/impl/WorkDatabase;

.field public l:Lx1/q;

.field public m:Lx1/b;

.field public n:Lx1/t;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:Lz1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp1/k;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp1/k$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Lp1/k;->h:Landroidx/work/ListenableWorker$a;

    .line 4
    new-instance v0, Lz1/c;

    invoke-direct {v0}, Lz1/c;-><init>()V

    .line 5
    iput-object v0, p0, Lp1/k;->q:Lz1/c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lp1/k;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    iget-object v1, p1, Lp1/k$c;->a:Landroid/content/Context;

    iput-object v1, p0, Lp1/k;->a:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Lp1/k$c;->c:La2/a;

    iput-object v1, p0, Lp1/k;->g:La2/a;

    .line 9
    iget-object v1, p1, Lp1/k$c;->b:Lw1/a;

    iput-object v1, p0, Lp1/k;->j:Lw1/a;

    .line 10
    iget-object v1, p1, Lp1/k$c;->f:Ljava/lang/String;

    iput-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lp1/k$c;->g:Ljava/util/List;

    iput-object v1, p0, Lp1/k;->c:Ljava/util/List;

    .line 12
    iget-object v1, p1, Lp1/k$c;->h:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Lp1/k;->d:Landroidx/work/WorkerParameters$a;

    .line 13
    iput-object v0, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    .line 14
    iget-object v0, p1, Lp1/k$c;->d:Landroidx/work/a;

    iput-object v0, p0, Lp1/k;->i:Landroidx/work/a;

    .line 15
    iget-object p1, p1, Lp1/k$c;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object p1

    iput-object p1, p0, Lp1/k;->l:Lx1/q;

    .line 17
    iget-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l()Lx1/b;

    move-result-object p1

    iput-object p1, p0, Lp1/k;->m:Lx1/b;

    .line 18
    iget-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->r()Lx1/t;

    move-result-object p1

    iput-object p1, p0, Lp1/k;->n:Lx1/t;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v0, Lp1/k;->t:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lp1/k;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lp1/k;->e:Lx1/p;

    invoke-virtual {p1}, Lx1/p;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lp1/k;->f()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ld1/f;->c()V

    .line 8
    :try_start_0
    iget-object p1, p0, Lp1/k;->l:Lx1/q;

    sget-object v0, Lo1/m;->c:Lo1/m;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast p1, Lx1/r;

    invoke-virtual {p1, v0, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lp1/k;->h:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 10
    iget-object p1, p1, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/b;

    .line 11
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v3, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v3, p1}, Lx1/r;->n(Ljava/lang/String;Landroidx/work/b;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    iget-object p1, p0, Lp1/k;->m:Lx1/b;

    iget-object v0, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast p1, Lx1/c;

    invoke-virtual {p1, v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lp1/k;->l:Lx1/q;

    check-cast v5, Lx1/r;

    invoke-virtual {v5, v0}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v5

    sget-object v6, Lo1/m;->e:Lo1/m;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lp1/k;->m:Lx1/b;

    .line 16
    check-cast v5, Lx1/c;

    invoke-virtual {v5, v0}, Lx1/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v5

    sget-object v6, Lp1/k;->t:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 19
    invoke-virtual {v5, v6, v7, v8}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 20
    iget-object v5, p0, Lp1/k;->l:Lx1/q;

    sget-object v6, Lo1/m;->a:Lo1/m;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2

    check-cast v5, Lx1/r;

    invoke-virtual {v5, v6, v7}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 21
    iget-object v5, p0, Lp1/k;->l:Lx1/q;

    check-cast v5, Lx1/r;

    invoke-virtual {v5, v0, v3, v4}, Lx1/r;->o(Ljava/lang/String;J)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Ld1/f;->g()V

    .line 24
    invoke-virtual {p0, v2}, Lp1/k;->g(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 26
    invoke-virtual {p0, v2}, Lp1/k;->g(Z)V

    .line 27
    throw p1

    .line 28
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 29
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v0, Lp1/k;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lp1/k;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 30
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 32
    invoke-virtual {p0}, Lp1/k;->e()V

    goto :goto_1

    .line 33
    :cond_4
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object p1

    sget-object v0, Lp1/k;->t:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lp1/k;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lo1/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    iget-object p1, p0, Lp1/k;->e:Lx1/p;

    invoke-virtual {p1}, Lx1/p;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p0}, Lp1/k;->f()V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {p0}, Lp1/k;->j()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp1/k;->s:Z

    .line 2
    invoke-virtual {p0}, Lp1/k;->k()Z

    .line 3
    iget-object v1, p0, Lp1/k;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    .line 5
    iget-object v3, p0, Lp1/k;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v3}, Landroidx/work/ListenableWorker;->stop()V

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lp1/k;->e:Lx1/p;

    aput-object v1, v0, v2

    const-string v1, "WorkSpec %s is already done. Not interrupting."

    .line 9
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v3, Lp1/k;->t:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v0, v2}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    check-cast v1, Lx1/r;

    invoke-virtual {v1, p1}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v1

    sget-object v2, Lo1/m;->f:Lo1/m;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    sget-object v2, Lo1/m;->d:Lo1/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Lp1/k;->m:Lx1/b;

    check-cast v1, Lx1/c;

    invoke-virtual {v1, p1}, Lx1/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp1/k;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v1}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()Lx1/n;

    move-result-object v1

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v1, Lx1/o;

    invoke-virtual {v1, v2}, Lx1/o;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lo1/m;->b:Lo1/m;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lp1/k;->h:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Lp1/k;->a(Landroidx/work/ListenableWorker$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lo1/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lp1/k;->e()V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 12
    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lp1/k;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/d;

    .line 15
    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lp1/d;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Lp1/k;->i:Landroidx/work/a;

    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lp1/k;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lp1/e;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->c()V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    sget-object v2, Lo1/m;->a:Lo1/m;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3, v4}, Lx1/r;->o(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3, v4}, Lx1/r;->l(Ljava/lang/String;J)I

    .line 5
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 7
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->g()V

    .line 9
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    .line 10
    throw v1
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3, v4}, Lx1/r;->o(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    sget-object v2, Lo1/m;->a:Lo1/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2}, Lx1/r;->m(Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2, v3, v4}, Lx1/r;->l(Ljava/lang/String;J)I

    .line 6
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 8
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->g()V

    .line 10
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    .line 11
    throw v1
.end method

.method public final g(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lx1/q;

    move-result-object v0

    check-cast v0, Lx1/r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Ld1/h;->l(Ljava/lang/String;I)Ld1/h;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lx1/r;->a:Ld1/f;

    invoke-virtual {v3}, Ld1/f;->b()V

    .line 5
    iget-object v0, v0, Lx1/r;->a:Ld1/f;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lf1/b;->a(Ld1/f;Lg1/d;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 8
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v1}, Ld1/h;->release()V

    if-nez v3, :cond_1

    .line 10
    iget-object v0, p0, Lp1/k;->a:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v1, v2}, Ly1/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    sget-object v1, Lo1/m;->a:Lo1/m;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v1, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    const-wide/16 v2, -0x1

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v1, v2, v3}, Lx1/r;->l(Ljava/lang/String;J)I

    .line 13
    :cond_2
    iget-object v0, p0, Lp1/k;->e:Lx1/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->isRunInForeground()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lp1/k;->j:Lw1/a;

    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lp1/c;

    .line 15
    iget-object v2, v0, Lp1/c;->k:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    iget-object v3, v0, Lp1/c;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0}, Lp1/c;->h()V

    .line 18
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 19
    :cond_3
    :goto_1
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 20
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 21
    iget-object v0, p0, Lp1/k;->q:Lz1/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz1/c;->k(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception p1

    .line 22
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v1}, Ld1/h;->release()V

    .line 24
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 25
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    .line 26
    throw p1
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v1}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v0

    .line 2
    sget-object v1, Lo1/m;->b:Lo1/m;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Lp1/k;->g(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v1

    sget-object v4, Lp1/k;->t:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Lp1/k;->g(Z)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 15

    .line 1
    sget-object v0, Lo1/m;->a:Lo1/m;

    invoke-virtual {p0}, Lp1/k;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->c()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v1, Lx1/r;

    invoke-virtual {v1, v2}, Lx1/r;->i(Ljava/lang/String;)Lx1/p;

    move-result-object v1

    iput-object v1, p0, Lp1/k;->e:Lx1/p;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const-string v4, "Didn\'t find WorkSpec for id %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lp1/k;->b:Ljava/lang/String;

    aput-object v5, v3, v2

    .line 5
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 6
    invoke-virtual {v0, v1, v3, v4}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v2}, Lp1/k;->g(Z)V

    .line 8
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    return-void

    .line 10
    :cond_1
    :try_start_1
    iget-object v4, v1, Lx1/p;->b:Lo1/m;

    if-eq v4, v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lp1/k;->h()V

    .line 12
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V

    .line 13
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const-string v4, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lp1/k;->e:Lx1/p;

    iget-object v5, v5, Lx1/p;->c:Ljava/lang/String;

    aput-object v5, v3, v2

    .line 14
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 15
    invoke-virtual {v0, v1, v3, v2}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    return-void

    .line 17
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lx1/p;->c()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lp1/k;->e:Lx1/p;

    .line 18
    iget-object v4, v1, Lx1/p;->b:Lo1/m;

    if-ne v4, v0, :cond_3

    iget v1, v1, Lx1/p;->k:I

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 19
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 20
    iget-object v1, p0, Lp1/k;->e:Lx1/p;

    iget-wide v6, v1, Lx1/p;->n:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    .line 21
    invoke-virtual {v1}, Lx1/p;->a()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    .line 22
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const-string v4, "Delaying execution for %s because it is being executed before schedule."

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lp1/k;->e:Lx1/p;

    iget-object v6, v6, Lx1/p;->c:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 24
    invoke-virtual {v0, v1, v4, v2}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 25
    invoke-virtual {p0, v3}, Lp1/k;->g(Z)V

    .line 26
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->g()V

    return-void

    .line 28
    :cond_6
    :try_start_3
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 30
    iget-object v1, p0, Lp1/k;->e:Lx1/p;

    invoke-virtual {v1}, Lx1/p;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    iget-object v1, p0, Lp1/k;->e:Lx1/p;

    iget-object v1, v1, Lx1/p;->e:Landroidx/work/b;

    :goto_2
    move-object v4, v1

    goto/16 :goto_6

    .line 32
    :cond_7
    iget-object v1, p0, Lp1/k;->i:Landroidx/work/a;

    .line 33
    iget-object v1, v1, Landroidx/work/a;->d:Lo1/n;

    .line 34
    iget-object v4, p0, Lp1/k;->e:Lx1/p;

    iget-object v4, v4, Lx1/p;->d:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lo1/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    :try_start_4
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo1/f;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 39
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v6

    sget-object v7, Lo1/f;->a:Ljava/lang/String;

    const-string v8, "Trouble instantiating + "

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v8, v3, [Ljava/lang/Throwable;

    aput-object v5, v8, v2

    invoke-virtual {v6, v7, v4, v8}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object v5, v1

    :goto_3
    if-nez v5, :cond_8

    .line 40
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lp1/k;->e:Lx1/p;

    iget-object v4, v4, Lx1/p;->d:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Could not create Input Merger %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v2}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 41
    invoke-virtual {p0}, Lp1/k;->j()V

    return-void

    .line 42
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v6, p0, Lp1/k;->e:Lx1/p;

    iget-object v6, v6, Lx1/p;->e:Landroidx/work/b;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v6, p0, Lp1/k;->l:Lx1/q;

    iget-object v7, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v6, Lx1/r;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 45
    invoke-static {v8, v3}, Ld1/h;->l(Ljava/lang/String;I)Ld1/h;

    move-result-object v8

    if-nez v7, :cond_9

    .line 46
    invoke-virtual {v8, v3}, Ld1/h;->p(I)V

    goto :goto_4

    .line 47
    :cond_9
    invoke-virtual {v8, v3, v7}, Ld1/h;->r(ILjava/lang/String;)V

    .line 48
    :goto_4
    iget-object v3, v6, Lx1/r;->a:Ld1/f;

    invoke-virtual {v3}, Ld1/f;->b()V

    .line 49
    iget-object v3, v6, Lx1/r;->a:Ld1/f;

    invoke-static {v3, v8, v2, v1}, Lf1/b;->a(Ld1/f;Lg1/d;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 50
    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 52
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 53
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    .line 54
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 55
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    invoke-virtual {v8}, Ld1/h;->release()V

    .line 57
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {v5, v4}, Lo1/f;->a(Ljava/util/List;)Landroidx/work/b;

    move-result-object v1

    goto/16 :goto_2

    .line 59
    :goto_6
    new-instance v1, Landroidx/work/WorkerParameters;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lp1/k;->o:Ljava/util/List;

    iget-object v6, p0, Lp1/k;->d:Landroidx/work/WorkerParameters$a;

    iget-object v2, p0, Lp1/k;->e:Lx1/p;

    iget v7, v2, Lx1/p;->k:I

    iget-object v2, p0, Lp1/k;->i:Landroidx/work/a;

    .line 61
    iget-object v8, v2, Landroidx/work/a;->a:Ljava/util/concurrent/Executor;

    .line 62
    iget-object v9, p0, Lp1/k;->g:La2/a;

    .line 63
    iget-object v10, v2, Landroidx/work/a;->c:Lo1/q;

    .line 64
    new-instance v11, Ly1/q;

    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, Lp1/k;->g:La2/a;

    invoke-direct {v11, v2, v12}, Ly1/q;-><init>(Landroidx/work/impl/WorkDatabase;La2/a;)V

    new-instance v12, Ly1/o;

    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, Lp1/k;->j:Lw1/a;

    iget-object v14, p0, Lp1/k;->g:La2/a;

    invoke-direct {v12, v2, v13, v14}, Ly1/o;-><init>(Landroidx/work/impl/WorkDatabase;Lw1/a;La2/a;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;La2/a;Lo1/q;Lo1/l;Lo1/e;)V

    .line 65
    iget-object v2, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_b

    .line 66
    iget-object v2, p0, Lp1/k;->i:Landroidx/work/a;

    .line 67
    iget-object v2, v2, Landroidx/work/a;->c:Lo1/q;

    .line 68
    iget-object v3, p0, Lp1/k;->a:Landroid/content/Context;

    iget-object v4, p0, Lp1/k;->e:Lx1/p;

    iget-object v4, v4, Lx1/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lo1/q;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v2

    iput-object v2, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    .line 69
    :cond_b
    iget-object v2, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_c

    .line 70
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lp1/k;->e:Lx1/p;

    iget-object v3, v3, Lx1/p;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Could not create Worker %s"

    .line 71
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {p0}, Lp1/k;->j()V

    return-void

    :cond_c
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 75
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lp1/k;->t:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lp1/k;->e:Lx1/p;

    iget-object v4, v4, Lx1/p;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 76
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Lo1/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {p0}, Lp1/k;->j()V

    return-void

    .line 79
    :cond_d
    iget-object v2, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 80
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->c()V

    .line 81
    :try_start_6
    iget-object v2, p0, Lp1/k;->l:Lx1/q;

    iget-object v3, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v2, Lx1/r;

    invoke-virtual {v2, v3}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v2

    if-ne v2, v0, :cond_e

    .line 82
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    sget-object v2, Lo1/m;->b:Lo1/m;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lp1/k;->b:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v2, v3}, Lx1/r;->p(Lo1/m;[Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v2}, Lx1/r;->k(Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    .line 84
    :goto_7
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->k()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->g()V

    if-eqz v0, :cond_10

    .line 86
    invoke-virtual {p0}, Lp1/k;->k()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 87
    :cond_f
    new-instance v0, Lz1/c;

    invoke-direct {v0}, Lz1/c;-><init>()V

    .line 88
    new-instance v8, Ly1/n;

    iget-object v3, p0, Lp1/k;->a:Landroid/content/Context;

    iget-object v4, p0, Lp1/k;->e:Lx1/p;

    iget-object v5, p0, Lp1/k;->f:Landroidx/work/ListenableWorker;

    .line 89
    iget-object v6, v1, Landroidx/work/WorkerParameters;->j:Lo1/e;

    .line 90
    iget-object v7, p0, Lp1/k;->g:La2/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ly1/n;-><init>(Landroid/content/Context;Lx1/p;Landroidx/work/ListenableWorker;Lo1/e;La2/a;)V

    .line 91
    iget-object v1, p0, Lp1/k;->g:La2/a;

    check-cast v1, La2/b;

    .line 92
    iget-object v1, v1, La2/b;->c:Ljava/util/concurrent/Executor;

    .line 93
    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    iget-object v1, v8, Ly1/n;->a:Lz1/c;

    .line 95
    new-instance v2, Lp1/k$a;

    invoke-direct {v2, p0, v1, v0}, Lp1/k$a;-><init>(Lp1/k;Lcom/google/common/util/concurrent/ListenableFuture;Lz1/c;)V

    iget-object v3, p0, Lp1/k;->g:La2/a;

    .line 96
    check-cast v3, La2/b;

    .line 97
    iget-object v3, v3, La2/b;->c:Ljava/util/concurrent/Executor;

    .line 98
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 99
    iget-object v1, p0, Lp1/k;->p:Ljava/lang/String;

    .line 100
    new-instance v2, Lp1/k$b;

    invoke-direct {v2, p0, v0, v1}, Lp1/k$b;-><init>(Lp1/k;Lz1/c;Ljava/lang/String;)V

    iget-object v1, p0, Lp1/k;->g:La2/a;

    .line 101
    check-cast v1, La2/b;

    .line 102
    iget-object v1, v1, La2/b;->a:Ly1/j;

    .line 103
    invoke-virtual {v0, v2, v1}, Lz1/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_8

    .line 104
    :cond_10
    invoke-virtual {p0}, Lp1/k;->h()V

    :goto_8
    return-void

    :catchall_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 106
    throw v0

    :catchall_1
    move-exception v0

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    invoke-virtual {v8}, Ld1/h;->release()V

    .line 109
    throw v0

    :catchall_2
    move-exception v0

    .line 110
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 111
    throw v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Ld1/f;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lp1/k;->c(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lp1/k;->h:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 4
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Landroidx/work/b;

    .line 5
    iget-object v2, p0, Lp1/k;->l:Lx1/q;

    iget-object v3, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v2, Lx1/r;

    invoke-virtual {v2, v3, v1}, Lx1/r;->n(Ljava/lang/String;Landroidx/work/b;)V

    .line 6
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Ld1/f;->g()V

    .line 8
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lp1/k;->k:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Ld1/f;->g()V

    .line 10
    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    .line 11
    throw v1
.end method

.method public final k()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp1/k;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v2, Lp1/k;->t:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lp1/k;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lp1/k;->l:Lx1/q;

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/r;

    invoke-virtual {v0, v2}, Lx1/r;->f(Ljava/lang/String;)Lo1/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lp1/k;->g(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lo1/m;->a()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lp1/k;->g(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp1/k;->n:Lx1/t;

    iget-object v1, p0, Lp1/k;->b:Ljava/lang/String;

    check-cast v0, Lx1/u;

    invoke-virtual {v0, v1}, Lx1/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lp1/k;->o:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lp1/k;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lp1/k;->p:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lp1/k;->i()V

    return-void
.end method
