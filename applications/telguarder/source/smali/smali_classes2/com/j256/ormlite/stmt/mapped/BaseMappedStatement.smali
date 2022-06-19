.class public abstract Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.super Ljava/lang/Object;
.source "BaseMappedStatement.java"


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
.field protected static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected final argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field protected final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected final idField:Lcom/j256/ormlite/field/FieldType;

.field protected final statement:Ljava/lang/String;

.field protected final tableInfo:Lcom/j256/ormlite/table/TableInfo;
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

    .line 21
    const-class v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V
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
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 35
    iput-object p2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 36
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->clazz:Ljava/lang/Class;

    .line 37
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 38
    iput-object p3, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->statement:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method static appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 101
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 p0, 0x20

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/j256/ormlite/table/TableInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "**>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {p3}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 90
    invoke-virtual {p3}, Lcom/j256/ormlite/table/TableInfo;->getSchemaName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p2, 0x2e

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    invoke-virtual {p3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-interface {p0, p1, p3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x20

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "WHERE "

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p0, p2, p1, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    const-string p0, "= ?"

    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected convertIdToFieldObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 48
    aget-object v2, v2, v1

    .line 49
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->isAllowGeneratedIdInsert()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2, p1}, Lcom/j256/ormlite/field/FieldType;->getFieldValueIfNotDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v2, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 54
    :goto_1
    aget-object v3, v0, v1

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;->statement:Ljava/lang/String;

    return-object v0
.end method
