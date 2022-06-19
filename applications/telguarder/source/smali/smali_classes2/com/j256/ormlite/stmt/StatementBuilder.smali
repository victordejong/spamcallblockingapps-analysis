.class public abstract Lcom/j256/ormlite/stmt/StatementBuilder;
.super Ljava/lang/Object;
.source "StatementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;,
        Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;,
        Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    }
.end annotation

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
.field private static final EMPTY_ARGUMENT_HOLDERS:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private static final EMPTY_FIELD_TYPES:[Lcom/j256/ormlite/field/FieldType;

.field private static final logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected addTableName:Z

.field protected final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field protected final tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;"
        }
    .end annotation
.end field

.field protected final tableName:Ljava/lang/String;

.field protected type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

.field protected where:Lcom/j256/ormlite/stmt/Where;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 27
    sput-object v1, Lcom/j256/ormlite/stmt/StatementBuilder;->EMPTY_ARGUMENT_HOLDERS:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 28
    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->EMPTY_FIELD_TYPES:[Lcom/j256/ormlite/field/FieldType;

    .line 30
    const-class v0, Lcom/j256/ormlite/stmt/StatementBuilder;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    .line 43
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 44
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 45
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 47
    iput-object p4, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 48
    invoke-virtual {p4}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->isOkForStatementBuilder()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Building a statement from a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " statement is not allowed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected abstract appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 145
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method protected appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 160
    sget-object p1, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->FIRST:Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;

    if-ne p3, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 162
    :cond_1
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendBefore(Ljava/lang/StringBuilder;)V

    .line 163
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    iget-boolean v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->addTableName:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->getTableName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, p1, p2}, Lcom/j256/ormlite/stmt/Where;->appendSql(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 164
    invoke-virtual {p3, p1}, Lcom/j256/ormlite/stmt/StatementBuilder$WhereOperation;->appendAfter(Ljava/lang/StringBuilder;)V

    return v1
.end method

.method protected buildStatementString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendStatementString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "built statement {}"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    return-object v0
.end method

.method protected prepareStatement(Ljava/lang/Long;Z)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z)",
            "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<",
            "TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder;->EMPTY_ARGUMENT_HOLDERS:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 83
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder;->EMPTY_FIELD_TYPES:[Lcom/j256/ormlite/field/FieldType;

    move-object v7, v0

    move-object v5, v1

    goto :goto_1

    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    const/4 v2, 0x0

    .line 87
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 88
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getFieldType()Lcom/j256/ormlite/field/FieldType;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    move-object v7, v1

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    .line 92
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 93
    invoke-interface {v1}, Lcom/j256/ormlite/db/DatabaseType;->isLimitSqlSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    move-object v8, p1

    iget-object v9, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    move-object v1, v0

    move v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V

    return-object v0
.end method

.method public prepareStatementInfo()Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;

    invoke-direct {v2, v1, v0}, Lcom/j256/ormlite/stmt/StatementBuilder$StatementInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public prepareStatementString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->buildStatementString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    return-void
.end method

.method public setWhere(Lcom/j256/ormlite/stmt/Where;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    return-void
.end method

.method protected shouldPrependTableNameToColumns()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object p1

    return-object p1
.end method

.method public where()Lcom/j256/ormlite/stmt/Where;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/Where<",
            "TT;TID;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/j256/ormlite/stmt/Where;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-direct {v0, v1, p0, v2}, Lcom/j256/ormlite/stmt/Where;-><init>(Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/stmt/StatementBuilder;Lcom/j256/ormlite/db/DatabaseType;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    return-object v0
.end method
