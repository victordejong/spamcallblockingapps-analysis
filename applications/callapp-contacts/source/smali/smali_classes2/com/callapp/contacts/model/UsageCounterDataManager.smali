.class public Lcom/callapp/contacts/model/UsageCounterDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCounterValue(Lcom/callapp/contacts/model/UsageCounter;)J
    .locals 4

    .line 22
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/UsageCounterData_;->socialNetworkId:Lio/objectbox/g;

    iget v2, p0, Lcom/callapp/contacts/model/UsageCounter;->id:I

    int-to-long v2, v2

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/UsageCounterData_;->netCallType:Lio/objectbox/g;

    iget p0, p0, Lcom/callapp/contacts/model/UsageCounter;->callType:I

    int-to-long v2, p0

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/UsageCounterData;

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/callapp/contacts/model/UsageCounterData;->getCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUsageCounters()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/model/UsageCounter;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/callapp/contacts/model/UsageCounter;->values()[Lcom/callapp/contacts/model/UsageCounter;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 39
    new-instance v6, Landroid/util/Pair;

    iget v7, v5, Lcom/callapp/contacts/model/UsageCounter;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v5, Lcom/callapp/contacts/model/UsageCounter;->callType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/model/UsageCounterDataManager$1;

    invoke-direct {v3, v1, v2}, Lcom/callapp/contacts/model/UsageCounterDataManager$1;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v1
.end method

.method public static incrementCounter(Lcom/callapp/contacts/model/UsageCounter;I)J
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-static {p0, v0, p1}, Lcom/callapp/contacts/model/UsageCounterDataManager;->incrementCounter(Lcom/callapp/contacts/model/UsageCounter;II)J

    move-result-wide p0

    return-wide p0
.end method

.method private static incrementCounter(Lcom/callapp/contacts/model/UsageCounter;II)J
    .locals 9

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    int-to-long v3, p1

    .line 77
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object v5, Lcom/callapp/contacts/model/UsageCounterData_;->socialNetworkId:Lio/objectbox/g;

    iget v6, p0, Lcom/callapp/contacts/model/UsageCounter;->id:I

    int-to-long v6, v6

    .line 78
    invoke-virtual {p1, v5, v6, v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    sget-object v5, Lcom/callapp/contacts/model/UsageCounterData_;->netCallType:Lio/objectbox/g;

    iget v6, p0, Lcom/callapp/contacts/model/UsageCounter;->callType:I

    int-to-long v6, v6

    .line 79
    invoke-virtual {p1, v5, v6, v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/UsageCounterData;

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/callapp/contacts/model/UsageCounterData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/UsageCounterData;-><init>()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getDate()J

    move-result-wide v5

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v7, p2

    add-long/2addr v5, v7

    cmp-long p2, v5, v1

    if-ltz p2, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getCount()J

    move-result-wide v1

    add-long/2addr v3, v1

    .line 87
    invoke-virtual {p1}, Lcom/callapp/contacts/model/UsageCounterData;->getDate()J

    move-result-wide v1

    .line 91
    :cond_1
    :goto_0
    iget p2, p0, Lcom/callapp/contacts/model/UsageCounter;->id:I

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/UsageCounterData;->setSocialNetworkId(I)V

    .line 92
    iget p0, p0, Lcom/callapp/contacts/model/UsageCounter;->callType:I

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/model/UsageCounterData;->setNetCallType(I)V

    .line 93
    invoke-virtual {p1, v3, v4}, Lcom/callapp/contacts/model/UsageCounterData;->setCount(J)V

    .line 94
    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/model/UsageCounterData;->setDate(J)V

    .line 96
    invoke-virtual {v0, p1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-wide v3
.end method
