.class public final Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;,
        Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;",
        "",
        "()V",
        "Companion",
        "NotificationWhoViewedMyProfile",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

.field private static b:I

.field private static final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final d:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "CallAppApplication.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d:Lio/objectbox/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 30
    sget v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->b:I

    return v0
.end method

.method public static final a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "period"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8229
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "CallAppApplication.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 8230
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "getStartEndDate(period).first"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v5, "getStartEndDate(period).second"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/TYPE;->VIEWME:Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    const-string v1, "box.query().between(Prof\u2026PE.VIEWME.value.toLong())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7205
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    const/4 v2, 0x0

    .line 8272
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 7205
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "getQuery(period).order(P\u2026astViewed).build().find()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7206
    check-cast v0, Ljava/lang/Iterable;

    .line 7259
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 7260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7261
    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 7206
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getLastViewed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 7263
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 7262
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 7266
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7262
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 7270
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7207
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 7209
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "keysIter.next()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/util/Pair;

    .line 7211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 7213
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 7216
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v10, "key.second"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    .line 7217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/util/Pair;

    goto :goto_2

    .line 7220
    :cond_3
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 7221
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_2

    .line 7222
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7224
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    const-string v0, "Pair.create(total, map)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic a(I)V
    .locals 0

    .line 30
    sput p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->b:I

    return-void
.end method

.method public static final a(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    const-string v1, "viewedPhoneNumber"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entryPoint"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2030
    :try_start_0
    sget-object v14, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1062
    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3030
    sget-object v15, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d:Lio/objectbox/a;

    .line 1063
    invoke-virtual {v15}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->phoneNumber:Lio/objectbox/g;

    invoke-virtual {v1, v2, v0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->type:Lio/objectbox/g;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/TYPE;->MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;->lastViewed:Lio/objectbox/g;

    const/4 v3, 0x1

    .line 3283
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 1063
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 1064
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    const-string v4, "UserProfileManager.get()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFullName()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "name"

    if-nez v1, :cond_0

    .line 1066
    :try_start_1
    new-instance v11, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    const-wide/16 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v10, Lcom/callapp/contacts/model/objectbox/TYPE;->MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v16, 0x21

    const/16 v17, 0x0

    move-object v1, v11

    move-wide v2, v3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v8, v12

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v16, v14

    move-object v14, v12

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;-><init>(JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;JLjava/lang/String;ILcom/callapp/contacts/model/objectbox/TYPE;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    .line 1067
    invoke-virtual {v15, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 1068
    invoke-static {v0, v14, v13}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v14

    move-object v14, v12

    .line 1070
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getLastViewed()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    .line 1071
    invoke-static {v14, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v14, v13}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->setLastViewed(J)V

    .line 1074
    :cond_1
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getCounter()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->setCounter(I)V

    .line 1075
    invoke-virtual {v15, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 7030
    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1078
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic c()Lio/objectbox/a;
    .locals 1

    .line 30
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d:Lio/objectbox/a;

    return-object v0
.end method

.method public static final d()V
    .locals 2

    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    .line 1048
    check-cast v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->setViewerNotificationCount(I)V

    return-void
.end method

.method public static final e()V
    .locals 2

    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    .line 1053
    check-cast v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->getViewerNotificationCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->setViewerNotificationCount(I)V

    return-void
.end method

.method public static final f()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->a()V

    return-void
.end method

.method public static final g()J
    .locals 2

    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getAllViewers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->getAllViewers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewerNotificationCount()I
    .locals 1

    sget v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->b:I

    return v0
.end method
