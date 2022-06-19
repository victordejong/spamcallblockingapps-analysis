.class public abstract Lcom/j256/ormlite/dao/BaseDaoImpl;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/Dao<",
        "TT;TID;>;"
    }
.end annotation


# static fields
.field private static final constantObject:Ljava/lang/Object;

.field private static final daoConfigLevelLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "**>;>;>;"
        }
    .end annotation
.end field

.field private static defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;


# instance fields
.field protected connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field protected constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private daoObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/j256/ormlite/dao/Dao$DaoObserver;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private initialized:Z

.field protected lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field objectCache:Lcom/j256/ormlite/dao/ObjectCache;

.field protected objectFactory:Lcom/j256/ormlite/table/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/ObjectFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementExecutor<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected tableInfo:Lcom/j256/ormlite/table/TableInfo;
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

    .line 62
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$1;

    invoke-direct {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constantObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    .line 132
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 133
    invoke-direct {p0, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 136
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialize()V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method public static declared-synchronized clearAllInternalObjectCaches()V
    .locals 2

    const-class v0, Lcom/j256/ormlite/dao/BaseDaoImpl;

    monitor-enter v0

    .line 893
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->clearAll()V

    const/4 v1, 0x0

    .line 895
    sput-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1076
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$6;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-object v0
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1062
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$5;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-object v0
.end method

.method private findNoArgConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1182
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1188
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1189
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 1190
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1192
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1194
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open access to constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1200
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Can\'t find a no-arg constructor for "

    if-nez v0, :cond_3

    .line 1201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".  Missing static on inner class?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 1186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t lookup declared constructors for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private makeEmptyForeignCollection(Ljava/lang/Object;Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "TFT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1094
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1095
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1097
    invoke-virtual {v4, p1, v0}, Lcom/j256/ormlite/field/FieldType;->buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/dao/BaseForeignCollection;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 1099
    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_1
    return-object p2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1104
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find a field named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1157
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 1158
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 1160
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz p2, :cond_0

    .line 1163
    new-instance v5, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v5, v4}, Lcom/j256/ormlite/stmt/SelectArg;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 1165
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    goto :goto_0

    .line 1167
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1170
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 1171
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 1135
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1136
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v2, v4

    .line 1139
    invoke-virtual {v6, p1}, Lcom/j256/ormlite/field/FieldType;->getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    .line 1142
    new-instance v8, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v8, v7}, Lcom/j256/ormlite/stmt/SelectArg;-><init>(Ljava/lang/Object;)V

    move-object v7, v8

    .line 1144
    :cond_0
    invoke-virtual {v6}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 1149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1151
    :cond_3
    invoke-virtual {v1, v5}, Lcom/j256/ormlite/stmt/Where;->and(I)Lcom/j256/ormlite/stmt/Where;

    .line 1152
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private wireNewInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1209
    instance-of v0, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v0, :cond_0

    .line 1211
    check-cast p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 1212
    invoke-virtual {p1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public assignEmptyForeignCollection(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 824
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->makeEmptyForeignCollection(Ljava/lang/Object;Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method

.method public callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TCT;>;)TCT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 729
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->callBatchTasks(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected checkForInitialized()V
    .locals 2

    .line 1081
    iget-boolean v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 1082
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call initialize() before you can use the dao"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearObjectCache()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public closeLastIterator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->close()V

    const/4 v0, 0x0

    .line 603
    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

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

    const/4 v0, -0x1

    .line 548
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public commit(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 985
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    return-void
.end method

.method public countOf()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 798
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 799
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForCountStar(Lcom/j256/ormlite/support/DatabaseConnection;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-wide v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 810
    invoke-interface {p1}, Lcom/j256/ormlite/stmt/PreparedQuery;->getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-result-object v0

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-ne v0, v1, :cond_0

    .line 814
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-wide v1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1

    .line 811
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared query is not of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", you need to call QueryBuilder.setCountOf(true)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Object;)I
    .locals 3
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

    .line 320
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 325
    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v0, :cond_1

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 328
    invoke-virtual {v0, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public create(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 341
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 342
    instance-of v2, v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_0

    .line 344
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 345
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 354
    :try_start_0
    new-instance v1, Lcom/j256/ormlite/dao/BaseDaoImpl$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl$2;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/util/Collection;Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-virtual {p0, v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public declared-synchronized createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 372
    monitor-exit p0

    return-object p1

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->create(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-object p1

    .line 379
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 1113
    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not build iterator for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1125
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    .line 1126
    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not build prepared-query iterator for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public createObjectInstance()Ljava/lang/Object;
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

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectFactory:Lcom/j256/ormlite/table/ObjectFactory;

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constructor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/table/ObjectFactory;->createObject(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1002
    :goto_0
    invoke-direct {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->wireNewInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create object for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 386
    :try_start_0
    new-instance p1, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {p1, v0, v0, v0}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 388
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 390
    invoke-virtual {p0, v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->idExists(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->update(Ljava/lang/Object;)I

    move-result p1

    .line 395
    new-instance v1, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v1, v0, v2, p1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 391
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->create(Ljava/lang/Object;)I

    move-result p1

    .line 392
    new-instance v1, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v1, v2, v0, p1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delete(Lcom/j256/ormlite/stmt/PreparedDelete;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedDelete<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 533
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedDelete;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 3
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

    .line 468
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public delete(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-eqz p1, :cond_1

    .line 502
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteObjects(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/DeleteBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 275
    new-instance v0, Lcom/j256/ormlite/stmt/DeleteBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/DeleteBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public deleteById(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public deleteIds(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TID;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-eqz p1, :cond_1

    .line 518
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteIds(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/util/Collection;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public endThreadConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 970
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-void
.end method

.method public varargs executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 690
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->executeRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 694
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not run raw execute statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    :goto_0
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public executeRawNoArgs(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 703
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->executeRawNoArgs(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 707
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not run raw execute statement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :goto_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public extractId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 755
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 757
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have an id field"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findForeignFieldType(Ljava/lang/Class;)Lcom/j256/ormlite/field/FieldType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/j256/ormlite/field/FieldType;"
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 772
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 773
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEmptyForeignCollection(Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "TFT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 829
    invoke-direct {p0, v0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->makeEmptyForeignCollection(Ljava/lang/Object;Ljava/lang/String;)Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object p1

    return-object p1
.end method

.method public getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public getRawRowMapper()Lcom/j256/ormlite/dao/RawRowMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TT;>;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->getRawRowMapper()Lcom/j256/ormlite/dao/RawRowMapper;

    move-result-object v0

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

    .line 942
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;

    move-result-object v0

    return-object v0
.end method

.method public getTableConfig()Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    return-object v0
.end method

.method public getTableInfo()Lcom/j256/ormlite/table/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable<",
            "TT;>;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 562
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/BaseDaoImpl$3;

    invoke-direct {v1, p0}, Lcom/j256/ormlite/dao/BaseDaoImpl$3;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable<",
            "TT;>;"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 582
    new-instance v0, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;

    new-instance v1, Lcom/j256/ormlite/dao/BaseDaoImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$4;-><init>(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/stmt/PreparedQuery;)V

    invoke-direct {v0, v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterableImpl;-><init>(Lcom/j256/ormlite/dao/CloseableIterable;)V

    return-object v0
.end method

.method public idExists(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public initialize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-eqz v0, :cond_6

    .line 153
    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    if-eqz v0, :cond_5

    .line 158
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez v1, :cond_1

    .line 159
    new-instance v0, Lcom/j256/ormlite/table/TableInfo;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1, v0}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)V

    .line 162
    new-instance v0, Lcom/j256/ormlite/table/TableInfo;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 164
    :goto_0
    new-instance v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/StatementExecutor;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    .line 179
    sget-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 194
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 195
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 204
    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v5, v4}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :try_start_1
    invoke-virtual {v4}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 209
    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v4}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getDataClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/j256/ormlite/field/FieldType;->configDaoInformation(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 218
    :cond_3
    :try_start_2
    iput-boolean v2, v4, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 213
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v2, v4}, Lcom/j256/ormlite/dao/DaoManager;->unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 214
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    sget-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception v1

    .line 222
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    sget-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    throw v1

    .line 155
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionSource is getting a null DatabaseType in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionSource was never set on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 980
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result p1

    return p1
.end method

.method public isTableExists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 788
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->isTableExists(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public isUpdatable()Z
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->isUpdatable()Z

    move-result v0

    return v0
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

    const/4 v0, -0x1

    .line 543
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 553
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 554
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object p1

    .line 555
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object p1
.end method

.method public iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 615
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object p1

    .line 616
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapSelectStarRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseResults;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/StatementExecutor;->getSelectStarRowMapper()Lcom/j256/ormlite/stmt/GenericRowMapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public notifyChanges()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 907
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/Dao$DaoObserver;

    .line 908
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao$DaoObserver;->onChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 735
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 741
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 742
    invoke-virtual {v4, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 743
    invoke-virtual {v4, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 745
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getDataPersister()Lcom/j256/ormlite/field/DataPersister;

    move-result-object v4

    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/field/DataPersister;->dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 281
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 263
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public queryForAll()Ljava/util/List;
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

    .line 251
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 252
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForEq(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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

    .line 257
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForFieldValues(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForFieldValuesArgs(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForFieldValues(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 241
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public queryForId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 230
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public queryForMatching(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForMatching(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryForSameId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/DatabaseResultsMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/DatabaseResultsMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
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

    .line 666
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/DatabaseResultsMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 670
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not perform raw query for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public varargs queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<GR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/RawRowMapper<",
            "TGR;>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults<",
            "TGR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 637
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not perform raw query for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public varargs queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;Lcom/j256/ormlite/dao/RawRowObjectMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UO:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "Lcom/j256/ormlite/dao/RawRowObjectMapper<",
            "TUO;>;[",
            "Ljava/lang/String;",
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

    .line 644
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v6, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;Lcom/j256/ormlite/dao/RawRowObjectMapper;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 648
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not perform raw query for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public varargs queryRaw(Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/DataType;",
            "[",
            "Ljava/lang/String;",
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

    .line 655
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v5, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Lcom/j256/ormlite/field/DataType;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 659
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not perform raw query for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
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

    .line 622
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not perform raw query for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public varargs queryRawValue(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 677
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForLong(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 681
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not perform raw value query for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :goto_0
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public refresh(Ljava/lang/Object;)I
    .locals 3
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

    .line 448
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 453
    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v0, :cond_1

    .line 455
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 456
    invoke-virtual {v0, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->refresh(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public registerObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 921
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    .line 925
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 928
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    sget-object v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->constantObject:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rollBack(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 990
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    return-void
.end method

.method public setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 975
    invoke-interface {p1, p2}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    return-void
.end method

.method public setConnectionSource(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .line 1036
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    return-void
.end method

.method public setObjectCache(Lcom/j256/ormlite/dao/ObjectCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 859
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz p1, :cond_2

    .line 861
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 862
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    goto :goto_0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 872
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 873
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/ObjectCache;->registerClass(Ljava/lang/Class;)V

    :cond_2
    :goto_0
    return-void

    .line 870
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " must have an id field to enable the object cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectCache(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 835
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-nez p1, :cond_3

    .line 836
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 839
    const-class p1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    monitor-enter p1

    .line 840
    :try_start_0
    sget-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    if-nez v0, :cond_0

    .line 842
    invoke-static {}, Lcom/j256/ormlite/dao/ReferenceObjectCache;->makeWeakCache()Lcom/j256/ormlite/dao/ReferenceObjectCache;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    .line 844
    :cond_0
    sget-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->defaultObjectCache:Lcom/j256/ormlite/dao/ReferenceObjectCache;

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    .line 845
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/ObjectCache;->registerClass(Ljava/lang/Class;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 845
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 837
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " must have an id field to enable the object cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :cond_2
    iget-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    if-eqz p1, :cond_3

    .line 850
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/ObjectCache;->clear(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 851
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    :cond_3
    :goto_0
    return-void
.end method

.method public setObjectFactory(Lcom/j256/ormlite/table/ObjectFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/ObjectFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 1011
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 1012
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectFactory:Lcom/j256/ormlite/table/ObjectFactory;

    return-void
.end method

.method public setTableConfig(Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 1044
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    return-void
.end method

.method public startThreadConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 963
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    return-object v0
.end method

.method public unregisterObserver(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 934
    monitor-enter v0

    .line 935
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedUpdate<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 438
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->update(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedUpdate;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public update(Ljava/lang/Object;)I
    .locals 3
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

    .line 401
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 406
    :cond_0
    instance-of v0, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v0, :cond_1

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 409
    invoke-virtual {v0, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/UpdateBuilder<",
            "TT;TID;>;"
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 269
    new-instance v0, Lcom/j256/ormlite/stmt/UpdateBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/UpdateBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public updateId(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TID;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->updateId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method

.method public varargs updateRaw(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 716
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->updateRaw(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 720
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not run raw update statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    :goto_0
    iget-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw p1
.end method
