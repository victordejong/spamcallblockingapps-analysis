.class public Lcom/j256/ormlite/table/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private fieldNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private final foreignAutoCreate:Z

.field private final foreignCollections:[Lcom/j256/ormlite/field/FieldType;

.field private final idField:Lcom/j256/ormlite/field/FieldType;

.field private final schemaName:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 26
    sput-object v0, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 79
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    .line 80
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->schemaName:Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getTableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    .line 82
    invoke-virtual {p2, p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getFieldTypes(Lcom/j256/ormlite/db/DatabaseType;)[Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 87
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, p2, :cond_5

    aget-object v5, p1, v2

    .line 88
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isId()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isGeneratedId()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isGeneratedIdSequence()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-nez v1, :cond_4

    move-object v1, v5

    .line 95
    :cond_1
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isForeignAutoCreate()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .line 98
    :cond_2
    invoke-virtual {v5}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_4
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "More than 1 idField configured for class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_5
    iput-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 104
    iput-boolean v3, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    if-nez v4, :cond_6

    .line 106
    sget-object p1, Lcom/j256/ormlite/table/TableInfo;->NO_FOREIGN_COLLECTIONS:[Lcom/j256/ormlite/field/FieldType;

    iput-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_2

    .line 108
    :cond_6
    new-array p1, v4, [Lcom/j256/ormlite/field/FieldType;

    iput-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    .line 110
    iget-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p2, :cond_8

    aget-object v2, p1, v0

    .line 111
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    iget-object v3, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    invoke-static {p1, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->fromClass(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/BaseDaoImpl<",
            "TT;TID;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-interface {p1}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 9

    .line 151
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v3, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 155
    iget-object v7, p0, Lcom/j256/ormlite/table/TableInfo;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v6}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2}, Lcom/j256/ormlite/db/DatabaseType;->downCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iput-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldNameMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/j256/ormlite/table/TableInfo;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v3, p1, v2}, Lcom/j256/ormlite/db/DatabaseType;->downCaseString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_2

    return-object v0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 166
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 167
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You should use columnName \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instead of fieldName \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown column name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in table "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getForeignCollections()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignCollections:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getIdField()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->schemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hasColumnName(Ljava/lang/String;)Z
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 226
    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isForeignAutoCreate()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/j256/ormlite/table/TableInfo;->foreignAutoCreate:Z

    return v0
.end method

.method public isUpdatable()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->idField:Lcom/j256/ormlite/field/FieldType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public objectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcom/j256/ormlite/table/TableInfo;->fieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const/16 v5, 0x20

    .line 188
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not generate toString of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
