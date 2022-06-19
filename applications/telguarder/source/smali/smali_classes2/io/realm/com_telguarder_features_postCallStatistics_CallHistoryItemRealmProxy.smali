.class public Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;
.super Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
.source "com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$ClassNameHelper;,
        Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;-><init>()V

    .line 82
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;Lcom/telguarder/features/postCallStatistics/CallHistoryItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;"
        }
    .end annotation

    .line 333
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 335
    check-cast p3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    return-object p3

    .line 338
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    .line 340
    const-class v0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 341
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 344
    iget-wide v2, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 345
    iget-wide v2, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 346
    iget-wide v2, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 347
    iget-wide v2, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 351
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 352
    invoke-static {p0, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;

    move-result-object p0

    .line 353
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;Lcom/telguarder/features/postCallStatistics/CallHistoryItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;"
        }
    .end annotation

    .line 314
    instance-of v0, p2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 316
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 319
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 317
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 324
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 326
    check-cast v0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    return-object v0

    .line 329
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;Lcom/telguarder/features/postCallStatistics/CallHistoryItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;
    .locals 1

    .line 209
    new-instance v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/telguarder/features/postCallStatistics/CallHistoryItem;IILjava/util/Map;)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 459
    new-instance p2, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-direct {p2}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;-><init>()V

    .line 460
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 464
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    return-object p0

    .line 466
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 467
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 469
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    .line 470
    check-cast p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    .line 471
    invoke-interface {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    .line 472
    invoke-interface {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$date(J)V

    .line 473
    invoke-interface {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$type(I)V

    .line 474
    invoke-interface {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result p0

    invoke-interface {p1, p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$duration(I)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 196
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "CallHistoryItem"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v6, v0, v1, v2, v1}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;ZII)V

    .line 197
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "number"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 198
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "date"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 199
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "type"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 200
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "duration"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 201
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 224
    const-class v0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 226
    move-object p2, p0

    check-cast p2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    const-string v0, "number"

    .line 227
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 229
    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "date"

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 238
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$date(J)V

    goto :goto_1

    .line 236
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'date\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "type"

    .line 241
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$type(I)V

    goto :goto_2

    .line 243
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string v0, "duration"

    .line 248
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 252
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$duration(I)V

    goto :goto_3

    .line 250
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'duration\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;-><init>()V

    .line 263
    move-object v1, v0

    check-cast v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    .line 264
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 265
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 266
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "number"

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    const/4 v2, 0x0

    .line 273
    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$number(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "date"

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$date(J)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 280
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'date\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v3, "type"

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 283
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_4

    .line 284
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$type(I)V

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 287
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v3, "duration"

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_6

    .line 291
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmSet$duration(I)V

    goto/16 :goto_0

    .line 293
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 294
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'duration\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 300
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 301
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 205
    sget-object v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallHistoryItem"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/telguarder/features/postCallStatistics/CallHistoryItem;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 359
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 362
    :cond_0
    const-class v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 364
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 365
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 366
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    check-cast v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 369
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 371
    :cond_1
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 372
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 373
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-wide v14
.end method

.method public static insert(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 378
    const-class v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 380
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 382
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 384
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    invoke-static {v3}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 391
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 392
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    move-object/from16 v17, v3

    check-cast v17, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 395
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 397
    :cond_2
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 398
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 399
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/telguarder/features/postCallStatistics/CallHistoryItem;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/telguarder/features/postCallStatistics/CallHistoryItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 404
    instance-of v1, v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 407
    :cond_0
    const-class v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 409
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 410
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 411
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    check-cast v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 414
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 416
    :cond_1
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 418
    :goto_0
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 419
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 420
    iget-wide v4, v13, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-wide v14
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Iterator<",
            "+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 425
    const-class v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 427
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 429
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 431
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_1

    invoke-static {v3}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 439
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v17, v3

    check-cast v17, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$number()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 442
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 444
    :cond_2
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 446
    :goto_1
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$date()J

    move-result-wide v9

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 447
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 448
    iget-wide v5, v14, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;->realmGet$duration()I

    move-result v3

    int-to-long v9, v3

    move-wide v3, v12

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;
    .locals 7

    .line 306
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 307
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 308
    new-instance p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;

    invoke-direct {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;-><init>()V

    .line 309
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->clear()V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 527
    :cond_1
    check-cast p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;

    .line 529
    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 530
    iget-object v3, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 531
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 534
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 535
    :cond_4
    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v2

    iget-object v3, v3, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$VersionID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$VersionID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 539
    :cond_5
    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 540
    iget-object v3, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 543
    :cond_7
    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 512
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 518
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 87
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 91
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iput-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    .line 92
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 93
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 94
    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 95
    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 96
    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$date()J
    .locals 3

    .line 132
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 133
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$duration()I
    .locals 3

    .line 176
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 177
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$number()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 103
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lio/realm/ProxyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/ProxyState<",
            "*>;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 3

    .line 154
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 155
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$date(J)V
    .locals 9

    .line 138
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 148
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->dateColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$duration(I)V
    .locals 9

    .line 182
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 192
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->durationColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$number(Ljava/lang/String;)V
    .locals 14

    .line 108
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 114
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 117
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 123
    iget-object p1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 126
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->numberColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(I)V
    .locals 9

    .line 160
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 170
    iget-object v0, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy$CallHistoryItemColumnInfo;->typeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 482
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallHistoryItem = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{number:"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->realmGet$number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->realmGet$number()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{date:"

    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->realmGet$date()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{type:"

    .line 494
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->realmGet$type()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{duration:"

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxy;->realmGet$duration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
