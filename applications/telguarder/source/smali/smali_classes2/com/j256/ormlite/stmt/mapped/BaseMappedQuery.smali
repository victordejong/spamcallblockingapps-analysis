.class public abstract Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "BaseMappedQuery.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<",
        "TT;TID;>;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private columnPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Ljava/lang/Object;

.field private parentId:Ljava/lang/Object;

.field protected final resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# direct methods
.method protected constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 31
    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method


# virtual methods
.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    iget-object v2, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/DatabaseResults;->getObjectCacheForRetrieve()Lcom/j256/ormlite/dao/ObjectCache;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 45
    iget-object v3, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3, v1, v2}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    iget-object v4, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    invoke-interface {v9, v4, v3}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 54
    :cond_1
    iget-object v3, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->createObjectInstance()Ljava/lang/Object;

    move-result-object v10

    const/4 v3, 0x0

    .line 58
    iget-object v11, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v12, :cond_5

    aget-object v8, v11, v15

    .line 59
    invoke-virtual {v8}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v8, v1, v2}, Lcom/j256/ormlite/field/FieldType;->resultToJava(Lcom/j256/ormlite/support/DatabaseResults;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 69
    iget-object v3, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    if-eqz v3, :cond_3

    invoke-virtual {v8}, Lcom/j256/ormlite/field/FieldType;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    .line 70
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    iget-object v4, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v6, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    const/16 v17, 0x1

    move-object v3, v8

    move-object v5, v10

    move-object/from16 v18, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    goto :goto_1

    :cond_3
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 73
    iget-object v4, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v7, 0x0

    move-object/from16 v3, v17

    move-object v5, v10

    move-object/from16 v6, v18

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 75
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v14, v18

    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_5
    if-eqz v16, :cond_7

    .line 82
    iget-object v11, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->resultsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v12, v11

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v3, v11, v13

    .line 83
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {v3, v10, v14}, Lcom/j256/ormlite/field/FieldType;->buildForeignCollection(Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/dao/BaseForeignCollection;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 86
    iget-object v4, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v7, 0x0

    move-object v5, v10

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 92
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/j256/ormlite/support/DatabaseResults;->getObjectCacheForStore()Lcom/j256/ormlite/dao/ObjectCache;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz v14, :cond_8

    .line 94
    iget-object v3, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->clazz:Ljava/lang/Class;

    invoke-interface {v1, v3, v14, v10}, Lcom/j256/ormlite/dao/ObjectCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :cond_8
    iget-object v1, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 97
    iput-object v2, v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->columnPositions:Ljava/util/Map;

    :cond_9
    return-object v10
.end method

.method public setParentInformation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parent:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;->parentId:Ljava/lang/Object;

    return-void
.end method
