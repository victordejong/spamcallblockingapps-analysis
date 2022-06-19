.class public Lcom/j256/ormlite/dao/DaoManager;
.super Ljava/lang/Object;
.source "DaoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;,
        Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;
    }
.end annotation


# static fields
.field private static classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static tableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCachedDatabaseConfigs(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "*>;>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 245
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 250
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 251
    invoke-virtual {v2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v3, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "Loaded configuration for {}"

    invoke-virtual {v2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 254
    :cond_1
    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 261
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 285
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 220
    sput-object v1, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    .line 222
    :cond_0
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearDaoCache()V
    .locals 3

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 231
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 233
    :cond_0
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 234
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 235
    sput-object v2, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 130
    :try_start_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 128
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_7

    .line 47
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 48
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 52
    monitor-exit v0

    return-object v1

    .line 56
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 60
    monitor-exit v0

    return-object v1

    .line 63
    :cond_1
    :try_start_2
    const-class v1, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz v1, :cond_5

    .line 64
    invoke-interface {v1}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Void;

    if-eq v2, v3, :cond_5

    .line 65
    invoke-interface {v1}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-interface {v1}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    .line 81
    invoke-static {v1, v2}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-nez v5, :cond_4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 85
    invoke-static {v1, v2}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 87
    :cond_3
    new-instance p0, Ljava/sql/SQLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find public constructor with ConnectionSource and optional Class parameters "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".  Missing static on class?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/dao/Dao;

    .line 94
    sget-object v3, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "created dao for class {} from constructor"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 96
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not call the constructor in class "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 67
    :cond_5
    :goto_1
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v1

    .line 68
    invoke-interface {v1, p0, p1}, Lcom/j256/ormlite/db/DatabaseType;->extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    if-nez v1, :cond_6

    .line 71
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    goto :goto_2

    .line 73
    :cond_6
    invoke-static {p0, v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    :goto_2
    move-object v2, v1

    .line 76
    sget-object v1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "created dao for class {} with reflection"

    invoke-virtual {v1, v3, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :goto_3
    invoke-static {p0, v2}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 45
    :cond_7
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method private static createDaoFromConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->configMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 341
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez p1, :cond_1

    return-object v1

    .line 348
    :cond_1
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/DaoManager;->doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    return-object p0
.end method

.method private static doCreateDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 358
    invoke-static {v0}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    .line 367
    new-instance v2, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v2, p0, v1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 368
    invoke-static {v2}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 371
    invoke-static {v0, v3}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    return-object v3

    .line 378
    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/j256/ormlite/table/DatabaseTable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/table/DatabaseTable;

    if-eqz v3, :cond_4

    .line 379
    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Void;

    if-eq v4, v5, :cond_4

    .line 380
    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 384
    :cond_2
    invoke-interface {v3}, Lcom/j256/ormlite/table/DatabaseTable;->daoClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object p1, v4, p0

    .line 386
    invoke-static {v3, v4}, Lcom/j256/ormlite/dao/DaoManager;->findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 393
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not call the constructor in class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 388
    :cond_3
    new-instance p0, Ljava/sql/SQLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 381
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    .line 399
    :goto_1
    invoke-static {v0, p0}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 400
    sget-object p1, Lcom/j256/ormlite/dao/DaoManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v0, "created dao for class {} from table config"

    invoke-virtual {p1, v0, v1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    invoke-static {v2}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    if-nez p1, :cond_5

    .line 404
    invoke-static {v2, p0}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    :cond_5
    return-object p0
.end method

.method private static findConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 314
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 315
    array-length v5, v4

    array-length v6, p1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    .line 317
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 318
    aget-object v6, v4, v5

    aget-object v7, p1, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    .line 292
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/dao/Dao;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;",
            ")",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;"
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    .line 304
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->tableConfigMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/dao/Dao;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 142
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 143
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 145
    monitor-exit v0

    return-object p0

    .line 149
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 140
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized lookupDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)TD;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    .line 114
    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->lookupDao(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 111
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 172
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 170
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerDaoWithTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 204
    :try_start_0
    instance-of v1, p1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    if-eqz v1, :cond_0

    .line 205
    move-object v1, p1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v2, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    invoke-direct {v2, p0, v1}, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    invoke-static {v2, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToTableMap(Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    .line 211
    :cond_0
    :try_start_1
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1, p1}, Lcom/j256/ormlite/dao/DaoManager;->addDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 202
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)V
    .locals 1

    .line 265
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeDaosFromConnectionClassMap(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .line 271
    sget-object v0, Lcom/j256/ormlite/dao/DaoManager;->classMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 273
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    iget-object v1, v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-ne v1, p0, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/Dao<",
            "**>;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 183
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/j256/ormlite/dao/DaoManager;->removeDaoToClassMap(Lcom/j256/ormlite/dao/DaoManager$ClassConnectionSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 181
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionSource argument cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterDaos(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    const-class v0, Lcom/j256/ormlite/dao/DaoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 193
    :try_start_0
    invoke-static {p0}, Lcom/j256/ormlite/dao/DaoManager;->removeDaosFromConnectionClassMap(Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 191
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionSource argument cannot be null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method
