.class Landroidx/room/f$1;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/f;


# direct methods
.method constructor <init>(Landroidx/room/f;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 415
    iget-object v1, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->c:Landroidx/room/i;

    new-instance v2, Landroidx/i/a/a;

    const-string/jumbo v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v2, v3}, Landroidx/i/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/room/i;->a(Landroidx/i/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 418
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 424
    throw v0

    .line 423
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 425
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    iget-object v1, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->e:Landroidx/i/a/f;

    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 428
    :cond_1
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->c:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    .line 363
    const/4 v2, 0x0

    .line 365
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 367
    :try_start_1
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/f;->a()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    :try_start_3
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v0, Landroidx/room/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x1

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    .line 402
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 376
    :cond_2
    :try_start_6
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, v0, Landroidx/room/f;->c:Landroidx/room/i;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v0}, Landroidx/room/i;->k()Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 383
    :cond_3
    :try_start_9
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v0, v0, Landroidx/room/f;->c:Landroidx/room/i;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-boolean v0, v0, Landroidx/room/i;->b:Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v0, :cond_4

    .line 386
    :try_start_c
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v0, v0, Landroidx/room/f;->c:Landroidx/room/i;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v0}, Landroidx/room/i;->b()Landroidx/i/a/c;
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v0

    :try_start_f
    invoke-interface {v0}, Landroidx/i/a/c;->b()Landroidx/i/a/b;
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result-object v4

    .line 387
    :try_start_10
    invoke-interface {v4}, Landroidx/i/a/b;->a()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_12
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 389
    :try_start_11
    invoke-direct {p0}, Landroidx/room/f$1;->a()Ljava/util/Set;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v0

    .line 390
    :try_start_12
    invoke-interface {v4}, Landroidx/i/a/b;->c()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 392
    :try_start_13
    invoke-interface {v4}, Landroidx/i/a/b;->b()V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 402
    :goto_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v0

    .line 404
    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v2, v0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    monitor-enter v2

    .line 406
    :try_start_14
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->f:Landroidx/a/a/b/b;

    invoke-virtual {v0}, Landroidx/a/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/f$c;

    invoke-virtual {v0, v1}, Landroidx/room/f$c;->a(Ljava/util/Set;)V

    goto :goto_3

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw v0

    .line 392
    :catchall_1
    move-exception v0

    move-object v1, v0

    :goto_4
    :try_start_15
    invoke-interface {v4}, Landroidx/i/a/b;->b()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 393
    :try_start_16
    throw v1
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 397
    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_5
    move-object v0, v2

    .line 399
    :try_start_17
    const-string/jumbo v2, "ROOM"

    const-string/jumbo v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 402
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v0

    .line 403
    goto :goto_2

    .line 395
    :cond_4
    :try_start_18
    invoke-direct {p0}, Landroidx/room/f$1;->a()Ljava/util/Set;
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_16
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 402
    :catchall_2
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    throw v0

    .line 409
    :cond_5
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    .line 397
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_d
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_e
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_f
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_10
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_11
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_12
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_13
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_14
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_15
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_16
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 392
    :catchall_3
    move-exception v1

    move-object v2, v0

    goto :goto_4
.end method
