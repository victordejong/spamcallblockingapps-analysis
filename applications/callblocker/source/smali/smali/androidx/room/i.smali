.class public abstract Landroidx/room/i;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/i$b;,
        Landroidx/room/i$d;,
        Landroidx/room/i$a;,
        Landroidx/room/i$c;
    }
.end annotation


# instance fields
.field protected volatile a:Landroidx/i/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field b:Z

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/room/i$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Landroidx/i/a/c;

.field private final g:Landroidx/room/f;

.field private h:Z

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/i;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/i;->j:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/i;->k:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Landroidx/room/i;->c()Landroidx/room/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/i;->g:Landroidx/room/f;

    .line 152
    return-void
.end method

.method private static l()Z
    .locals 2

    .prologue
    .line 1051
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroidx/i/a/e;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/room/i;->a(Landroidx/i/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroidx/i/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Landroidx/room/i;->e()V

    .line 324
    invoke-virtual {p0}, Landroidx/room/i;->f()V

    .line 325
    if-eqz p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/i/a/b;->a(Landroidx/i/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/i/a/b;->a(Landroidx/i/a/e;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroidx/i/a/f;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Landroidx/room/i;->e()V

    .line 340
    invoke-virtual {p0}, Landroidx/room/i;->f()V

    .line 341
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/i/a/b;->a(Ljava/lang/String;)Landroidx/i/a/f;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroidx/room/i;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroidx/i/a/b;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroidx/room/i;->g:Landroidx/room/f;

    invoke-virtual {v0, p1}, Landroidx/room/f;->a(Landroidx/i/a/b;)V

    .line 453
    return-void
.end method

.method public a(Landroidx/room/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Landroidx/room/i;->b(Landroidx/room/a;)Landroidx/i/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    .line 162
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    instance-of v0, v0, Landroidx/room/m;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    check-cast v0, Landroidx/room/m;

    .line 164
    invoke-virtual {v0, p1}, Landroidx/room/m;->a(Landroidx/room/a;)V

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 168
    iget-object v0, p1, Landroidx/room/a;->g:Landroidx/room/i$c;

    sget-object v2, Landroidx/room/i$c;->c:Landroidx/room/i$c;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 169
    :goto_0
    iget-object v1, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v1, v0}, Landroidx/i/a/c;->a(Z)V

    .line 171
    :goto_1
    iget-object v1, p1, Landroidx/room/a;->e:Ljava/util/List;

    iput-object v1, p0, Landroidx/room/i;->c:Ljava/util/List;

    .line 172
    iget-object v1, p1, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/room/i;->d:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v1, Landroidx/room/p;

    iget-object v2, p1, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Landroidx/room/p;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroidx/room/i;->e:Ljava/util/concurrent/Executor;

    .line 174
    iget-boolean v1, p1, Landroidx/room/a;->f:Z

    iput-boolean v1, p0, Landroidx/room/i;->h:Z

    .line 175
    iput-boolean v0, p0, Landroidx/room/i;->b:Z

    .line 176
    iget-boolean v0, p1, Landroidx/room/a;->j:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Landroidx/room/i;->g:Landroidx/room/f;

    iget-object v1, p1, Landroidx/room/a;->b:Landroid/content/Context;

    iget-object v2, p1, Landroidx/room/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/room/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 168
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b()Landroidx/i/a/c;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    return-object v0
.end method

.method protected abstract b(Landroidx/room/a;)Landroidx/i/a/c;
.end method

.method protected abstract c()Landroidx/room/f;
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroidx/room/i;->a:Landroidx/i/a/b;

    .line 235
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/i/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Landroidx/room/i;->h:Z

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Landroidx/room/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Landroidx/room/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/i;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Landroidx/room/i;->e()V

    .line 352
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    .line 353
    iget-object v1, p0, Landroidx/room/i;->g:Landroidx/room/f;

    invoke-virtual {v1, v0}, Landroidx/room/f;->b(Landroidx/i/a/b;)V

    .line 354
    invoke-interface {v0}, Landroidx/i/a/b;->a()V

    .line 355
    return-void
.end method

.method public h()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->b()V

    .line 365
    invoke-virtual {p0}, Landroidx/room/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/room/i;->g:Landroidx/room/f;

    invoke-virtual {v0}, Landroidx/room/f;->b()V

    .line 370
    :cond_0
    return-void
.end method

.method public i()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroidx/room/i;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public j()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->c()V

    .line 396
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Landroidx/room/i;->f:Landroidx/i/a/c;

    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/i/a/b;->d()Z

    move-result v0

    return v0
.end method
