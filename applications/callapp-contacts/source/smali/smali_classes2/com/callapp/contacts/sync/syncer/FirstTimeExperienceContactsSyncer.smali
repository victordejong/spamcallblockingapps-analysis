.class public Lcom/callapp/contacts/sync/syncer/FirstTimeExperienceContactsSyncer;
.super Lcom/callapp/contacts/sync/syncer/Syncer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncContact(Lcom/callapp/contacts/sync/model/SyncerContext;)V
    .locals 0

    .line 24
    invoke-virtual {p1}, Lcom/callapp/contacts/sync/model/SyncerContext;->markFullySynced()V

    return-void
.end method

.method public onSyncEnd()Z
    .locals 1

    .line 40
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->d()V

    .line 41
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncEnd()Z

    move-result v0

    return v0
.end method

.method public onSyncStart()V
    .locals 15

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/sync/syncer/FirstTimeExperienceContactsSyncer;->shouldSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/sync/syncer/FirstTimeExperienceContactsSyncer;->syncContext:Lcom/callapp/contacts/sync/model/SyncContext;

    iget-object v0, v0, Lcom/callapp/contacts/sync/model/SyncContext;->contactItems:Ljava/util/List;

    .line 1045
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x3

    .line 1049
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(I)Ljava/util/List;

    move-result-object v1

    .line 1051
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_7

    const/4 v2, 0x0

    .line 1052
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v4, 0x1

    .line 1053
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v6, 0x2

    .line 1054
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    .line 1057
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object v8

    .line 1058
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object v9

    .line 1059
    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/model/contact/ContactData;->getLastCallHistoryData(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/CallHistoryData;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/String;

    .line 1063
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->eu:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 1062
    invoke-static {v11, v12}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    new-array v11, v0, [Ljava/lang/String;

    .line 1065
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->ev:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 1064
    invoke-static {v11, v12}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    new-array v11, v0, [Ljava/lang/String;

    .line 1067
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1068
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1069
    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    sget-object v12, Lcom/callapp/contacts/manager/preferences/Prefs;->ez:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 1066
    invoke-static {v11, v12}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    new-array v11, v0, [J

    .line 1071
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v12

    aput-wide v12, v11, v2

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v12

    aput-wide v12, v11, v4

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v12

    aput-wide v12, v11, v6

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ew:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 1070
    invoke-static {v11, v3}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([J[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    new-array v3, v0, [J

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_1

    .line 1073
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    goto :goto_0

    :cond_1
    move-wide v13, v11

    :goto_0
    aput-wide v13, v3, v2

    if-eqz v9, :cond_2

    .line 1074
    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    goto :goto_1

    :cond_2
    move-wide v13, v11

    :goto_1
    aput-wide v13, v3, v4

    if-eqz v10, :cond_3

    .line 1075
    invoke-virtual {v10}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    :cond_3
    aput-wide v11, v3, v6

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->ex:[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 1072
    invoke-static {v3, v5}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([J[Lcom/callapp/contacts/manager/preferences/prefs/LongPref;)V

    new-array v0, v0, [I

    const/4 v3, -0x1

    if-eqz v8, :cond_4

    .line 1077
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getCallType()I

    move-result v5

    goto :goto_2

    :cond_4
    const/4 v5, -0x1

    :goto_2
    aput v5, v0, v2

    if-eqz v9, :cond_5

    .line 1078
    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getCallType()I

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    :goto_3
    aput v5, v0, v4

    if-eqz v10, :cond_6

    .line 1079
    invoke-virtual {v10}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getCallType()I

    move-result v3

    :cond_6
    aput v3, v0, v6

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ey:[Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1076
    invoke-static {v0, v3}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([I[Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;)V

    .line 1081
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/CallLogFirstTimeExperienceEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v4, 0x0

    .line 1091
    invoke-virtual {v0, v3, v4, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    goto :goto_4

    .line 1084
    :cond_7
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->es:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1087
    :cond_8
    :goto_4
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1088
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 34
    :cond_9
    invoke-super {p0}, Lcom/callapp/contacts/sync/syncer/Syncer;->onSyncStart()V

    return-void
.end method
