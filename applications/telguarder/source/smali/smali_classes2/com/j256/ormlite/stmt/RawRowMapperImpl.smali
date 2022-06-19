.class public Lcom/j256/ormlite/stmt/RawRowMapperImpl;
.super Ljava/lang/Object;
.source "RawRowMapperImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/RawRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/RawRowMapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;"
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
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;TID;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 22
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    return-void
.end method


# virtual methods
.method public mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->createObjectInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 29
    :goto_0
    array-length v1, p1

    if-ge v7, v1, :cond_1

    .line 31
    array-length v1, p2

    if-lt v7, v1, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    aget-object v2, p1, v7

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 36
    aget-object v2, p2, v7

    invoke-virtual {v1, v2, v7}, Lcom/j256/ormlite/field/FieldType;->convertStringToJavaField(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    .line 38
    iget-object v2, p0, Lcom/j256/ormlite/stmt/RawRowMapperImpl;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/j256/ormlite/field/FieldType;->assignField(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
