.class public Lcom/j256/ormlite/stmt/SelectIterator;
.super Ljava/lang/Object;
.source "SelectIterator.java"

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private alreadyMoved:Z

.field private final classDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private closed:Z

.field private final compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

.field private final connection:Lcom/j256/ormlite/support/DatabaseConnection;

.field private final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private first:Z

.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final results:Lcom/j256/ormlite/support/DatabaseResults;

.field private rowC:I

.field private final rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/j256/ormlite/stmt/SelectIterator;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/support/CompiledStatement;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 50
    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    .line 51
    iput-object p2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    .line 52
    iput-object p3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    .line 53
    iput-object p4, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 54
    iput-object p5, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    .line 55
    iput-object p6, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    .line 56
    invoke-interface {p6, p7}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    .line 57
    sget-object p1, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "starting iterator @{} for \'{}\'"

    invoke-virtual {p1, p3, p2, p6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private getCurrent()Ljava/lang/Object;
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

    .line 291
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowMapper:Lcom/j256/ormlite/stmt/GenericRowMapper;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 292
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    .line 293
    iget v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->compiledStmt:Lcom/j256/ormlite/support/CompiledStatement;

    invoke-interface {v0}, Lcom/j256/ormlite/support/CompiledStatement;->close()V

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/j256/ormlite/stmt/SelectIterator;->logger:Lcom/j256/ormlite/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->rowC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "closed iterator @{} after {} rows"

    invoke-virtual {v0, v3, v1, v2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not release connection"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public closeQuietly()V
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/j256/ormlite/misc/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public current()Ljava/lang/Object;
    .locals 1
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

    .line 134
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
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

    .line 108
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 112
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getRawResults()Lcom/j256/ormlite/support/DatabaseResults;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Errors getting more results of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNextThrow()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_2

    .line 76
    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 77
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    const-string v1, "iterator"

    .line 82
    invoke-static {p0, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 84
    :cond_3
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    return v0
.end method

.method public moveAbsolute(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 209
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseResults;->moveAbsolute(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public moveRelative(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 196
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/DatabaseResults;->moveRelative(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public moveToNext()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 287
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 185
    :goto_0
    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get next result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextThrow()Ljava/lang/Object;
    .locals 3
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

    .line 146
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->alreadyMoved:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 151
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    if-eqz v0, :cond_1

    .line 152
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 153
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 159
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    return-object v1

    .line 163
    :cond_2
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 164
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
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

    .line 121
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->first:Z

    .line 125
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->results:Lcom/j256/ormlite/support/DatabaseResults;

    invoke-interface {v0}, Lcom/j256/ormlite/support/DatabaseResults;->previous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public remove()V
    .locals 4

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->removeThrow()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/SelectIterator;->closeQuietly()V

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeThrow()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/j256/ormlite/stmt/SelectIterator;->classDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 234
    :try_start_0
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iput-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->last:Ljava/lang/Object;

    throw v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " object because classDao not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/SelectIterator;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " object to remove. Must be called after a call to next."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
