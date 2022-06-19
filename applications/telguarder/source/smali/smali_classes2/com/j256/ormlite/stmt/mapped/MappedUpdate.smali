.class public Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "MappedUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement<",
        "TT;TID;>;"
    }
.end annotation


# instance fields
.field private final versionFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V
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
            "Lcom/j256/ormlite/field/FieldType;",
            "I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 26
    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 27
    iput p6, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    return-void
.end method

.method public static build(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    invoke-interface/range {p0 .. p0}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    const-string v3, "UPDATE "

    move-object/from16 v6, p1

    .line 38
    invoke-static {v2, v1, v3, v6}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/j256/ormlite/table/TableInfo;)V

    const/4 v3, -0x1

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v12, v4, v3

    .line 45
    invoke-static {v12, v0}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 46
    invoke-virtual {v12}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v13

    if-eqz v13, :cond_0

    move v10, v11

    move-object v9, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v11, v3

    if-eqz v9, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 59
    :cond_3
    new-array v11, v11, [Lcom/j256/ormlite/field/FieldType;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v5, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    const-string v14, "= ?"

    if-ge v12, v5, :cond_6

    aget-object v15, v4, v12

    .line 62
    invoke-static {v15, v0}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const-string v3, "SET "

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string v8, ", "

    .line 69
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_2
    invoke-static {v2, v1, v15, v7}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    add-int/lit8 v8, v13, 0x1

    .line 72
    aput-object v15, v11, v13

    .line 73
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v8

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    const/16 v3, 0x20

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v2, v0, v1, v7}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    add-int/lit8 v3, v13, 0x1

    .line 77
    aput-object v0, v11, v13

    if-eqz v9, :cond_7

    const-string v0, " AND "

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v2, v1, v9, v7}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 81
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    aput-object v9, v11, v3

    .line 84
    :cond_7
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V

    return-object v0

    :cond_8
    move-object/from16 v6, p1

    .line 33
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it doesn\'t have an id field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isReadOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 11
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

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {v3, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3, v2}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    iget v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, v2}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_1
    move-object v5, v2

    .line 104
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v2, v0, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result p1

    if-lez p1, :cond_4

    if-eqz v5, :cond_2

    .line 108
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_2
    if-eqz p3, :cond_4

    .line 112
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v3, v2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eq v2, p2, :cond_4

    .line 116
    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    array-length v10, v3

    :goto_0
    if-ge v1, v10, :cond_4

    aget-object v4, v3, v1

    .line 117
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eq v4, v5, :cond_3

    .line 118
    iget-object v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 119
    invoke-virtual {v4, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    move-object v6, v2

    move-object v9, p3

    .line 118
    invoke-virtual/range {v4 .. v9}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_4
    sget-object p3, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "update data with statement \'{}\' and {} args, changed {} rows"

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    array-length p3, v0

    if-lez p3, :cond_5

    .line 128
    sget-object p3, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "update arguments: {}"

    invoke-virtual {p3, v1, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return p1

    :catch_0
    move-exception p1

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to run update stmt on object "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
