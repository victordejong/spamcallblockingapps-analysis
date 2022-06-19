.class public Lcom/j256/ormlite/stmt/StatementExecutor;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;,
        Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private countStarQuery:Ljava/lang/String;

.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private ifExistsQuery:Ljava/lang/String;

.field private final localIsInBatchMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedRefresh<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdateId<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field private preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 53
    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/j256/ormlite/stmt/StatementExecutor$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$1;-><init>(Lcom/j256/ormlite/stmt/StatementExecutor;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    .line 81
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 82
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 83
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 702
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 703
    aget-object v1, p2, v0

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-interface {p1, v0, v1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    const/4 v1, 0x0

    .line 618
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 623
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v2

    .line 624
    invoke-direct {p0, v0, v2, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 628
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 629
    iget-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 630
    iget-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p1, :cond_0

    .line 632
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 627
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 628
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 629
    iget-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 630
    iget-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p1, :cond_1

    .line 632
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    throw p2
.end method

.method private doCallBatchTasks(Lcom/j256/ormlite/support/DatabaseConnection;ZLjava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "re-enabled auto-commit on table {} after batch tasks"

    .line 639
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v1}, Lcom/j256/ormlite/db/DatabaseType;->isBatchUseTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-static {p1, p2, v0, p3}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/DatabaseConnection;ZLcom/j256/ormlite/db/DatabaseType;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 644
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommitSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 649
    :try_start_1
    sget-object p2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "disabled auto-commit on table {} before batch tasks"

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 p3, 0x1

    goto :goto_1

    .line 653
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_2

    .line 667
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 668
    sget-object p1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object p3

    :catchall_1
    move-exception p3

    move-object v4, p3

    move p3, p2

    move-object p2, v4

    goto :goto_1

    :catch_0
    move-exception p3

    :try_start_3
    const-string v2, "Batch tasks callable threw non-SQL exception"

    .line 657
    invoke-static {v2, p3}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p3

    throw p3

    :catch_1
    move-exception p3

    .line 655
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception p3

    move-object p2, p3

    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    .line 667
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 668
    sget-object p1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    iget-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {p3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    throw p2
.end method

.method private prepareQueryForAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "I",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/stmt/SelectIterator<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 224
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object p1

    return-object p1
.end method

.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            "I)",
            "Lcom/j256/ormlite/stmt/SelectIterator<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v10, p2

    const-string v11, "compiled statement"

    .line 250
    iget-object v0, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v12

    const/4 v13, 0x0

    .line 253
    :try_start_0
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-object/from16 v5, p3

    move/from16 v2, p5

    invoke-interface {v5, v12, v0, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-static {v13, v11}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v13, v14

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v13, v11}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v12, :cond_0

    .line 262
    invoke-interface {v10, v12}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_0
    throw v0
.end method

.method public callBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->isSingleConnection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 605
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 607
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->doCallBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 466
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 467
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    return p1
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedDelete<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 586
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->DELETE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v1}, Lcom/j256/ormlite/stmt/PreparedDelete;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    .line 588
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result p2

    .line 589
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_0
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 536
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 537
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    return p1
.end method

.method public deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 550
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 551
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    return p1
.end method

.method public deleteIds(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TID;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteIds(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 576
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 577
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_0
    return p1
.end method

.method public deleteObjects(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDeleteCollection;->deleteObjects(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 563
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 564
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_0
    return p1
.end method

.method public executeRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 443
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "running raw execute statement: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    array-length v1, p3

    if-lez v1, :cond_0

    .line 446
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "execute arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    :cond_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    .line 451
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 452
    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public executeRawNoArgs(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "running raw execute statement: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 436
    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->executeStatement(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getRawRowMapper()Lcom/j256/ormlite/dao/RawRowMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TT;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1}, Lcom/j256/ormlite/stmt/RawRowMapperImpl;-><init>(Lcom/j256/ormlite/dao/Dao;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->rawRowMapper:Lcom/j256/ormlite/dao/RawRowMapper;

    return-object v0
.end method

.method public getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/GenericRowMapper<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 232
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    return-object v0
.end method

.method public ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v5, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    const-string v3, "COUNT(*)"

    .line 686
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 691
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v5}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 692
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    new-array v0, v2, [Lcom/j256/ormlite/field/FieldType;

    .line 693
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 696
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v0, v3, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J

    move-result-wide p1

    .line 697
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "query of \'{}\' returned {}"

    invoke-virtual {v0, v5, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 675
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v0

    .line 676
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 678
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "iterator"

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 203
    invoke-virtual/range {v1 .. v6}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object p1

    .line 206
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :goto_0
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "query of \'{}\' with {} args returned {} results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getNumArgs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 210
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p3

    :catchall_0
    move-exception p2

    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 128
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-virtual {p0, p1, v0, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT COUNT(*) FROM "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v1, 0x2e

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 146
    sget-object p1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->countStarQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "query of \'{}\' returned {}"

    invoke-virtual {p1, v4, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    const-string v1, "results"

    .line 102
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    :try_start_0
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    .line 106
    invoke-interface {p1, p3}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    invoke-interface {p3}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' with {} args returned at least 1 result"

    .line 109
    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getNumArgs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    invoke-virtual {v2, v3, p2, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-interface {p2, p3}, Lcom/j256/ormlite/stmt/PreparedStmt;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {p3, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 118
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p2

    .line 112
    :cond_0
    :try_start_2
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "query-for-first of \'{}\' with {} args returned 0 results"

    .line 113
    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getNumArgs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 112
    invoke-virtual {v2, v4, p2, v5}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-static {p3, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 118
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v3

    :catchall_0
    move-exception p2

    move-object v3, p3

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 117
    :goto_0
    invoke-static {v3, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 118
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt<",
            "TT;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    const-string v1, "results"

    .line 154
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    const/4 v2, 0x0

    .line 157
    :try_start_0
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p2, 0x0

    .line 159
    invoke-interface {v2, p2}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 165
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-wide v3

    .line 161
    :cond_0
    :try_start_1
    new-instance v3, Ljava/sql/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No result found in queryForLong: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 164
    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 165
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    const-string v1, "results"

    .line 174
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for long: {}"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    array-length v2, p3

    if-lez v2, :cond_0

    .line 177
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 182
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 185
    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 187
    invoke-interface {v2, p2}, Lcom/j256/ormlite/support/DatabaseResults;->getLong(I)J

    move-result-wide p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 193
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-wide p2

    .line 189
    :cond_1
    :try_start_2
    new-instance p3, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No result found in queryForLong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v2

    .line 192
    :goto_0
    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 193
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/DatabaseResultsMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/DatabaseResultsMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 388
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "executing raw query for: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    array-length v1, p4

    if-lez v1, :cond_0

    .line 391
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "query arguments: {}"

    invoke-virtual {v1, v2, p4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    const/4 v9, 0x0

    .line 396
    :try_start_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :try_start_1
    invoke-direct {p0, p2, p4}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 399
    new-instance p4, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/Object;

    new-instance v7, Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;

    invoke-direct {v7, p3, v9}, Lcom/j256/ormlite/stmt/StatementExecutor$UserDatabaseResultsMapper;-><init>(Lcom/j256/ormlite/dao/DatabaseResultsMapper;Lcom/j256/ormlite/stmt/StatementExecutor$1;)V

    move-object v2, p4

    move-object v3, p1

    move-object v4, v1

    move-object v6, p2

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p4

    :catchall_0
    move-exception p3

    move-object v9, p2

    goto :goto_0

    :catchall_1
    move-exception p3

    :goto_0
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 407
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw p3
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 301
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "executing raw query for: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    array-length v1, p4

    if-lez v1, :cond_0

    .line 304
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "query arguments: {}"

    invoke-virtual {v1, v2, p4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    const/4 v9, 0x0

    .line 309
    :try_start_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    invoke-direct {p0, p2, p4}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 312
    new-instance p4, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/String;

    new-instance v7, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;

    invoke-direct {v7, p3, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowMapper;-><init>(Lcom/j256/ormlite/dao/RawRowMapper;Lcom/j256/ormlite/stmt/GenericRowMapper;)V

    move-object v2, p4

    move-object v3, p1

    move-object v4, v1

    move-object v6, p2

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p4

    :catchall_0
    move-exception p3

    move-object v9, p2

    goto :goto_0

    :catchall_1
    move-exception p3

    :goto_0
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 320
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw p3
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;Lcom/j256/ormlite/dao/RawRowObjectMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "Lcom/j256/ormlite/dao/RawRowObjectMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TUO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p5

    const-string v10, "compiled statement"

    .line 330
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    array-length v2, v0

    if-lez v2, :cond_0

    .line 333
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    :cond_0
    iget-object v2, v1, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v8

    const/4 v7, 0x0

    .line 338
    :try_start_0
    sget-object v13, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v14, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object v11, v8

    move-object/from16 v12, p2

    invoke-interface/range {v11 .. v16}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 340
    :try_start_1
    invoke-direct {v1, v11, v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/String;

    new-instance v12, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v12, v3, v2}, Lcom/j256/ormlite/stmt/StatementExecutor$UserRawRowObjectMapper;-><init>(Lcom/j256/ormlite/dao/RawRowObjectMapper;[Lcom/j256/ormlite/field/DataType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v6, v11

    move-object v13, v7

    move-object v7, v12

    move-object v12, v8

    move-object/from16 v8, p6

    :try_start_2
    invoke-direct/range {v2 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    invoke-static {v13, v10}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, v8

    :goto_0
    move-object v7, v11

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v13, v7

    move-object v12, v8

    :goto_1
    invoke-static {v7, v10}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v12, :cond_1

    .line 349
    invoke-interface {v9, v12}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw v0
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 359
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "executing raw query for: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 360
    array-length v1, p4

    if-lez v1, :cond_0

    .line 362
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "query arguments: {}"

    invoke-virtual {v1, v2, p4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    const/4 v9, 0x0

    .line 367
    :try_start_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    :try_start_1
    invoke-direct {p0, p2, p4}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 370
    new-instance p4, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/Object;

    new-instance v7, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;

    invoke-direct {v7, p3}, Lcom/j256/ormlite/stmt/StatementExecutor$ObjectArrayRowMapper;-><init>([Lcom/j256/ormlite/field/DataType;)V

    move-object v2, p4

    move-object v3, p1

    move-object v4, v1

    move-object v6, p2

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p4

    :catchall_0
    move-exception p3

    move-object v9, p2

    goto :goto_0

    :catchall_1
    move-exception p3

    :goto_0
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 378
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw p3
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 272
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "executing raw query for: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    array-length v1, p3

    if-lez v1, :cond_0

    .line 275
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "query arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    const/4 v9, 0x0

    .line 280
    :try_start_0
    sget-object v4, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v5, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 283
    new-instance p3, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/String;

    move-object v2, p3

    move-object v3, p1

    move-object v4, v1

    move-object v6, p2

    move-object v7, p0

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p3

    :catchall_0
    move-exception p3

    move-object v9, p2

    goto :goto_0

    :catchall_1
    move-exception p3

    :goto_0
    invoke-static {v9, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw p3
.end method

.method public refresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedRefresh:Lcom/j256/ormlite/stmt/mapped/MappedRefresh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedRefresh;->executeRefresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    return p1
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedUpdate<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 505
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v1}, Lcom/j256/ormlite/stmt/PreparedUpdate;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    .line 507
    :try_start_0
    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result p2

    .line 508
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_0
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 480
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 481
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    return p1
.end method

.method public updateId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdateId:Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/MappedUpdateId;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1

    .line 495
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 496
    iget-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p2}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    :cond_1
    return p1
.end method

.method public updateRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "compiled statement"

    .line 416
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "running raw update statement: {}"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 417
    array-length v1, p3

    if-lez v1, :cond_0

    .line 419
    sget-object v1, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "update arguments: {}"

    invoke-virtual {v1, v2, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    :cond_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->UPDATE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object p1

    .line 424
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 425
    invoke-interface {p1}, Lcom/j256/ormlite/support/CompiledStatement;->runUpdate()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-static {p1, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method
