.class public Ld2/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/d3$b;
    }
.end annotation


# static fields
.field public static f:Ld2/d3;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Landroid/database/sqlite/SQLiteDatabase;

.field public c:Z

.field public d:Ld2/d3$b;

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ld2/d3;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ld2/d3;->c:Z

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld2/d3;->e:Ljava/util/Set;

    return-void
.end method

.method public static d()Ld2/d3;
    .locals 2

    .line 1
    sget-object v0, Ld2/d3;->f:Ld2/d3;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ld2/d3;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ld2/d3;->f:Ld2/d3;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld2/d3;

    invoke-direct {v1}, Ld2/d3;-><init>()V

    sput-object v1, Ld2/d3;->f:Ld2/d3;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ld2/d3;->f:Ld2/d3;

    return-object v0
.end method


# virtual methods
.method public a(Ld2/o1$a;Landroid/content/ContentValues;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld2/d3;->e:Ljava/util/Set;

    .line 2
    iget-object v1, p1, Ld2/o1$a;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Ld2/d3;->e:Ljava/util/Set;

    .line 5
    iget-object v1, p1, Ld2/o1$a;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget v0, p1, Ld2/o1$a;->c:I

    .line 8
    iget-object v1, p1, Ld2/o1$a;->h:Ld2/o1$d;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_0

    .line 9
    iget-object v5, v1, Ld2/o1$d;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 11
    iget-wide v7, v1, Ld2/o1$d;->a:J

    sub-long/2addr v5, v7

    .line 12
    iget-object p2, v1, Ld2/o1$d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v2

    move-wide v5, v3

    .line 13
    :goto_0
    iget-object p1, p1, Ld2/o1$a;->b:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p2, :cond_1

    const-string p2, "rowid"

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    if-ltz v0, :cond_3

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " order by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " desc limit 1 offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v3, v2

    .line 19
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " where "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception on deleting excessive rows:"

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    invoke-virtual {p2}, Ld2/f1;->p()Ld2/h0;

    move-result-object p2

    .line 29
    invoke-virtual {p2, v8, v7, p1, v7}, Ld2/h0;->e(IILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    .line 31
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 32
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "Error on deleting excessive rows:"

    .line 33
    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {v8, v8, p1, v7}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_5
    :goto_4
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld2/d3;->c:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Ld2/d3;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ld2/d3$a;

    invoke-direct {v1, p0, p1, p2}, Ld2/d3$a;-><init>(Ld2/d3;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ADCEventsRepository.saveEvent failed with: "

    .line 4
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-static {v0, v0, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(Ld2/o1;)Z
    .locals 8

    .line 1
    new-instance v0, Ld2/s1;

    iget-object v1, p0, Ld2/d3;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Ld2/s1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ld2/o1;)V

    const-string v2, " to "

    .line 2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_0
    iget-object p1, p1, Ld2/o1;->b:Ljava/util/List;

    .line 5
    invoke-virtual {v0}, Ld2/s1;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld2/o1$a;

    .line 7
    iget-object v7, v6, Ld2/o1$a;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v0, v6}, Ld2/s1;->g(Ld2/o1$a;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v6}, Ld2/s1;->e(Ld2/o1$a;)V

    .line 11
    invoke-virtual {v0, v6}, Ld2/s1;->b(Ld2/o1$a;)V

    .line 12
    :goto_1
    iget-object v6, v6, Ld2/o1$a;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v5}, Ld2/s1;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object p1, v0, Ld2/s1;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, v0, Ld2/s1;->b:Ld2/o1;

    .line 17
    iget v5, v5, Ld2/o1;->a:I

    .line 18
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 19
    iget-object p1, v0, Ld2/s1;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success upgrading database from "

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v5, v0, Ld2/s1;->b:Ld2/o1;

    .line 25
    iget v5, v5, Ld2/o1;->a:I

    .line 26
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v5

    invoke-virtual {v5}, Ld2/f1;->p()Ld2/h0;

    move-result-object v5

    const/4 v6, 0x2

    .line 29
    invoke-virtual {v5, v1, v6, p1, v4}, Ld2/h0;->e(IILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    const/4 v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    const/4 v5, 0x0

    .line 30
    :goto_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Upgrading database from "

    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, v0, Ld2/s1;->b:Ld2/o1;

    .line 35
    iget v2, v2, Ld2/o1;->a:I

    .line 36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "caused: "

    .line 37
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v1, v4, p1, v4}, Ld2/h0;->e(IILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    .line 43
    :goto_4
    iget-object p1, v0, Ld2/s1;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    :goto_5
    iget-object v0, v0, Ld2/s1;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 44
    throw p1
.end method
