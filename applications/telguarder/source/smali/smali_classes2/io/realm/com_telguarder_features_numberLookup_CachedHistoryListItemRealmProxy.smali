.class public Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;
.super Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
.source "com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy.java"

# interfaces
.implements Lio/realm/internal/RealmObjectProxy;
.implements Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$ClassNameHelper;,
        Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;
    }
.end annotation


# static fields
.field private static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

.field private proxyState:Lio/realm/ProxyState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/ProxyState<",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    invoke-static {}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;-><init>()V

    .line 103
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->setConstructionFinished()V

    return-void
.end method

.method public static copy(Lio/realm/Realm;Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;Lcom/telguarder/features/numberLookup/CachedHistoryListItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;"
        }
    .end annotation

    .line 669
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    if-eqz p3, :cond_0

    .line 671
    check-cast p3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    return-object p3

    .line 674
    :cond_0
    move-object p3, p2

    check-cast p3, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    .line 676
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 677
    new-instance v1, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v1, v0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 680
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 681
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 682
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 683
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 684
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 685
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 686
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 687
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Integer;)V

    .line 688
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addInteger(JLjava/lang/Long;)V

    .line 689
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, v2, v3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 690
    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->addString(JLjava/lang/String;)V

    .line 694
    invoke-virtual {v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->createNewObject()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 695
    invoke-static {p0, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;

    move-result-object p0

    .line 696
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lio/realm/Realm;Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;Lcom/telguarder/features/numberLookup/CachedHistoryListItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;"
        }
    .end annotation

    .line 650
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

    .line 651
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 652
    iget-wide v1, v0, Lio/realm/BaseRealm;->threadId:J

    iget-wide v3, p0, Lio/realm/Realm;->threadId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 655
    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/Realm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 653
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_1
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 660
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 662
    check-cast v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    return-object v0

    .line 665
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->copy(Lio/realm/Realm;Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;Lcom/telguarder/features/numberLookup/CachedHistoryListItem;ZLjava/util/Map;Ljava/util/Set;)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    move-result-object p0

    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;
    .locals 1

    .line 447
    new-instance v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    invoke-direct {v0, p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/telguarder/features/numberLookup/CachedHistoryListItem;IILjava/util/Map;)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 939
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/RealmObjectProxy$CacheData;

    if-nez p2, :cond_1

    .line 942
    new-instance p2, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-direct {p2}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;-><init>()V

    .line 943
    new-instance v0, Lio/realm/internal/RealmObjectProxy$CacheData;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/RealmObjectProxy$CacheData;-><init>(ILio/realm/RealmModel;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 946
    :cond_1
    iget p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    if-lt p1, p3, :cond_2

    .line 947
    iget-object p0, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    return-object p0

    .line 949
    :cond_2
    iget-object p3, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->object:Lio/realm/RealmModel;

    check-cast p3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 950
    iput p1, p2, Lio/realm/internal/RealmObjectProxy$CacheData;->minDepth:I

    move-object p2, p3

    .line 952
    :goto_0
    move-object p1, p2

    check-cast p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    .line 953
    check-cast p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    .line 954
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    .line 955
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$spamType(Ljava/lang/String;)V

    .line 956
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    .line 957
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    .line 958
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$counter(I)V

    .line 959
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamComment(Ljava/lang/String;)V

    .line 960
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamDate(Ljava/lang/String;)V

    .line 961
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$type(I)V

    .line 962
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$dateTimeInMillis(J)V

    .line 963
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$securityLevel(Ljava/lang/String;)V

    .line 964
    invoke-interface {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$infoPageUrl(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 427
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$Builder;

    const-string v0, "CachedHistoryListItem"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {v6, v0, v1, v2, v1}, Lio/realm/internal/OsObjectSchemaInfo$Builder;-><init>(Ljava/lang/String;ZII)V

    .line 428
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "name"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 429
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "spamType"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 430
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "phoneNumberForDisplaying"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 431
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "calledPhoneNumber"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 432
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "counter"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 433
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "lastSpamComment"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 434
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "lastSpamDate"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 435
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "type"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 436
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "dateTimeInMillis"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 437
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "securityLevel"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 438
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "infoPageUrl"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->addPersistedProperty(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$Builder;

    .line 439
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$Builder;->build()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lio/realm/Realm;Lorg/json/JSONObject;Z)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 462
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lio/realm/Realm;->createObjectInternal(Ljava/lang/Class;ZLjava/util/List;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 464
    move-object p2, p0

    check-cast p2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    const-string v0, "name"

    .line 465
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "spamType"

    .line 472
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 474
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$spamType(Ljava/lang/String;)V

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$spamType(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "phoneNumberForDisplaying"

    .line 479
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    goto :goto_2

    .line 483
    :cond_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string v0, "calledPhoneNumber"

    .line 486
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 487
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 488
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    goto :goto_3

    .line 490
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v0, "counter"

    .line 493
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 494
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 497
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$counter(I)V

    goto :goto_4

    .line 495
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'counter\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    const-string v0, "lastSpamComment"

    .line 500
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 501
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 502
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamComment(Ljava/lang/String;)V

    goto :goto_5

    .line 504
    :cond_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamComment(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const-string v0, "lastSpamDate"

    .line 507
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 508
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 509
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamDate(Ljava/lang/String;)V

    goto :goto_6

    .line 511
    :cond_c
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamDate(Ljava/lang/String;)V

    :cond_d
    :goto_6
    const-string v0, "type"

    .line 514
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 515
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 518
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$type(I)V

    goto :goto_7

    .line 516
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    const-string v0, "dateTimeInMillis"

    .line 521
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 522
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 525
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$dateTimeInMillis(J)V

    goto :goto_8

    .line 523
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'dateTimeInMillis\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_8
    const-string v0, "securityLevel"

    .line 528
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 529
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 530
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$securityLevel(Ljava/lang/String;)V

    goto :goto_9

    .line 532
    :cond_12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$securityLevel(Ljava/lang/String;)V

    :cond_13
    :goto_9
    const-string v0, "infoPageUrl"

    .line 535
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 536
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 537
    invoke-interface {p2, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$infoPageUrl(Ljava/lang/String;)V

    goto :goto_a

    .line 539
    :cond_14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$infoPageUrl(Ljava/lang/String;)V

    :cond_15
    :goto_a
    return-object p0
.end method

.method public static createUsingJsonStream(Lio/realm/Realm;Landroid/util/JsonReader;)Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    new-instance v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;-><init>()V

    .line 550
    move-object v1, v0

    check-cast v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    .line 551
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 552
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 553
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 560
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$name(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "spamType"

    .line 562
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    .line 564
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$spamType(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 567
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$spamType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "phoneNumberForDisplaying"

    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 570
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_4

    .line 571
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 574
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v3, "calledPhoneNumber"

    .line 576
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 577
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_6

    .line 578
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 581
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "counter"

    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 584
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_8

    .line 585
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$counter(I)V

    goto/16 :goto_0

    .line 587
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 588
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'counter\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string v3, "lastSpamComment"

    .line 590
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 591
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_a

    .line 592
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 595
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamComment(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v3, "lastSpamDate"

    .line 597
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 598
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_c

    .line 599
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 602
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$lastSpamDate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "type"

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 605
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_e

    .line 606
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$type(I)V

    goto/16 :goto_0

    .line 608
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 609
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'type\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    const-string v3, "dateTimeInMillis"

    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 612
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_10

    .line 613
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$dateTimeInMillis(J)V

    goto/16 :goto_0

    .line 615
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 616
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'dateTimeInMillis\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    const-string v3, "securityLevel"

    .line 618
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 619
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_12

    .line 620
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$securityLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 623
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$securityLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v3, "infoPageUrl"

    .line 625
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 626
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_14

    .line 627
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$infoPageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 630
    invoke-interface {v1, v4}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmSet$infoPageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 636
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x0

    new-array p1, p1, [Lio/realm/ImportFlag;

    .line 637
    invoke-virtual {p0, v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    return-object p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 443
    sget-object v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "CachedHistoryListItem"

    return-object v0
.end method

.method public static insert(Lio/realm/Realm;Lcom/telguarder/features/numberLookup/CachedHistoryListItem;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 702
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

    .line 703
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 705
    :cond_0
    const-class v1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 707
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 708
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 709
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    check-cast v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 712
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 714
    :cond_1
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 716
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 718
    :cond_2
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 720
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 722
    :cond_3
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 724
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 726
    :cond_4
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 727
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 729
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 731
    :cond_5
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 733
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 735
    :cond_6
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 736
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 737
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 739
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 741
    :cond_7
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 743
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_8
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

    .line 749
    const-class v1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 751
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 753
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 754
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 755
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 758
    :cond_1
    instance-of v4, v3, Lio/realm/internal/RealmObjectProxy;

    if-eqz v4, :cond_2

    invoke-static {v3}, Lio/realm/RealmObject;->isFrozen(Lio/realm/RealmModel;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    check-cast v4, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v4}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v5

    if-eqz v5, :cond_2

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

    if-eqz v5, :cond_2

    .line 759
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

    .line 762
    :cond_2
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 763
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    move-object/from16 v17, v3

    check-cast v17, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 766
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 768
    :cond_3
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 770
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 772
    :cond_4
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 774
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 776
    :cond_5
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 778
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 780
    :cond_6
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 781
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 783
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 785
    :cond_7
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 787
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 789
    :cond_8
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 790
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 791
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 793
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 795
    :cond_9
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 797
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static insertOrUpdate(Lio/realm/Realm;Lcom/telguarder/features/numberLookup/CachedHistoryListItem;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lcom/telguarder/features/numberLookup/CachedHistoryListItem;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 803
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

    .line 804
    invoke-interface {v1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    .line 806
    :cond_0
    const-class v1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v11

    .line 808
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    const-class v3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 809
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v14

    .line 810
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    check-cast v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 813
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 815
    :cond_1
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 817
    :goto_0
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 819
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 821
    :cond_2
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 823
    :goto_1
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 825
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 827
    :cond_3
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 829
    :goto_2
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 831
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 833
    :cond_4
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 835
    :goto_3
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 836
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 838
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 840
    :cond_5
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 842
    :goto_4
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 844
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 846
    :cond_6
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 848
    :goto_5
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 849
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 850
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 852
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 854
    :cond_7
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 856
    :goto_6
    invoke-interface {v0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 858
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 860
    :cond_8
    iget-wide v4, v13, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v14

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_7
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

    .line 866
    const-class v1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 867
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v12

    .line 868
    invoke-virtual/range {p0 .. p0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v3

    const-class v4, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v3, v4}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 870
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 871
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 872
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 875
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

    .line 876
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

    .line 879
    :cond_1
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v15

    .line 880
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    move-object/from16 v17, v3

    check-cast v17, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 883
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 885
    :cond_2
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 887
    :goto_1
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$spamType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 889
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 891
    :cond_3
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 893
    :goto_2
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 895
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 897
    :cond_4
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 899
    :goto_3
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 901
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 903
    :cond_5
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 905
    :goto_4
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$counter()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 906
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 908
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 910
    :cond_6
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 912
    :goto_5
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 914
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 916
    :cond_7
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 918
    :goto_6
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$type()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 919
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$dateTimeInMillis()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 920
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 922
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 924
    :cond_8
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 926
    :goto_7
    invoke-interface/range {v17 .. v17}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 928
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 930
    :cond_9
    iget-wide v5, v14, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v15

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method static newProxyInstance(Lio/realm/BaseRealm;Lio/realm/internal/Row;)Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;
    .locals 7

    .line 642
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 643
    invoke-virtual {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v1

    const-class v2, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {v1, v2}, Lio/realm/RealmSchema;->getColumnInfo(Ljava/lang/Class;)Lio/realm/internal/ColumnInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/BaseRealm$RealmObjectContext;->set(Lio/realm/BaseRealm;Lio/realm/internal/Row;Lio/realm/internal/ColumnInfo;ZLjava/util/List;)V

    .line 644
    new-instance p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;

    invoke-direct {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;-><init>()V

    .line 645
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

    .line 1044
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1045
    :cond_1
    check-cast p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;

    .line 1047
    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    .line 1048
    iget-object v3, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    .line 1049
    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-virtual {v3}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 1051
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 1052
    :cond_3
    invoke-virtual {v2}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/BaseRealm;->isFrozen()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 1053
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

    .line 1057
    :cond_5
    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1058
    iget-object v3, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 1059
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 1061
    :cond_7
    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

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

    .line 1030
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1032
    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1035
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

    .line 1036
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

    .line 108
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Lio/realm/BaseRealm;->objectContext:Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;

    invoke-virtual {v0}, Lio/realm/BaseRealm$ThreadLocalRealmObjectContext;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/BaseRealm$RealmObjectContext;

    .line 112
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getColumnInfo()Lio/realm/internal/ColumnInfo;

    move-result-object v1

    check-cast v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iput-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    .line 113
    new-instance v1, Lio/realm/ProxyState;

    invoke-direct {v1, p0}, Lio/realm/ProxyState;-><init>(Lio/realm/RealmModel;)V

    iput-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    .line 114
    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRealm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRealm$realm(Lio/realm/BaseRealm;)V

    .line 115
    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getRow()Lio/realm/internal/Row;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 116
    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getAcceptDefaultValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/ProxyState;->setAcceptDefaultValue$realm(Z)V

    .line 117
    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/BaseRealm$RealmObjectContext;->getExcludeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/ProxyState;->setExcludeFields$realm(Ljava/util/List;)V

    return-void
.end method

.method public realmGet$calledPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 213
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 214
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$counter()I
    .locals 3

    .line 243
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 244
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$dateTimeInMillis()J
    .locals 3

    .line 347
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 348
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$infoPageUrl()Ljava/lang/String;
    .locals 3

    .line 399
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 400
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lastSpamComment()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 266
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lastSpamDate()Ljava/lang/String;
    .locals 3

    .line 295
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 296
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 124
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$phoneNumberForDisplaying()Ljava/lang/String;
    .locals 3

    .line 183
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 184
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

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

    .line 1025
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    return-object v0
.end method

.method public realmGet$securityLevel()Ljava/lang/String;
    .locals 3

    .line 369
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 370
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$spamType()Ljava/lang/String;
    .locals 3

    .line 153
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 154
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()I
    .locals 3

    .line 325
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 326
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/Row;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmSet$calledPhoneNumber(Ljava/lang/String;)V
    .locals 14

    .line 219
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 225
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 228
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 234
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->calledPhoneNumberColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$counter(I)V
    .locals 9

    .line 249
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 259
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->counterColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$dateTimeInMillis(J)V
    .locals 9

    .line 353
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 358
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 363
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->dateTimeInMillisColKey:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public realmSet$infoPageUrl(Ljava/lang/String;)V
    .locals 14

    .line 405
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 411
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 414
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 420
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 423
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->infoPageUrlColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lastSpamComment(Ljava/lang/String;)V
    .locals 14

    .line 271
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 277
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 280
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 284
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 286
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 289
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamCommentColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lastSpamDate(Ljava/lang/String;)V
    .locals 14

    .line 301
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 307
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 310
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 314
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 316
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 319
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->lastSpamDateColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 14

    .line 129
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 135
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 138
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 144
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 147
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->nameColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V
    .locals 14

    .line 189
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 195
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 198
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 204
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 207
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->phoneNumberForDisplayingColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$securityLevel(Ljava/lang/String;)V
    .locals 14

    .line 375
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 381
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 384
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 390
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 393
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->securityLevelColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$spamType(Ljava/lang/String;)V
    .locals 14

    .line 159
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez p1, :cond_1

    .line 165
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, p1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->setNull(JJZ)V

    return-void

    .line 168
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v8, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->setString(JJLjava/lang/String;Z)V

    return-void

    .line 172
    :cond_2
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    if-nez p1, :cond_3

    .line 174
    iget-object p1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {p1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p1

    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v0, v0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/Row;->setNull(J)V

    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->spamTypeColKey:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/Row;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(I)V
    .locals 9

    .line 331
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->isUnderConstruction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getAcceptDefaultValue$realm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v2, v2, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    invoke-interface {v0}, Lio/realm/internal/Row;->getObjectKey()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->setLong(JJJZ)V

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 341
    iget-object v0, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->proxyState:Lio/realm/ProxyState;

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    iget-object v1, p0, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->columnInfo:Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;

    iget-wide v1, v1, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo;->typeColKey:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lio/realm/internal/Row;->setLong(JJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 972
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 975
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CachedHistoryListItem = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{name:"

    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 979
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{spamType:"

    .line 980
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$spamType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$spamType()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{phoneNumberForDisplaying:"

    .line 984
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{calledPhoneNumber:"

    .line 988
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{counter:"

    .line 992
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$counter()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lastSpamComment:"

    .line 996
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lastSpamDate:"

    .line 1000
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{type:"

    .line 1004
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$type()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{dateTimeInMillis:"

    .line 1008
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$dateTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{securityLevel:"

    .line 1012
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{infoPageUrl:"

    .line 1016
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 1019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
