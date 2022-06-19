.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$b;,
        Landroidx/room/RoomDatabase$c;,
        Landroidx/room/RoomDatabase$a;,
        Landroidx/room/RoomDatabase$JournalMode;
    }
.end annotation


# instance fields
.field protected volatile a:Ld/r/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ld/r/a/c;

.field private final d:Landroidx/room/f;

.field private e:Z

.field f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final i:Ljava/lang/ThreadLocal;
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

    iput-object v0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->e()Landroidx/room/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/f;

    return-void
.end method

.method private static n()Z
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

    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/room/RoomDatabase;->n()Z

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

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->i:Ljava/lang/ThreadLocal;

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

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/f;

    invoke-virtual {v1, v0}, Landroidx/room/f;->m(Ld/r/a/b;)V

    invoke-interface {v0}, Ld/r/a/b;->i()V

    return-void
.end method

.method public d(Ljava/lang/String;)Ld/r/a/f;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->b()V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ld/r/a/b;->s(Ljava/lang/String;)Ld/r/a/f;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e()Landroidx/room/f;
.end method

.method protected abstract f(Landroidx/room/a;)Ld/r/a/c;
.end method

.method public g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    invoke-interface {v0}, Ld/r/a/b;->h()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/f;

    invoke-virtual {v0}, Landroidx/room/f;->f()V

    :cond_0
    return-void
.end method

.method h()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public i()Ld/r/a/c;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    invoke-interface {v0}, Ld/r/a/b;->A()Z

    move-result v0

    return v0
.end method

.method public l(Landroidx/room/a;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->f(Landroidx/room/a;)Ld/r/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    iget-object v1, p1, Landroidx/room/a;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v3, Landroidx/room/RoomDatabase$JournalMode;->d:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v2}, Ld/r/a/c;->a(Z)V

    :cond_1
    iget-object v0, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->g:Ljava/util/List;

    iget-object v0, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/room/m;

    iget-object v1, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/m;-><init>(Ljava/util/concurrent/Executor;)V

    iget-boolean v0, p1, Landroidx/room/a;->f:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->e:Z

    iput-boolean v2, p0, Landroidx/room/RoomDatabase;->f:Z

    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/f;

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/room/f;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected m(Ld/r/a/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->d:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->d(Ld/r/a/b;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/RoomDatabase;->a:Ld/r/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/r/a/b;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Ld/r/a/e;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->a()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->b()V

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ld/r/a/b;->v(Ld/r/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/room/RoomDatabase;->c:Ld/r/a/c;

    invoke-interface {v0}, Ld/r/a/c;->b()Ld/r/a/b;

    move-result-object v0

    invoke-interface {v0}, Ld/r/a/b;->I()V

    return-void
.end method
