.class public Lcom/j256/ormlite/table/SchemaUtils;
.super Ljava/lang/Object;
.source "SchemaUtils.java"


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/j256/ormlite/table/SchemaUtils;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 28
    sput-object v0, Lcom/j256/ormlite/table/SchemaUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCreateSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 262
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p5, :cond_0

    .line 264
    sget-object p5, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v0, "creating schema \'{}\'"

    invoke-virtual {p5, v0, p1}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string p5, "CREATE SCHEMA "

    .line 266
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    .line 267
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateIfNotExistsSupported()Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "IF NOT EXISTS "

    .line 268
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_1
    invoke-interface {p0, p3, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 271
    invoke-interface {p0, p3}, Lcom/j256/ormlite/db/DatabaseType;->appendCreateSchemaSuffix(Ljava/lang/StringBuilder;)V

    .line 272
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addDropSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p3, :cond_0

    .line 169
    sget-object p3, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "dropping schema \'{}\'"

    invoke-virtual {p3, v1, p1}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string p3, "DROP SCHEMA "

    .line 171
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-interface {p0, v0, p1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createSchema(Lcom/j256/ormlite/dao/Dao;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static createSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static createSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static createSchemaIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static createSchemaIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-static {p0, p1, v0}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static doCreateSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 179
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v6

    .line 180
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, v7

    move-object v3, v8

    move v4, p2

    .line 182
    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/SchemaUtils;->addCreateSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 183
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object p1

    :try_start_0
    const-string v1, "create"

    const/4 v3, 0x0

    .line 186
    invoke-interface {v6}, Lcom/j256/ormlite/db/DatabaseType;->isCreateSchemaReturnsNegative()Z

    move-result v4

    invoke-interface {v6}, Lcom/j256/ormlite/db/DatabaseType;->isCreateSchemaReturnsZero()Z

    move-result v5

    move-object v0, p1

    move-object v2, v7

    .line 185
    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/SchemaUtils;->doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I

    move-result p2

    .line 187
    invoke-static {p1, v6, v8}, Lcom/j256/ormlite/table/SchemaUtils;->doCreateTestQueries(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr p2, v0

    .line 190
    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p2

    :catchall_0
    move-exception p2

    invoke-interface {p0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p2
.end method

.method private static doCreateTestQueries(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/db/DatabaseType;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "compiled statement"

    .line 232
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v9, 0x0

    .line 235
    :try_start_0
    sget-object v5, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v6, Lcom/j256/ormlite/table/SchemaUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    invoke-interface {v3, v9}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v4

    .line 241
    invoke-interface {v4}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v4}, Lcom/j256/ormlite/support/DatabaseResults;->next()Z

    move-result v5

    goto :goto_1

    .line 244
    :cond_0
    sget-object v4, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v5, "executing create schema after-query got {} results: {}"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-static {v3, p1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v9, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v9, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 247
    :goto_2
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executing create schema after-query failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    :goto_3
    invoke-static {v9, p1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method private static doDropSchema(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 152
    invoke-static {p0, p2, v2, v0}, Lcom/j256/ormlite/table/SchemaUtils;->addDropSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;Z)V

    .line 153
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object p2

    :try_start_0
    const-string v1, "drop"

    .line 156
    invoke-interface {p0}, Lcom/j256/ormlite/db/DatabaseType;->isCreateSchemaReturnsNegative()Z

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move v3, p3

    .line 155
    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/SchemaUtils;->doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p0
.end method

.method private static doStatements(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/util/Collection;ZZZ)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;ZZZ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v1, p1

    const-string v2, "compiled statement"

    .line 197
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    const/4 v13, 0x0

    .line 201
    :try_start_0
    sget-object v8, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->EXECUTE:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v9, Lcom/j256/ormlite/table/SchemaUtils;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v12

    invoke-interface/range {v6 .. v11}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v13

    .line 203
    invoke-interface {v13}, Lcom/j256/ormlite/support/CompiledStatement;->runExecute()I

    move-result v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    sget-object v0, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "executed {} schema statement changed {} rows: {}"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, p1, v8, v12}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    :goto_1
    if-eqz p3, :cond_4

    .line 207
    :try_start_2
    sget-object v7, Lcom/j256/ormlite/table/SchemaUtils;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v8, "ignoring {} error \'{}\' for statement: {}"

    invoke-virtual {v7, v8, p1, v0, v12}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :goto_2
    invoke-static {v13, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    if-gez v6, :cond_1

    if-eqz p4, :cond_0

    goto :goto_3

    .line 217
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rows, we were expecting >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez v6, :cond_3

    if-nez p5, :cond_2

    goto :goto_3

    .line 221
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL statement updated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rows, we were expecting == 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 209
    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL statement failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    :goto_4
    invoke-static {v13, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_5
    return v5
.end method

.method public static dropSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    invoke-interface {p0}, Lcom/j256/ormlite/dao/Dao;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/j256/ormlite/table/SchemaUtils;->dropSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static dropSchema(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 145
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    .line 146
    invoke-static {v0, p0, p1, p2}, Lcom/j256/ormlite/table/SchemaUtils;->doDropSchema(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static getCreateSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v6

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/j256/ormlite/table/SchemaUtils;->addCreateSchemaStatements(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    return-object v6
.end method
