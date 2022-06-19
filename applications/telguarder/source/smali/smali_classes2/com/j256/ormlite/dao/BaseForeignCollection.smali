.class public abstract Lcom/j256/ormlite/dao/BaseForeignCollection;
.super Ljava/lang/Object;
.source "BaseForeignCollection.java"

# interfaces
.implements Lcom/j256/ormlite/dao/ForeignCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/ForeignCollection<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4797e276d525d695L


# instance fields
.field protected final transient dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private final transient foreignFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final transient orderAscending:Z

.field private final transient orderColumn:Ljava/lang/String;

.field private final transient parent:Ljava/lang/Object;

.field private final transient parentId:Ljava/lang/Object;

.field private transient preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/dao/Dao;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 42
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    .line 43
    iput-object p5, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    .line 44
    iput-boolean p6, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderAscending:Z

    .line 45
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    return-void
.end method

.method private addElement(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addElement(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create data element in dao"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 67
    :try_start_0
    invoke-direct {p0, v1}, Lcom/j256/ormlite/dao/BaseForeignCollection;->addElement(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create data elements in dao"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 136
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    .line 138
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected getPreparedQuery()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderColumn:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 177
    iget-boolean v3, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->orderAscending:Z

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 179
    :cond_1
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->foreignFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 180
    instance-of v1, v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    if-eqz v1, :cond_2

    .line 182
    check-cast v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    .line 183
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->parentId:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->setParentInformation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->preparedQuery:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_0
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->refresh(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseForeignCollection;->closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 111
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 113
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public update(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseForeignCollection;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
