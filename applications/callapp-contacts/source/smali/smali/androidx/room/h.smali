.class public abstract Landroidx/room/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/h$b;,
        Landroidx/room/h$d;,
        Landroidx/room/h$a;,
        Landroidx/room/h$c;
    }
.end annotation


# instance fields
.field public volatile a:Landroidx/sqlite/db/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field b:Ljava/util/concurrent/Executor;

.field c:Ljava/util/concurrent/Executor;

.field d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field public final e:Landroidx/room/e;

.field f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/h$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private i:Z

.field private final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 118
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->j:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/h;->k:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Landroidx/room/h;->a()Landroidx/room/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/sqlite/db/d;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 0

    .line 323
    invoke-virtual {p0}, Landroidx/room/h;->c()V

    .line 324
    invoke-virtual {p0}, Landroidx/room/h;->d()V

    .line 328
    iget-object p2, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/sqlite/db/b;->a(Landroidx/sqlite/db/d;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a()Landroidx/room/e;
.end method

.method public final a(Ljava/lang/String;)Landroidx/sqlite/db/e;
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroidx/room/h;->c()V

    .line 340
    invoke-virtual {p0}, Landroidx/room/h;->d()V

    .line 341
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/b;->a(Ljava/lang/String;)Landroidx/sqlite/db/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/room/DatabaseConfiguration;)V
    .locals 4

    .line 161
    invoke-virtual {p0, p1}, Landroidx/room/h;->b(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 162
    instance-of v1, v0, Landroidx/room/m;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Landroidx/room/m;

    .line 1111
    iput-object p1, v0, Landroidx/room/m;->a:Landroidx/room/DatabaseConfiguration;

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 168
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/h$c;

    sget-object v1, Landroidx/room/h$c;->WRITE_AHEAD_LOGGING:Landroidx/room/h$c;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 169
    :cond_1
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->a(Z)V

    .line 171
    :cond_2
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v0, p0, Landroidx/room/h;->g:Ljava/util/List;

    .line 172
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    .line 173
    new-instance v0, Landroidx/room/p;

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1}, Landroidx/room/p;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/h;->c:Ljava/util/concurrent/Executor;

    .line 174
    iget-boolean v0, p1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v0, p0, Landroidx/room/h;->i:Z

    .line 175
    iput-boolean v2, p0, Landroidx/room/h;->f:Z

    .line 176
    iget-boolean v0, p1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidation:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 1186
    new-instance v2, Landroidx/room/f;

    iget-object v3, v0, Landroidx/room/e;->c:Landroidx/room/h;

    .line 1377
    iget-object v3, v3, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    .line 1187
    invoke-direct {v2, v1, p1, v0, v3}, Landroidx/room/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/e;Ljava/util/concurrent/Executor;)V

    iput-object v2, v0, Landroidx/room/e;->h:Landroidx/room/f;

    :cond_3
    return-void
.end method

.method public final a(Landroidx/sqlite/db/b;)V
    .locals 2

    .line 452
    iget-object v0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    .line 4168
    monitor-enter v0

    .line 4169
    :try_start_0
    iget-boolean v1, v0, Landroidx/room/e;->e:Z

    if-eqz v1, :cond_0

    const-string p1, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    .line 4170
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "PRAGMA temp_store = MEMORY;"

    .line 4176
    invoke-interface {p1, v1}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    const-string v1, "PRAGMA recursive_triggers=\'ON\';"

    .line 4177
    invoke-interface {p1, v1}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    const-string v1, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 4178
    invoke-interface {p1, v1}, Landroidx/sqlite/db/b;->c(Ljava/lang/String;)V

    .line 4179
    invoke-virtual {v0, p1}, Landroidx/room/e;->a(Landroidx/sqlite/db/b;)V

    const-string v1, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    .line 4180
    invoke-interface {p1, v1}, Landroidx/sqlite/db/b;->a(Ljava/lang/String;)Landroidx/sqlite/db/e;

    move-result-object p1

    iput-object p1, v0, Landroidx/room/e;->f:Landroidx/sqlite/db/e;

    const/4 p1, 0x1

    .line 4181
    iput-boolean p1, v0, Landroidx/room/e;->e:Z

    .line 4182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract b(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end method

.method public final b()Z
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/room/h;->a:Landroidx/sqlite/db/b;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Landroidx/sqlite/db/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 263
    iget-boolean v0, p0, Landroidx/room/h;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2051
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

    .line 267
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroidx/room/h;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/h;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p0}, Landroidx/room/h;->c()V

    .line 352
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    .line 353
    iget-object v1, p0, Landroidx/room/h;->e:Landroidx/room/e;

    invoke-virtual {v1, v0}, Landroidx/room/e;->a(Landroidx/sqlite/db/b;)V

    .line 354
    invoke-interface {v0}, Landroidx/sqlite/db/b;->a()V

    return-void
.end method

.method public final f()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/b;->b()V

    .line 365
    invoke-virtual {p0}, Landroidx/room/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Landroidx/room/h;->e:Landroidx/room/e;

    .line 2441
    iget-object v1, v0, Landroidx/room/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2442
    iget-object v1, v0, Landroidx/room/e;->c:Landroidx/room/h;

    .line 3377
    iget-object v1, v1, Landroidx/room/h;->b:Ljava/util/concurrent/Executor;

    .line 2442
    iget-object v0, v0, Landroidx/room/e;->i:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/b;->c()V

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 476
    iget-object v0, p0, Landroidx/room/h;->d:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->b()Landroidx/sqlite/db/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/b;->d()Z

    move-result v0

    return v0
.end method
