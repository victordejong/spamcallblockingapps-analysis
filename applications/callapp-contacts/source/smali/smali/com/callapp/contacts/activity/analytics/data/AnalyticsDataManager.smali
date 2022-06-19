.class public Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;,
        Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;
    }
.end annotation


# static fields
.field private static a:I = 0x3

.field private static b:J = 0xaL


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0x17

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x3b

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    sget-object v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x7

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    .line 147
    :goto_0
    sget-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const/4 v2, 0x5

    if-ne p1, v1, :cond_1

    neg-int p1, p0

    .line 148
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    neg-int p0, p0

    .line 151
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;
    .locals 8

    .line 541
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 17530
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 17531
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 17532
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isIncognito:Lio/objectbox/g;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->phoneAsGlobal:Lio/objectbox/g;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v0, v1, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isExclude:Lio/objectbox/g;

    invoke-virtual {v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->duration:Lio/objectbox/g;

    const/4 v2, 0x1

    .line 18283
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 17534
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 542
    new-instance v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, v5, p0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;-><init>(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 544
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 545
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 546
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    .line 547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sget v6, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a:I

    if-lt v5, v6, :cond_8

    sget-wide v5, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->b:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 548
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->setShowData(Z)V

    long-to-float v3, v3

    .line 549
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->setLongestCall(F)V

    .line 550
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 551
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 552
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDate()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 553
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xb

    .line 554
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 18601
    div-int/lit8 v5, v5, 0x2

    .line 18603
    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 18604
    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v2

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    .line 18609
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19160
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->k:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->k:I

    .line 557
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v5

    .line 20114
    iget v7, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->n:F

    long-to-float v5, v5

    add-float/2addr v7, v5

    iput v7, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->n:F

    .line 559
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-eq v5, v6, :cond_4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v5, v6, :cond_1

    goto :goto_3

    .line 24082
    :cond_1
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->f:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->f:I

    .line 575
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    if-ne v5, v6, :cond_2

    .line 25074
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->d:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->d:I

    goto :goto_2

    .line 25078
    :cond_2
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->c:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->c:I

    .line 580
    :goto_2
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v5, v6, :cond_3

    .line 25098
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->h:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->h:I

    .line 582
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v4

    .line 26094
    iget v6, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->l:F

    long-to-float v4, v4

    add-float/2addr v6, v4

    iput v6, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->l:F

    goto/16 :goto_0

    .line 26110
    :cond_3
    iget v4, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->j:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->j:I

    goto/16 :goto_0

    .line 21086
    :cond_4
    :goto_3
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->e:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->e:I

    .line 561
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    if-ne v5, v6, :cond_5

    .line 22066
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->b:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->b:I

    goto :goto_4

    .line 22070
    :cond_5
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->a:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->a:I

    .line 567
    :goto_4
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v5, v6, :cond_6

    .line 22102
    iget v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->g:I

    add-int/2addr v5, v2

    iput v5, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->g:I

    .line 569
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v4

    .line 23090
    iget v6, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->m:F

    long-to-float v4, v4

    add-float/2addr v6, v4

    iput v6, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->m:F

    goto/16 :goto_0

    .line 23106
    :cond_6
    iget v4, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->i:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->i:I

    goto/16 :goto_0

    .line 588
    :cond_7
    invoke-static {p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->setTimeSlotData(Ljava/lang/String;)V

    .line 589
    sget-object p0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {p0, v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object p0

    .line 590
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 591
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->setHasVideo(Z)V

    :cond_8
    return-object v1
.end method

.method private static a(Landroid/util/SparseArray;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 617
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 618
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v3, :cond_0

    move v2, v4

    move v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "00:00 - 01:59"

    return-object p0

    :cond_2
    const/4 p0, 0x1

    if-ne v2, p0, :cond_3

    const-string p0, "02:00 - 03:59"

    return-object p0

    :cond_3
    const/4 p0, 0x2

    if-ne v2, p0, :cond_4

    const-string p0, "04:00 - 05:59"

    return-object p0

    :cond_4
    const/4 p0, 0x3

    if-ne v2, p0, :cond_5

    const-string p0, "06:00 - 07:59"

    return-object p0

    :cond_5
    const/4 p0, 0x4

    if-ne v2, p0, :cond_6

    const-string p0, "08:00 - 09:59"

    return-object p0

    :cond_6
    const/4 p0, 0x5

    if-ne v2, p0, :cond_7

    const-string p0, "10:00 - 11:59"

    return-object p0

    :cond_7
    const/4 p0, 0x6

    if-ne v2, p0, :cond_8

    const-string p0, "12:00 - 13:59"

    return-object p0

    :cond_8
    const/4 p0, 0x7

    if-ne v2, p0, :cond_9

    const-string p0, "14:00 - 15:59"

    return-object p0

    :cond_9
    const/16 p0, 0x8

    if-ne v2, p0, :cond_a

    const-string p0, "16:00 - 17:59"

    return-object p0

    :cond_a
    const/16 p0, 0x9

    if-ne v2, p0, :cond_b

    const-string p0, "18:00 - 19:59"

    return-object p0

    :cond_b
    const/16 p0, 0xa

    if-ne v2, p0, :cond_c

    const-string p0, "20:00 - 21:59"

    return-object p0

    :cond_c
    const-string p0, "22:00 - 23:59"

    return-object p0
.end method

.method private static a([ILcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 164
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object p1

    .line 165
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 166
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne p0, v0, :cond_1

    .line 167
    :cond_0
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->date:Lio/objectbox/g;

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 172
    :cond_1
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
            ")",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
            "Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3179
    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a([ILcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/List;

    move-result-object p0

    .line 3180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 3182
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3183
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne v2, v3, :cond_0

    .line 3184
    :cond_1
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    goto :goto_0

    .line 3189
    :cond_2
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-ne v2, v3, :cond_0

    .line 3190
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->setSimId(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    goto :goto_0

    .line 252
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 254
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    if-nez v2, :cond_5

    .line 256
    new-instance v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;-><init>(IIIIFFLcom/callapp/contacts/manager/sim/SimManager$SimId;FI)V

    .line 257
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_5
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v3, v4, :cond_6

    .line 4067
    iget v3, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->b:I

    .line 262
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    .line 5063
    iget v5, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->e:F

    long-to-float v3, v3

    add-float/2addr v5, v3

    iput v5, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->e:F

    .line 263
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a(J)V

    .line 264
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a()V

    goto :goto_1

    .line 265
    :cond_6
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v3, v4, :cond_7

    .line 5071
    iget v3, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a:I

    .line 267
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    .line 6059
    iget v5, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->f:F

    long-to-float v3, v3

    add-float/2addr v5, v3

    iput v5, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->f:F

    .line 268
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a(J)V

    .line 269
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a()V

    goto :goto_1

    .line 270
    :cond_7
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v3, v4, :cond_8

    .line 6075
    iget v1, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->c:I

    .line 272
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a()V

    goto/16 :goto_1

    .line 273
    :cond_8
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v1, v3, :cond_4

    .line 6079
    iget v1, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->d:I

    .line 275
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a()V

    goto/16 :goto_1

    :cond_9
    return-object v0
.end method

.method public static a()V
    .locals 2

    .line 233
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method

.method public static a(JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/framework/phone/Phone;JZZZZZZZZ)V
    .locals 19

    move-wide/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    .line 82
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    move-object v0, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;-><init>(JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/framework/phone/Phone;JZZZZZZZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/call/CallData;J)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;-><init>(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;J)V

    .line 132
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Z)V
    .locals 3

    .line 515
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 517
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->phoneAsGlobal:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 518
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 519
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->setExclude(Z)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static b(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;
    .locals 12

    .line 11385
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 11387
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 11388
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    .line 11389
    sget-object v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v0, v1, :cond_1

    .line 11390
    :cond_0
    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v0

    .line 11391
    sget-object v3, Lcom/callapp/contacts/model/objectbox/BlockedNumberData_;->when:Lio/objectbox/g;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    .line 11394
    :cond_1
    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 11398
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 11400
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/model/objectbox/SpamData;

    invoke-virtual {v2, v3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    .line 11401
    invoke-virtual {v2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    .line 11402
    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v1, v2, :cond_3

    .line 11403
    :cond_2
    invoke-static {v1, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object v1

    .line 11404
    sget-object v4, Lcom/callapp/contacts/model/objectbox/SpamData_;->when:Lio/objectbox/g;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    .line 11407
    :cond_3
    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 12371
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 12373
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 12375
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isBlock:Lio/objectbox/g;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->isSpam:Lio/objectbox/g;

    invoke-virtual {v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v6

    .line 12376
    sget-object v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v2, v3, :cond_5

    .line 12377
    :cond_4
    invoke-static {v2, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Landroid/util/Pair;

    move-result-object p0

    .line 12378
    sget-object v7, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData_;->date:Lio/objectbox/g;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;

    move-result-object v6

    .line 12381
    :cond_5
    invoke-virtual {v6}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 358
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 359
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isBlock()Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 362
    :cond_7
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_8
    new-instance p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/BlockSpamItem;-><init>(II)V

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 237
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 2039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method

.method public static c(Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;
    .locals 8

    const/4 v0, 0x0

    .line 414
    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a([ILcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;)Ljava/util/List;

    move-result-object p0

    .line 415
    new-instance v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;-><init>(IIIIII)V

    .line 416
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    .line 417
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getCallType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 14061
    :cond_0
    iget v1, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->f:I

    .line 426
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    if-ne v0, v1, :cond_1

    .line 15053
    iget v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->d:I

    goto :goto_0

    .line 15057
    :cond_1
    iget v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->c:I

    goto :goto_0

    .line 13065
    :cond_2
    :goto_1
    iget v1, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->e:I

    .line 419
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;->getDayType()Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    if-ne v0, v1, :cond_3

    .line 14045
    iget v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->b:I

    goto :goto_0

    .line 14049
    :cond_3
    iget v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->a:I

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method public static c()V
    .locals 2

    .line 241
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gF:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 3039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method

.method public static d()V
    .locals 26

    .line 437
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v0

    .line 438
    new-instance v1, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    .line 440
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 441
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 446
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 447
    iget-object v4, v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    iget-wide v5, v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    .line 449
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v7

    if-eq v5, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 450
    :goto_0
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v7

    .line 451
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v24

    .line 452
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v25

    .line 453
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 457
    :goto_1
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 458
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallType()I

    move-result v9

    .line 459
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v9}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getCallType(I)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    move-result-object v12

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDate()Ljava/util/Date;

    move-result-object v9

    .line 15474
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 15475
    invoke-virtual {v13, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v9, 0xb

    .line 15476
    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v13, 0x5

    if-lt v9, v13, :cond_3

    const/16 v13, 0x13

    if-gt v9, v13, :cond_3

    .line 15478
    sget-object v9, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->DAY:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    goto :goto_3

    .line 15480
    :cond_3
    sget-object v9, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    :goto_3
    move-object v13, v9

    .line 459
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v14

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v15

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDuration()J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v23

    move-wide v8, v10

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-wide/from16 v14, v16

    move/from16 v16, v7

    move/from16 v17, v18

    move/from16 v18, v24

    move/from16 v19, v25

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-static/range {v8 .. v23}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/framework/phone/Phone;JZZZZZZZZ)V

    goto :goto_2

    .line 464
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 465
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 16280
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v2

    long-to-int v0, v2

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 466
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 17280
    invoke-virtual {v0}, Lio/objectbox/a;->b()J

    move-result-wide v1

    .line 468
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/callapp/contacts/model/objectbox/UserCorrectedData_;->userCorrectedType:Lio/objectbox/g;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->e()J

    move-result-wide v3

    .line 469
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gF:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static e()V
    .locals 6

    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x23

    .line 499
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 500
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 501
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    invoke-virtual {v2, v3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    .line 502
    invoke-virtual {v2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v3

    .line 503
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;

    .line 504
    invoke-virtual {v5, v0, v1}, Lcom/callapp/contacts/model/objectbox/BlockedNumberData;->setWhen(J)V

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v2, v3}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static f()V
    .locals 2

    .line 653
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    return-void
.end method

.method private static getCallType(I)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 486
    sget-object p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 488
    sget-object p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object p0

    :cond_1
    const/16 v0, 0x28

    if-ne p0, v0, :cond_2

    .line 490
    sget-object p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object p0

    .line 492
    :cond_2
    sget-object p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object p0
.end method

.method public static getDataForCallAppPlusCard()Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;
    .locals 4

    .line 286
    new-instance v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;-><init>()V

    .line 287
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 290
    sget-object v3, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$2;->a:[I

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 11071
    :pswitch_0
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->f:I

    goto :goto_0

    .line 10079
    :pswitch_1
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->h:I

    goto :goto_0

    .line 10075
    :pswitch_2
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->g:I

    goto :goto_0

    .line 9083
    :pswitch_3
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->i:I

    goto :goto_0

    .line 9055
    :pswitch_4
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->d:I

    goto :goto_0

    .line 9051
    :pswitch_5
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->c:I

    goto :goto_0

    .line 8063
    :pswitch_6
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->e:I

    goto :goto_0

    .line 8059
    :pswitch_7
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->b:I

    goto :goto_0

    .line 7067
    :pswitch_8
    iget v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/callapp/contacts/activity/analytics/data/items/CallAppPlusIdentifiedCardItem;->a:I

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNumberOfContactConfirm()I
    .locals 1

    .line 201
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gD:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getNumberOfProfilePhotoChecked()I
    .locals 1

    .line 229
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gF:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getNumberOfSpammersReport()I
    .locals 1

    .line 225
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUserBadgeContribution()I
    .locals 2

    .line 205
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfContactConfirm()I

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfSpammersReport()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfProfilePhotoChecked()I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-ge v0, v1, :cond_0

    const v0, 0x7f0803ab

    return v0

    .line 208
    :cond_0
    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-lt v0, v1, :cond_1

    const v0, 0x7f0804c5

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getUserBadgeContributionForSlideMenu()I
    .locals 2

    .line 215
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfContactConfirm()I

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfSpammersReport()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getNumberOfProfilePhotoChecked()I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->ADVANCED:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-ge v0, v1, :cond_0

    const v0, 0x7f0803ac

    return v0

    .line 218
    :cond_0
    sget v1, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->MASTER:I

    if-lt v0, v1, :cond_1

    const v0, 0x7f0804c6

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
