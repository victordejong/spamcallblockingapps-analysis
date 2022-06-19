.class public Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;
.super Lcom/j256/ormlite/db/BaseSqliteDatabaseType;
.source "SqliteAndroidDatabaseType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;-><init>()V

    return-void
.end method


# virtual methods
.method protected appendBooleanType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;->appendShortType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    return-void
.end method

.method protected appendDateType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;->appendStringType(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;I)V

    return-void
.end method

.method public appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x60

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public extractDatabaseTableConfig(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 101
    invoke-static {p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object p1

    return-object p1
.end method

.method public getDataPersister(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;
    .locals 2

    if-nez p1, :cond_0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->getDataPersister(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    sget-object v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-interface {p1}, Lcom/j256/ormlite/field/DataPersister;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 84
    invoke-super {p0, p1, p2}, Lcom/j256/ormlite/db/BaseSqliteDatabaseType;->getDataPersister(Lcom/j256/ormlite/field/DataPersister;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/DataPersister;

    move-result-object p1

    return-object p1

    .line 76
    :cond_1
    instance-of p2, p1, Lcom/j256/ormlite/field/types/TimeStampType;

    if-eqz p2, :cond_2

    .line 77
    invoke-static {}, Lcom/j256/ormlite/field/types/TimeStampStringType;->getSingleton()Lcom/j256/ormlite/field/types/TimeStampStringType;

    move-result-object p1

    return-object p1

    .line 78
    :cond_2
    instance-of p1, p1, Lcom/j256/ormlite/field/types/SqlDateType;

    if-eqz p1, :cond_3

    .line 79
    invoke-static {}, Lcom/j256/ormlite/field/types/SqlDateStringType;->getSingleton()Lcom/j256/ormlite/field/types/SqlDateStringType;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    invoke-static {}, Lcom/j256/ormlite/field/types/DateStringType;->getSingleton()Lcom/j256/ormlite/field/types/DateStringType;

    move-result-object p1

    return-object p1
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "Android SQLite"

    return-object v0
.end method

.method public isBatchUseTransaction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDatabaseUrlThisType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isNestedSavePointsSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadDriver()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
