.class public Ld1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld1/e;


# direct methods
.method public constructor <init>(Ld1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/e$a;->a:Ld1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v1, v1, Ld1/e;->d:Ld1/f;

    new-instance v2, Landroidx/appcompat/widget/l;

    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/l;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v2, v3}, Ld1/f;->j(Lg1/d;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v1, v1, Ld1/e;->g:Lh1/f;

    invoke-virtual {v1}, Lh1/f;->d()I

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    throw v0
.end method

.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v0, v0, Ld1/e;->d:Ld1/f;

    .line 2
    iget-object v0, v0, Ld1/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    iget-object v4, p0, Ld1/e$a;->a:Ld1/e;

    invoke-virtual {v4}, Ld1/e;->a()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v4, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v4, v4, Ld1/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 8
    :cond_1
    :try_start_2
    iget-object v4, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v4, v4, Ld1/e;->d:Ld1/f;

    invoke-virtual {v4}, Ld1/f;->h()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 10
    :cond_2
    :try_start_3
    iget-object v4, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v4, v4, Ld1/e;->d:Ld1/f;

    iget-boolean v5, v4, Ld1/f;->f:Z

    if-eqz v5, :cond_3

    .line 11
    iget-object v4, v4, Ld1/f;->c:Lg1/b;

    .line 12
    invoke-interface {v4}, Lg1/b;->T()Lg1/a;

    move-result-object v4

    .line 13
    move-object v5, v4

    check-cast v5, Lh1/a;

    .line 14
    iget-object v5, v5, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    :try_start_4
    invoke-virtual {p0}, Ld1/e$a;->b()Ljava/util/Set;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16
    :try_start_5
    move-object v6, v4

    check-cast v6, Lh1/a;

    .line 17
    iget-object v6, v6, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    check-cast v4, Lh1/a;

    .line 19
    iget-object v4, v4, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v5, v3

    .line 20
    :goto_0
    check-cast v4, Lh1/a;

    .line 21
    iget-object v4, v4, Lh1/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 22
    throw v6
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 23
    :cond_3
    :try_start_7
    invoke-virtual {p0}, Ld1/e$a;->b()Ljava/util/Set;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw v1

    :catch_1
    move-object v5, v3

    .line 26
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v5, :cond_a

    .line 27
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 28
    iget-object v0, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v0, v0, Ld1/e;->i:Ln/b;

    monitor-enter v0

    .line 29
    :try_start_8
    iget-object v4, p0, Ld1/e$a;->a:Ld1/e;

    iget-object v4, v4, Ld1/e;->i:Ln/b;

    invoke-virtual {v4}, Ln/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    move-object v6, v4

    check-cast v6, Ln/b$e;

    invoke-virtual {v6}, Ln/b$e;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v6}, Ln/b$e;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld1/e$d;

    .line 31
    iget-object v7, v6, Ld1/e$d;->a:[I

    array-length v7, v7

    move-object v9, v3

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    .line 32
    iget-object v10, v6, Ld1/e$d;->a:[I

    aget v10, v10, v8

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ne v7, v1, :cond_5

    .line 34
    iget-object v9, v6, Ld1/e$d;->d:Ljava/util/Set;

    goto :goto_4

    :cond_5
    if-nez v9, :cond_6

    .line 35
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 36
    :cond_6
    iget-object v10, v6, Ld1/e$d;->b:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    if-eqz v9, :cond_4

    .line 37
    iget-object v6, v6, Ld1/e$d;->c:Ld1/e$c;

    invoke-virtual {v6, v9}, Ld1/e$c;->a(Ljava/util/Set;)V

    goto :goto_2

    .line 38
    :cond_9
    monitor-exit v0

    goto :goto_5

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :cond_a
    :goto_5
    return-void
.end method
