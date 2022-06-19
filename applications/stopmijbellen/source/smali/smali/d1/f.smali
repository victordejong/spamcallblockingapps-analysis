.class public abstract Ld1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/f$b;,
        Ld1/f$c;,
        Ld1/f$a;
    }
.end annotation


# instance fields
.field public volatile a:Lg1/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/concurrent/Executor;

.field public c:Lg1/b;

.field public final d:Ld1/e;

.field public e:Z

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/f$b;",
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Ld1/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ld1/f;->i:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Ld1/f;->e()Ld1/e;

    move-result-object v0

    iput-object v0, p0, Ld1/f;->d:Ld1/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld1/f;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld1/f;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
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

    .line 1
    invoke-virtual {p0}, Ld1/f;->a()V

    .line 2
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ld1/f;->d:Ld1/e;

    invoke-virtual {v1, v0}, Ld1/e;->d(Lg1/a;)V

    .line 4
    check-cast v0, Lh1/a;

    .line 5
    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public d(Ljava/lang/String;)Lh1/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/f;->a()V

    .line 2
    invoke-virtual {p0}, Ld1/f;->b()V

    .line 3
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    check-cast v0, Lh1/a;

    .line 4
    new-instance v1, Lh1/f;

    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v1, p1}, Lh1/f;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v1
.end method

.method public abstract e()Ld1/e;
.end method

.method public abstract f(Ld1/a;)Lg1/b;
.end method

.method public g()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    check-cast v0, Lh1/a;

    .line 2
    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3
    invoke-virtual {p0}, Ld1/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Ld1/f;->d:Ld1/e;

    .line 5
    iget-object v1, v0, Ld1/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v0, Ld1/e;->d:Ld1/f;

    .line 7
    iget-object v1, v1, Ld1/f;->b:Ljava/util/concurrent/Executor;

    .line 8
    iget-object v0, v0, Ld1/e;->j:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    check-cast v0, Lh1/a;

    .line 2
    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/f;->a:Lg1/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lh1/a;

    .line 3
    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lg1/d;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ld1/f;->a()V

    .line 2
    invoke-virtual {p0}, Ld1/f;->b()V

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    check-cast v0, Lh1/a;

    .line 4
    iget-object v1, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Lh1/b;

    invoke-direct {v2, v0, p1}, Lh1/b;-><init>(Lh1/a;Lg1/d;)V

    .line 5
    invoke-interface {p1}, Lg1/d;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lh1/a;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, p2

    .line 6
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {p2}, Lg1/b;->T()Lg1/a;

    move-result-object p2

    check-cast p2, Lh1/a;

    invoke-virtual {p2, p1}, Lh1/a;->k(Lg1/d;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Ld1/f;->c:Lg1/b;

    invoke-interface {v0}, Lg1/b;->T()Lg1/a;

    move-result-object v0

    check-cast v0, Lh1/a;

    .line 2
    iget-object v0, v0, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
