.class public Lcom/callapp/contacts/manager/cache/CacheDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/cache/FileStore;Ljava/lang/String;)Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/manager/cache/FileStore;",
            "Ljava/lang/String;",
            ")",
            "Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject<",
            "TT;>;"
        }
    .end annotation

    .line 36
    const-class v0, Lcom/callapp/contacts/manager/cache/CacheDataManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read from db:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CacheData_;->file:Lio/objectbox/g;

    invoke-virtual {v1, v2, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CacheData;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 42
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getValueType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 44
    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getStringVal()Ljava/lang/String;

    move-result-object v2

    .line 46
    const-class p0, Ljava/lang/String;

    goto/16 :goto_2

    .line 47
    :cond_0
    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getBooleanVal()Ljava/lang/Boolean;

    move-result-object v2

    .line 49
    const-class p0, Ljava/lang/Boolean;

    goto :goto_2

    .line 50
    :cond_1
    const-class v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getLongVal()Ljava/lang/Long;

    move-result-object v2

    .line 52
    const-class p0, Ljava/lang/Long;

    goto :goto_2

    .line 53
    :cond_2
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getIntegerVal()Ljava/lang/Integer;

    move-result-object v2

    .line 55
    const-class p0, Ljava/lang/Integer;

    goto :goto_2

    .line 58
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getBytesVal()[B

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/callapp/contacts/manager/cache/FileStore;->a(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v3, v2

    .line 62
    :goto_0
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    move-object p0, v2

    :goto_1
    if-nez p0, :cond_4

    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Removing fileName from db: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    new-instance p0, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;-><init>(Ljava/lang/Object;Ljava/util/Date;J)V

    return-object p0

    :cond_4
    move-object v2, p0

    move-object p0, v3

    goto :goto_2

    :cond_5
    move-object p0, v2

    .line 73
    :goto_2
    new-instance p1, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getExpires()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p0

    int-to-long v3, p0

    invoke-direct {p1, v2, v0, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager$MemCachedObject;-><init>(Ljava/lang/Object;Ljava/util/Date;J)V

    return-object p1

    :cond_6
    return-object v2
.end method

.method public static a()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CacheData_;->expires:Lio/objectbox/g;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/util/Date;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/cache/CacheDataManager$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/manager/cache/CacheDataManager$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/objectbox/query/Query;->a(Lio/objectbox/query/c;)V

    return-object v0
.end method

.method static a(Lcom/callapp/contacts/manager/cache/FileStore;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/manager/cache/FileStore;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/callapp/contacts/manager/cache/CacheDataManager;

    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CacheData_;->file:Lio/objectbox/g;

    invoke-virtual {v2, v3, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/objectbox/CacheData;-><init>()V

    .line 86
    :cond_0
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->setFile(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, p2}, Lcom/callapp/contacts/model/objectbox/CacheData;->setExpires(Ljava/util/Date;)V

    .line 88
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/model/objectbox/CacheData;->setValueType(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    .line 91
    const-class p2, Ljava/lang/Long;

    if-ne p3, p2, :cond_1

    .line 92
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {v2, p4}, Lcom/callapp/contacts/model/objectbox/CacheData;->setLongVal(Ljava/lang/Long;)V

    goto :goto_0

    .line 93
    :cond_1
    const-class p2, Ljava/lang/Boolean;

    if-ne p3, p2, :cond_2

    .line 94
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {v2, p4}, Lcom/callapp/contacts/model/objectbox/CacheData;->setBooleanVal(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 95
    :cond_2
    const-class p2, Ljava/lang/String;

    if-ne p3, p2, :cond_3

    .line 96
    check-cast p4, Ljava/lang/String;

    invoke-virtual {v2, p4}, Lcom/callapp/contacts/model/objectbox/CacheData;->setStringVal(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    const-class p2, Ljava/lang/Integer;

    if-ne p3, p2, :cond_4

    .line 98
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {v2, p4}, Lcom/callapp/contacts/model/objectbox/CacheData;->setIntegerVal(Ljava/lang/Integer;)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/model/objectbox/CacheData;->setValueType(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1, p4}, Lcom/callapp/contacts/manager/cache/FileStore;->a(Ljava/lang/String;Ljava/lang/Object;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/callapp/contacts/model/objectbox/CacheData;->setBytesVal([B)V

    .line 106
    :cond_5
    :goto_0
    invoke-virtual {v1, v2}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    const-string p0, "Write to db: "

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lio/objectbox/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 109
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setExpires$eef1da(Ljava/lang/String;)V
    .locals 3

    .line 1119
    const-class v0, Lcom/callapp/contacts/manager/cache/CacheDataManager;

    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 1120
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CacheData_;->file:Lio/objectbox/g;

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->f()J

    const-string v1, "Delete from db:"

    .line 1121
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lio/objectbox/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1123
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
