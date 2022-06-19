.class public final Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\tJ&\u0010\r\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\u0008\u001a\u00020\tJ&\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u00040\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00142\u0006\u0010\u0008\u001a\u00020\tJ*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\u0016j\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0007`\u00172\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;",
        "",
        "()V",
        "getAllCallsByDayType",
        "",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
        "Landroid/util/Pair;",
        "",
        "datePeriod",
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
        "getAllNumberOfCallsByType",
        "getDataForCallAppForYouCardIdentification",
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;",
        "getDataForUnansweredCard",
        "",
        "getDataMostCallsCard",
        "getLongestCallByPhoneNumber",
        "",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;",
        "getQuery",
        "Lio/objectbox/query/QueryBuilder;",
        "getTotalDurationByPhoneNumber",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "datePeriod"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion;->c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {p0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {p0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    const-string v1, "getQuery(datePeriod).equ\u2026isExclude).build().find()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    check-cast p0, Ljava/lang/Iterable;

    .line 209
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 210
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 211
    move-object v5, v3

    check-cast v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 49
    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 212
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 216
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 220
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 224
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 225
    check-cast v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 51
    invoke-static {v6, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v6

    long-to-int v7, v6

    add-int/2addr v5, v7

    goto :goto_2

    :cond_3
    if-lez v5, :cond_2

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_4
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/a/ai;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 228
    new-instance v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion$getTotalDurationByPhoneNumber$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManagerKotlin$Companion$getTotalDurationByPhoneNumber$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/4 v0, 0x3

    .line 56
    invoke-static {p0, v0}, Lkotlin/a/n;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 229
    invoke-static {p0, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/a/ai;->a(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/f/d;->c(II)I

    move-result v0

    .line 230
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 231
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 232
    check-cast v0, Lkotlin/n;

    .line 1027
    iget-object v2, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 1028
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 58
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 230
    :cond_5
    check-cast v1, Ljava/util/LinkedHashMap;

    return-object v1
.end method

.method public static b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;
    .locals 9

    const-string v0, "datePeriod"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 154
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "CallAppApplication.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 156
    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->date:Lio/objectbox/g;

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "AnalyticsDataManager.get\u2026e(date, datePeriod).first"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v0, "AnalyticsDataManager.get\u2026(date, datePeriod).second"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 161
    :goto_1
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    const-string v0, "builder.build().find()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    check-cast p0, Ljava/lang/Iterable;

    .line 306
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 307
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 308
    move-object v2, v1

    check-cast v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    const-string v3, "it"

    .line 163
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 309
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 313
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 317
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 170
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 172
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    const-string v8, "analyticsCallData"

    .line 173
    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isIdentified()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v3, v6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-lez v2, :cond_8

    int-to-float p0, v2

    div-float/2addr v3, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v3, p0

    .line 187
    :cond_8
    new-instance p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;

    int-to-long v1, v2

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;-><init>(JIF)V

    return-object p0
.end method

.method public static c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lio/objectbox/query/QueryBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;",
            ">;"
        }
    .end annotation

    const-string v0, "datePeriod"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "CallAppApplication.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 199
    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    goto :goto_1

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->date:Lio/objectbox/g;

    invoke-static {v1, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "AnalyticsDataManager.get\u2026e(date, datePeriod).first"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v1, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "AnalyticsDataManager.get\u2026(date, datePeriod).second"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    :goto_1
    const-string v0, "builder"

    .line 205
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
