.class public Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
.super Ljava/lang/Object;
.source "ColumnNameOrRawSql.java"


# instance fields
.field private final columnName:Ljava/lang/String;

.field private final rawSql:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->columnName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->rawSql:Ljava/lang/String;

    return-void
.end method

.method public static withColumnName(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    .locals 2

    .line 14
    new-instance v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withRawSql(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    .locals 2

    .line 18
    new-instance v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSql()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->rawSql:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->rawSql:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->columnName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
