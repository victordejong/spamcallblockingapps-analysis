.class final Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/model/call/CallData;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;J)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-wide p3, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->c:J

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 19

    move-object/from16 v0, p0

    .line 96
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    goto :goto_0

    .line 100
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    goto :goto_0

    .line 106
    :cond_2
    sget-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    :goto_0
    move-object v4, v1

    .line 111
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 112
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_3

    new-instance v2, Ljava/util/Date;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 113
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    .line 115
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    const/16 v3, 0x13

    if-gt v2, v3, :cond_4

    .line 117
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->DAY:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    goto :goto_2

    .line 119
    :cond_4
    sget-object v2, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    :goto_2
    move-object v7, v2

    .line 122
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    :goto_3
    move-object v8, v2

    .line 123
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v2

    cmp-long v9, v2, v5

    if-lez v9, :cond_6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    move-wide v9, v1

    goto :goto_4

    :cond_6
    move-wide v9, v5

    .line 124
    :goto_4
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v1

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getCountryCode()I

    move-result v5

    if-eq v1, v5, :cond_7

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    .line 125
    :goto_5
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 126
    :goto_6
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    .line 127
    :goto_7
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->getMarkAsIncognito()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    .line 128
    :goto_8
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v16, 0x1

    goto :goto_9

    :cond_c
    const/16 v16, 0x0

    .line 129
    :goto_9
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v17

    .line 130
    iget-wide v2, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->c:J

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v14

    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result v18

    move-object v5, v7

    move-object v6, v8

    move-object v7, v11

    move-wide v8, v9

    move v10, v1

    move v11, v14

    move/from16 v14, v18

    invoke-static/range {v2 .. v17}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(JLcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/framework/phone/Phone;JZZZZZZZZ)V

    return-void
.end method
