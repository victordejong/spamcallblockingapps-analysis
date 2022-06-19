.class public final Lorg/xutils/db/DbManagerImpl;
.super Lorg/xutils/db/table/DbBase;
.source "DbManagerImpl.java"


# static fields
.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/xutils/DbManager$DaoConfig;",
            "Lorg/xutils/db/DbManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Lorg/xutils/DbManager$DaoConfig;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/db/DbManagerImpl;->e:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/xutils/DbManager$DaoConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/xutils/db/table/DbBase;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lorg/xutils/db/DbManagerImpl;->g:Lorg/xutils/DbManager$DaoConfig;

    .line 3
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->isAllowTransaction()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->h:Z

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->e(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p0}, Lorg/xutils/DbManager$DbOpenListener;->onDbOpened(Lorg/xutils/DbManager;)V
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 8
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "daoConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private G()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' LIMIT 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 7
    throw v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private e(Lorg/xutils/DbManager$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-static {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/DbManager$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/Application;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private f(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 4
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xutils/db/DbManagerImpl;->a(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {v0, p2, v3, v4}, Lorg/xutils/db/table/ColumnEntity;->setAutoIdValue(Ljava/lang/Object;J)V

    return v2

    .line 6
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    return v2
.end method

.method private g(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isAutoId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lorg/xutils/db/table/ColumnEntity;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2, v0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/xutils/db/DbManagerImpl;->f(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;
    .locals 5

    const-class v0, Lorg/xutils/db/DbManagerImpl;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 1
    :try_start_0
    new-instance p0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {p0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    .line 2
    :cond_0
    sget-object v1, Lorg/xutils/db/DbManagerImpl;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/DbManagerImpl;

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lorg/xutils/db/DbManagerImpl;

    invoke-direct {v2, p0}, Lorg/xutils/db/DbManagerImpl;-><init>(Lorg/xutils/DbManager$DaoConfig;)V

    .line 4
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iput-object p0, v2, Lorg/xutils/db/DbManagerImpl;->g:Lorg/xutils/DbManager$DaoConfig;

    .line 6
    :goto_0
    iget-object v1, v2, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbVersion()I

    move-result v4

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lorg/xutils/DbManager$DaoConfig;->getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0, v2, v3, v4}, Lorg/xutils/DbManager$DbUpgradeListener;->onUpgrade(Lorg/xutils/DbManager;II)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2}, Lorg/xutils/db/table/DbBase;->dropDb()V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/xutils/db/DbManagerImpl;->h:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/db/DbManagerImpl;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->g:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->g:Lorg/xutils/DbManager$DaoConfig;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")I"
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 21
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 22
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result p1

    .line 23
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 25
    throw p1
.end method

.method public delete(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lorg/xutils/db/DbManagerImpl;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    .line 9
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 13
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    .line 14
    :cond_3
    :try_start_3
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 15
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 17
    throw p1
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 4
    invoke-static {p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfoById(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 7
    throw p1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 10
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_1
    throw p1
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public executeUpdateDelete(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p1

    :catchall_1
    move-exception p1

    .line 13
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_0

    .line 14
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    :goto_1
    throw p1
.end method

.method public executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Lorg/xutils/db/sqlite/SqlInfo;->buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p1

    :catchall_1
    move-exception p1

    .line 5
    :try_start_2
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_1
    throw p1
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/xutils/db/Selector;->a(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v0, v2, v3, p2}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Lorg/xutils/db/DbManagerImpl;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Lorg/xutils/db/a;->b(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object p1

    :cond_1
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    new-instance v0, Lorg/xutils/ex/DbException;

    invoke-direct {v0, p1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 10
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 11
    throw p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public findDbModelAll(Lorg/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 7
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 8
    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public findDbModelFirst(Lorg/xutils/db/sqlite/SqlInfo;)Lorg/xutils/db/table/DbModel;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execQuery(Lorg/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 7
    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDaoConfig()Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->g:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbManagerImpl;->f:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 12
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 13
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 15
    throw p1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 12
    invoke-static {v0, p1}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 13
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 15
    throw p1
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return v1

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-direct {p0, v0, v2}, Lorg/xutils/db/DbManagerImpl;->f(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Lorg/xutils/ex/DbException;

    const-string v0, "saveBindingId error, transaction will not commit!"

    invoke-direct {p1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 13
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->f(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)Z

    move-result v1

    .line 14
    :cond_3
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return v1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 16
    throw p1
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-direct {p0, v0, v1}, Lorg/xutils/db/DbManagerImpl;->g(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->createTableIfNotExists()V

    .line 12
    invoke-direct {p0, v0, p1}, Lorg/xutils/db/DbManagerImpl;->g(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;)V

    .line 13
    :cond_2
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 15
    throw p1
.end method

.method public selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/db/Selector;->a(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;

    move-result-object p1

    return-object p1
.end method

.method public varargs update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Lorg/xutils/common/util/KeyValue;",
            ")I"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 21
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->executeUpdateDelete(Lorg/xutils/db/sqlite/SqlInfo;)I

    move-result p1

    .line 22
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 24
    throw p1
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->h()V

    .line 2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 8
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    .line 9
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v0, v1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/table/DbBase;->getTable(Ljava/lang/Class;)Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 13
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    .line 14
    :cond_3
    :try_start_3
    invoke-static {v0, p1, p2}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lorg/xutils/db/table/TableEntity;Ljava/lang/Object;[Ljava/lang/String;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/db/DbManagerImpl;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 15
    :cond_4
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->G()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/xutils/db/DbManagerImpl;->O()V

    .line 17
    throw p1
.end method
