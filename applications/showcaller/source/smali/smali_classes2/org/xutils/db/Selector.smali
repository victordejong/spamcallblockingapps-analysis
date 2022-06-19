.class public final Lorg/xutils/db/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/db/Selector$OrderBy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/xutils/db/table/TableEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lorg/xutils/db/sqlite/WhereBuilder;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lorg/xutils/db/table/TableEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/xutils/db/Selector;->d:I

    .line 3
    iput v0, p0, Lorg/xutils/db/Selector;->e:I

    .line 4
    iput-object p1, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    return-void
.end method

.method static a(Lorg/xutils/db/table/TableEntity;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xutils/db/Selector;

    invoke-direct {v0, p0}, Lorg/xutils/db/Selector;-><init>(Lorg/xutils/db/table/TableEntity;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public count()J
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v5}, Lorg/xutils/db/table/TableEntity;->getId()Lorg/xutils/db/table/ColumnEntity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/db/table/ColumnEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\") as count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/xutils/db/DbModelSelector;->findFirst()Lorg/xutils/db/table/DbModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "count"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lorg/xutils/db/table/DbModel;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public findAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-static {v2, v0}, Lorg/xutils/db/a;->b(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

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
    :goto_1
    return-object v1
.end method

.method public findFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->tableIsExists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    .line 3
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v0}, Lorg/xutils/db/table/TableEntity;->getDb()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/db/Selector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v1, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-static {v1, v0}, Lorg/xutils/db/a;->b(Lorg/xutils/db/table/TableEntity;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 8
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    .line 9
    throw v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/db/Selector;->d:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/xutils/db/Selector;->e:I

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xutils/db/Selector$OrderBy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    return-object v0
.end method

.method public getTable()Lorg/xutils/db/table/TableEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/db/table/TableEntity<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    return-object v0
.end method

.method public getWhereBuilder()Lorg/xutils/db/sqlite/WhereBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;Ljava/lang/String;)V

    return-object v0
.end method

.method public limit(I)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/xutils/db/Selector;->d:I

    return-object p0
.end method

.method public offset(I)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/xutils/db/Selector;->e:I

    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    new-instance v1, Lorg/xutils/db/Selector$OrderBy;

    invoke-direct {v1, p1, p2}, Lorg/xutils/db/Selector$OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;
    .locals 1

    .line 1
    new-instance v0, Lorg/xutils/db/DbModelSelector;

    invoke-direct {v0, p0, p1}, Lorg/xutils/db/DbModelSelector;-><init>(Lorg/xutils/db/Selector;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/db/Selector;->a:Lorg/xutils/db/table/TableEntity;

    invoke-virtual {v2}, Lorg/xutils/db/table/TableEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " WHERE "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " ORDER BY "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lorg/xutils/db/Selector;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/Selector$OrderBy;

    .line 10
    invoke-virtual {v2}, Lorg/xutils/db/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    iget v1, p0, Lorg/xutils/db/Selector;->d:I

    if-lez v1, :cond_3

    const-string v1, " LIMIT "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xutils/db/Selector;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OFFSET "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xutils/db/Selector;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lorg/xutils/db/Selector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/xutils/db/Selector;->b:Lorg/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method
