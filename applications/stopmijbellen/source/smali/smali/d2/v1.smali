.class public Ld2/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/o1;

.field public final synthetic b:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic c:Ld2/w1;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ld2/o1;Landroid/database/sqlite/SQLiteDatabase;Ld2/w1;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/v1;->a:Ld2/o1;

    iput-object p2, p0, Ld2/v1;->b:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p3, p0, Ld2/v1;->c:Ld2/w1;

    iput-object p4, p0, Ld2/v1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Ld2/v1;->a:Ld2/o1;

    .line 2
    iget-object v0, v0, Ld2/o1;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/o1$a;

    .line 4
    iget-object v3, v1, Ld2/o1$a;->i:Ljava/util/Map;

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Ld2/v1;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_3

    .line 8
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    new-instance v6, Ld2/x1;

    invoke-direct {v6}, Ld2/x1;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v9, 0x0

    .line 10
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 11
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v11

    .line 12
    iget-object v12, v6, Ld2/x1;->a:Ljava/util/List;

    new-instance v13, Ld2/x1$a;

    invoke-direct {v13, v9, v10, v11, v7}, Ld2/x1$a;-><init>(ILjava/lang/String;ILd2/v1;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v6, v5}, Ld2/x1;->b(Ld2/x1;Landroid/database/Cursor;)V

    .line 14
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v9

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v9, v6

    move-object v6, v7

    .line 15
    :goto_2
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v5

    :try_start_4
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v9

    :cond_3
    move-object v6, v7

    :goto_4
    if-eqz v5, :cond_4

    .line 16
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v5

    goto :goto_5

    :catch_0
    move-exception v5

    goto :goto_6

    :catchall_4
    move-exception v5

    move-object v6, v7

    :goto_5
    const-string v9, "Error on execute query: "

    .line 17
    invoke-static {v9}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 18
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v8, v8, v5, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_7

    :catch_1
    move-exception v5

    move-object v6, v7

    :goto_6
    const-string v9, "SQLException on execute query: "

    .line 22
    invoke-static {v9}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 23
    invoke-virtual {v5}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-static {v8, v8, v5, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_4
    :goto_7
    if-eqz v6, :cond_1

    .line 27
    iget-object v5, p0, Ld2/v1;->c:Ld2/w1;

    .line 28
    iget-object v8, v1, Ld2/o1$a;->a:Ljava/lang/String;

    .line 29
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v9, Ld2/w1$a;

    invoke-direct {v9, v4, v6, v7}, Ld2/w1$a;-><init>(Ljava/lang/String;Ld2/x1;Ld2/v1;)V

    .line 32
    iget-object v4, v5, Ld2/w1;->b:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 33
    iget-object v4, v5, Ld2/w1;->b:Ljava/util/Map;

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 34
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 35
    :cond_5
    iget-object v4, v5, Ld2/w1;->b:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 36
    :cond_6
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v0

    iget-object v1, p0, Ld2/v1;->c:Ld2/w1;

    .line 37
    iput-object v1, v0, Ld2/r1;->c:Ld2/w1;

    .line 38
    iput-boolean v2, v0, Ld2/r1;->d:Z

    .line 39
    iget-object v0, p0, Ld2/v1;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
