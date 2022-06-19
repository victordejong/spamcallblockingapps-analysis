.class public Lcom/telguarder/features/numberLookup/PhoneCallManager;
.super Ljava/lang/Object;
.source "PhoneCallManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/numberLookup/PhoneCallManager;


# instance fields
.field private mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-direct {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/PhoneCallManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneCallManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneCallManager;

    invoke-direct {v1, p0}, Lcom/telguarder/features/numberLookup/PhoneCallManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneCallManager;

    .line 33
    :cond_0
    sget-object p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPhoneCallForPhoneNumberAndActorType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 5

    const/4 v0, 0x0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    const-string v2, "dateTimeInMillis"

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 69
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v4, "calledPhoneNumber"

    .line 70
    invoke-static {p1, p2, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    const-string p2, "actorType"

    .line 72
    invoke-virtual {p1, p2, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 73
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clearPhoneCallCache()V
    .locals 1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    iget-object v2, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const-string v3, "calledPhoneNumber"

    invoke-virtual {v1, v3, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    const-string v2, "actorType"

    .line 126
    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 127
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    :cond_0
    return-void
.end method

.method public deletePhoneNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPersonPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getCompanyPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 146
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public getCallsCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompanyPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 85
    sget-object v0, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/ActorType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPhoneCallForPhoneNumberAndActorType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    return-object p1
.end method

.method public getPersonPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 59
    sget-object v0, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/ActorType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPhoneCallForPhoneNumberAndActorType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    return-object p1
.end method

.method public getPhoneCallsForPhoneNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "dateTimeInMillis"

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 94
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "calledPhoneNumber"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setWhere(Lcom/j256/ormlite/stmt/Where;)V

    .line 95
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public saverOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iput-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    .line 107
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 109
    iget p1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    iput p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    .line 111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    .line 112
    invoke-virtual {p0, p3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneCallFromCache(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 113
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneCallManager;->mSqliteHelper:Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneCallOrmLiteHelper;->getCallDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 114
    iget p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method
