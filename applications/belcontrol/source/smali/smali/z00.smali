.class public abstract Lz00;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz00$b;,
        Lz00$d;,
        Lz00$a;,
        Lz00$c;
    }
.end annotation


# instance fields
.field public volatile a:Ln10;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Lo10;

.field public final d:Lw00;

.field public e:Z

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz00$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lz00;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lz00;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p0}, Lz00;->e()Lw00;

    move-result-object v0

    iput-object v0, p0, Lz00;->d:Lw00;

    return-void
.end method

.method public static n()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lz00;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lz00;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lz00;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz00;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lz00;->a()V

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    iget-object v1, p0, Lz00;->d:Lw00;

    invoke-virtual {v1, v0}, Lw00;->m(Ln10;)V

    invoke-interface {v0}, Ln10;->beginTransaction()V

    return-void
.end method

.method public d(Ljava/lang/String;)Lr10;
    .locals 1

    invoke-virtual {p0}, Lz00;->a()V

    invoke-virtual {p0}, Lz00;->b()V

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    invoke-interface {v0, p1}, Ln10;->q(Ljava/lang/String;)Lr10;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()Lw00;
.end method

.method public abstract f(Lr00;)Lo10;
.end method

.method public g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    invoke-interface {v0}, Ln10;->endTransaction()V

    invoke-virtual {p0}, Lz00;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz00;->d:Lw00;

    invoke-virtual {v0}, Lw00;->f()V

    :cond_0
    return-void
.end method

.method public h()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lz00;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public i()Lo10;
    .locals 1

    iget-object v0, p0, Lz00;->c:Lo10;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lz00;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    invoke-interface {v0}, Ln10;->x()Z

    move-result v0

    return v0
.end method

.method public l(Lr00;)V
    .locals 4

    invoke-virtual {p0, p1}, Lz00;->f(Lr00;)Lo10;

    move-result-object v0

    iput-object v0, p0, Lz00;->c:Lo10;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    iget-object v1, p1, Lr00;->g:Lz00$c;

    sget-object v3, Lz00$c;->c:Lz00$c;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Lo10;->a(Z)V

    :cond_1
    iget-object v0, p1, Lr00;->e:Ljava/util/List;

    iput-object v0, p0, Lz00;->g:Ljava/util/List;

    iget-object v0, p1, Lr00;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lz00;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Le10;

    iget-object v1, p1, Lr00;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Le10;-><init>(Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p1, Lr00;->f:Z

    iput-boolean v0, p0, Lz00;->e:Z

    iput-boolean v2, p0, Lz00;->f:Z

    iget-boolean v0, p1, Lr00;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz00;->d:Lw00;

    iget-object v1, p1, Lr00;->b:Landroid/content/Context;

    iget-object p1, p1, Lr00;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lw00;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public m(Ln10;)V
    .locals 1

    iget-object v0, p0, Lz00;->d:Lw00;

    invoke-virtual {v0, p1}, Lw00;->d(Ln10;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lz00;->a:Ln10;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln10;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Lq10;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Lz00;->a()V

    invoke-virtual {p0}, Lz00;->b()V

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    invoke-interface {v0, p1}, Ln10;->k(Lq10;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lz00;->c:Lo10;

    invoke-interface {v0}, Lo10;->b()Ln10;

    move-result-object v0

    invoke-interface {v0}, Ln10;->setTransactionSuccessful()V

    return-void
.end method
