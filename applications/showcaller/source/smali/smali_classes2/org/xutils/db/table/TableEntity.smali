.class public final Lorg/xutils/db/table/TableEntity;
.super Ljava/lang/Object;
.source "TableEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/xutils/DbManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lorg/xutils/db/table/ColumnEntity;

.field private volatile g:Ljava/lang/Boolean;

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    .line 3
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->d:Ljava/lang/Class;

    .line 4
    const-class p1, Lorg/xutils/db/annotation/Table;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/xutils/db/annotation/Table;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lorg/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lorg/xutils/db/annotation/Table;->onCreated()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->e:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p2}, Lorg/xutils/db/table/a;->b(Ljava/lang/Class;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->h:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xutils/db/table/ColumnEntity;

    .line 11
    invoke-virtual {p2}, Lorg/xutils/db/table/ColumnEntity;->isId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->f:Lorg/xutils/db/table/ColumnEntity;

    :cond_1
    return-void

    .line 13
    :catchall_0
    new-instance p1, Lorg/xutils/ex/DbException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing no-argument constructor for the table: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Lorg/xutils/ex/DbException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing @Table on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public createEntity()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->e:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createTableIfNotExists()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->d:Ljava/lang/Class;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/xutils/db/table/TableEntity;->tableIsExists(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-static {p0}, Lorg/xutils/db/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/sqlite/SqlInfo;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    invoke-interface {v2, v1}, Lorg/xutils/DbManager;->execNonQuery(Lorg/xutils/db/sqlite/SqlInfo;)V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    .line 7
    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->execNonQuery(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    invoke-interface {v1}, Lorg/xutils/DbManager;->getDaoConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/DbManager$DaoConfig;->getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 10
    :try_start_1
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    invoke-interface {v1, v2, p0}, Lorg/xutils/DbManager$TableCreateListener;->onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getColumnMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDb()Lorg/xutils/DbManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public getId()Lorg/xutils/db/table/ColumnEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->f:Lorg/xutils/db/table/ColumnEntity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOnCreated()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tableIsExists()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists(Z)Z

    move-result v0

    return v0
.end method

.method public tableIsExists(Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    .line 8
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return v0

    :cond_2
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    new-instance v1, Lorg/xutils/ex/DbException;

    invoke-direct {v1, v0}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 11
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 12
    throw v0

    .line 13
    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    .line 14
    iget-object p1, p0, Lorg/xutils/db/table/TableEntity;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    return-object v0
.end method
