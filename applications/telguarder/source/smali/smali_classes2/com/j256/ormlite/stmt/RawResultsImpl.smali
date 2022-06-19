.class public Lcom/j256/ormlite/stmt/RawResultsImpl;
.super Ljava/lang/Object;
.source "RawResultsImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/GenericRawResults;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/GenericRawResults<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final columnNames:[Ljava/lang/String;

.field private iterator:Lcom/j256/ormlite/stmt/SelectIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/SelectIterator<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v8, Lcom/j256/ormlite/stmt/SelectIterator;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/dao/ObjectCache;)V

    iput-object v8, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    .line 35
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/SelectIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object p1

    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/SelectIterator;->close()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFirstResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "raw results iterator"

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-static {p0, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {p0, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public getNumberColumns()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "raw results iterator"

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/SelectIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {p0, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator:Lcom/j256/ormlite/stmt/SelectIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/RawResultsImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method
