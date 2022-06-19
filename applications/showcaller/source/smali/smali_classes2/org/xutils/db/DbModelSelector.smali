.class public final Lorg/xutils/db/DbModelSelector;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/xutils/db/sqlite/WhereBuilder;

.field private d:Lorg/xutils/db/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/Selector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    .line 3
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/Selector<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    .line 6
    iput-object p2, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->expr(Ljava/lang/String;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 10
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 11
    throw v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public findFirst()Lorg/xutils/db/table/DbModel;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lorg/xutils/db/DbModelSelector;->limit(I)Lorg/xutils/db/DbModelSelector;

    .line 4
    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0}, Lorg/xutils/db/a;->a(Landroid/database/Cursor;)Lorg/xutils/db/table/DbModel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 9
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 10
    throw v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    return-object p0
.end method

.method public having(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public limit(I)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->a:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "*"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " FROM "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v2}, Lorg/xutils/db/Selector;->getTable()Lorg/xutils/db/table/TableEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v2}, Lorg/xutils/db/Selector;->getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, " WHERE "

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-object v2, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, " GROUP BY "

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/db/DbModelSelector;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, " HAVING "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->c:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_4
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getOrderByList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, " ORDER BY "

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/Selector$OrderBy;

    .line 23
    invoke-virtual {v2}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 25
    :cond_6
    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, " LIMIT "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OFFSET "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/DbModelSelector;->d:Lorg/xutils/db/Selector;

    invoke-virtual {v0, p1}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    return-object p0
.end method
