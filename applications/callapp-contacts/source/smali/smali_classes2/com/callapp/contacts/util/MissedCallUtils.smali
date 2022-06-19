.class public Lcom/callapp/contacts/util/MissedCallUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;,
        Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;,
        Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;
    .locals 2

    .line 84
    iget v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 86
    iget-boolean p0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    if-eqz p0, :cond_0

    .line 87
    sget-object p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->SINGLE_CALL_PRIVATE_NUMBER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    return-object p0

    .line 89
    :cond_0
    sget-object p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->SINGLE_CALL_NON_PRIVATE_NUMBER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    return-object p0

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->a:Z

    if-eqz v0, :cond_2

    .line 94
    sget-object p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    return-object p0

    .line 96
    :cond_2
    iget p0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;->b:I

    if-le p0, v1, :cond_3

    .line 97
    sget-object p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_MIXED_CALLERS:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    return-object p0

    .line 99
    :cond_3
    sget-object p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_ALL_SAME_CALLER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;)",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;"
        }
    .end annotation

    .line 180
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 188
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v4, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v4, v4, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v3, v3, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 195
    :cond_2
    new-instance v2, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, p0, v0, v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;-><init>(IIZ)V

    return-object v2
.end method

.method public static a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f120819

    .line 52
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getCallappName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getCallappName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object p0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object p0, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    iget-object p0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object p0, p0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f120198

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 126
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    :goto_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iget-object v5, v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->d:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 136
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getCallLogs()Ljava/util/List;

    move-result-object v4

    .line 137
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 138
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 139
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 143
    new-instance v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallId()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v12

    iget-object v13, v3, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getCallType()I

    move-result v14

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->getDuration()J

    move-result-wide v15

    move-object v8, v6

    invoke-direct/range {v8 .. v16}, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;-><init>(JLjava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;IJ)V

    .line 144
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v7, p0

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method public static a(Z)V
    .locals 2

    .line 1111
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->af:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 75
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 2107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ae:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 80
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Z)V

    return-void
.end method
