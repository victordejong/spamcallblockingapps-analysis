.class public Lcom/callapp/contacts/activity/missedcall/MissedCallManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILjava/util/Calendar;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Calendar;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, -0x1

    .line 212
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xb

    move/from16 v6, p1

    .line 213
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 214
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 217
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 219
    invoke-static {v4}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 220
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/util/CallLogEntry;

    .line 221
    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 224
    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getType()I

    move-result v9

    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getDuration()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/callapp/contacts/util/CallLogUtils;->a(IJ)I

    move-result v9

    .line 225
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v10

    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    .line 226
    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v11

    if-ne v9, v0, :cond_2

    new-array v12, v8, [Ljava/lang/Integer;

    .line 229
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object v10

    .line 230
    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v10, v12, v13, v0, v8}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Ljava/util/List;JIZ)Z

    move-result v10

    if-nez v10, :cond_0

    .line 234
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 235
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 236
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_1
    new-instance v10, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual {v7}, Lcom/callapp/contacts/util/CallLogEntry;->getDuration()J

    move-result-wide v19

    move-object v12, v10

    move/from16 v18, v9

    invoke-direct/range {v12 .. v20}, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;-><init>(JLjava/util/Date;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;IJ)V

    .line 239
    invoke-interface {v1, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    :cond_2
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 245
    invoke-interface {v1, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v2, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 251
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 252
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v9, v9, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v9}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v9

    .line 254
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v10

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v10

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v10

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_5
    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    if-ne v5, v8, :cond_6

    const/16 v16, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    .line 260
    :goto_2
    new-instance v5, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v14

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v9}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v18

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZILjava/lang/String;)V

    .line 261
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 265
    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a()V
    .locals 1

    .line 194
    sget-boolean v0, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 195
    sput-boolean v0, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a:Z

    .line 196
    sget-object v0, Lcom/callapp/contacts/observers/CallLogContentObserver;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;JJII)V
    .locals 12

    move/from16 v8, p6

    .line 384
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    if-ne v8, v0, :cond_1

    .line 386
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;->contactId:Lio/objectbox/g;

    move-wide v2, p1

    invoke-virtual {v0, v1, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;->missedCallType:Lio/objectbox/g;

    int-to-long v4, v8

    invoke-virtual {v0, v1, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    if-nez v0, :cond_0

    .line 391
    new-instance v9, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    const/4 v6, 0x0

    move-object v0, v9

    move-wide v1, p1

    move-object v3, p0

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;-><init>(JLcom/callapp/framework/phone/Phone;JIII)V

    :cond_0
    move/from16 v6, p5

    .line 393
    invoke-virtual {v0, v6}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->setNumberOfMissedCalls(I)V

    move-wide v4, p3

    .line 394
    invoke-virtual {v0, v4, v5}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->setMissedCallTime(J)V

    .line 396
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 397
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a()V

    return-void

    :cond_1
    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    .line 401
    sget-object v0, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->a:Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;->a(Lcom/callapp/framework/phone/Phone;JJII)V

    return-void

    :cond_2
    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    .line 403
    invoke-static/range {v0 .. v10}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;JJIILcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V
    .locals 4

    .line 408
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 409
    const-class v1, Lcom/callapp/contacts/activity/missedcall/missedAnswer/MissedCallActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/callapp/contacts/activity/missedcall/missedAnswer/NotAnsweredActivity;

    .line 410
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 411
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "phone"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "contactId"

    .line 413
    invoke-virtual {v2, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "EXTRA_MISSED_CALL_TIME"

    .line 414
    invoke-virtual {v2, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "EXTRA_MISSED_CALL_NUMBER"

    .line 415
    invoke-virtual {v2, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "EXTRA_MISSED_CALL_TYPE"

    .line 416
    invoke-virtual {v2, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p8, :cond_2

    if-eqz p9, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p7, :cond_3

    .line 423
    invoke-virtual {p7}, Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;->b()V

    goto :goto_2

    .line 419
    :cond_2
    :goto_1
    new-instance p0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    invoke-direct {p0, p7, p8, p9, p10}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;-><init>(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V

    .line 420
    sget-object p1, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a:Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;->a(Ljava/lang/Class;Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;)V

    const/4 p0, 0x1

    const-string p1, "AD_LOADED"

    .line 421
    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :goto_2
    const-string p0, "ViewOverlay"

    if-ne p6, v0, :cond_4

    .line 427
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->H:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 428
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "MissCall"

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 p1, 0x28

    if-ne p6, p1, :cond_5

    .line 431
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->I:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 432
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "NoAnswer"

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_5
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_6
    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V
    .locals 4

    .line 353
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneNumber:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 355
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneNumber:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    const/4 v0, 0x0

    .line 356
    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;Ljava/util/List;Z)V

    .line 357
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    .line 4091
    invoke-virtual {p1, v1, p0, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V
    .locals 5

    .line 343
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneNumber:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->missedCallType:Lio/objectbox/g;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v0

    const/16 v2, 0x28

    if-ne p2, v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 349
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 p3, 0x0

    .line 3091
    invoke-virtual {p1, p2, p0, p3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static a(Ljava/util/Set;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    sput-boolean v1, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a:Z

    .line 80
    const-class v0, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;

    const-string v1, "Delaying missed call check due to ongoing call"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1088
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1089
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1090
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1091
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1093
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x124f80

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1095
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1096
    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1097
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1099
    :cond_1
    invoke-static {v6}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 1100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 1101
    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1102
    invoke-static {v8}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1103
    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    move-object/from16 v9, p0

    invoke-static {v8, v9}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object v8

    .line 1104
    invoke-static {v8}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1105
    iget-object v10, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v2, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object/from16 v9, p0

    .line 1109
    :cond_4
    :goto_2
    iget-object v10, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget v12, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v8, v10, v11, v12, v7}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Ljava/util/List;JIZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1113
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v7, :cond_5

    .line 1115
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-static {v7}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v7

    .line 1116
    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v8

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v7

    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v7

    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_6
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1123
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_7

    .line 1125
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1126
    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :cond_7
    iget v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_8

    .line 1131
    iget v10, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1133
    :cond_8
    iget v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    :goto_3
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    if-eqz v7, :cond_9

    .line 1137
    iget-object v7, v7, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1139
    :cond_9
    iget-object v7, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1144
    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 1145
    iget-object v8, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/model/contact/ContactData;

    .line 1147
    iget-object v9, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    iget v10, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1149
    iget-object v10, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1152
    invoke-static {v10}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1153
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    const/4 v11, 0x0

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 1154
    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getMissedCallType()I

    move-result v13

    iget v14, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    if-ne v13, v14, :cond_c

    .line 1155
    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v11

    sget-object v12, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    if-ne v11, v12, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    :cond_e
    const/4 v10, 0x2

    if-eqz v11, :cond_f

    const/4 v12, 0x4

    const/4 v15, 0x4

    goto :goto_6

    :cond_f
    const/4 v15, 0x2

    :goto_6
    if-eqz v11, :cond_10

    const/4 v12, 0x6

    const/4 v14, 0x6

    goto :goto_7

    :cond_10
    const/4 v14, 0x3

    :goto_7
    if-eqz v11, :cond_11

    goto :goto_8

    :cond_11
    const/4 v10, 0x1

    :goto_8
    if-lt v9, v10, :cond_19

    .line 1165
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    iget-object v5, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    move-object/from16 v17, v2

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget v5, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    .line 1296
    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 1300
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v10

    const-class v7, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v10, v7}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v7

    .line 1301
    invoke-virtual {v7}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v10

    sget-object v12, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->phoneNumber:Lio/objectbox/g;

    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v10

    invoke-virtual {v10}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    if-nez v10, :cond_15

    const-string v10, "CreateCard"

    const/4 v13, 0x3

    if-ne v5, v13, :cond_12

    .line 1305
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isMissedCallCardEnabled()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1308
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v12

    const-string v13, "MissCall"

    invoke-virtual {v12, v13, v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/16 v12, 0x28

    if-ne v5, v12, :cond_13

    .line 1310
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isNotAnsweredCardEnabled()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1313
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v13

    const-string v12, "NoAnswer"

    invoke-virtual {v13, v12, v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_13
    :goto_9
    new-instance v18, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    move-object/from16 v10, v18

    const/16 v13, 0x28

    move v12, v9

    move-object/from16 v19, v0

    move/from16 v20, v14

    const/16 v0, 0x28

    move-wide v13, v1

    move/from16 v21, v15

    move v15, v5

    invoke-direct/range {v10 .. v15}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;-><init>(Lcom/callapp/framework/phone/Phone;IJI)V

    if-ne v5, v0, :cond_14

    .line 1319
    sget-object v10, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->a:Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

    invoke-virtual {v10, v1, v2}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;->a(J)Ljava/lang/String;

    move-object/from16 v10, v18

    const/4 v11, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v10, v18

    goto :goto_a

    :cond_15
    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v15

    const/16 v0, 0x28

    :goto_a
    const/4 v11, 0x0

    .line 1323
    :goto_b
    invoke-virtual {v10}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getLastMissedCall()J

    move-result-wide v12

    cmp-long v14, v1, v12

    if-lez v14, :cond_16

    .line 1324
    invoke-virtual {v10, v1, v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setLastMissedCall(J)V

    .line 1325
    invoke-virtual {v10, v9}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setNumberOfMissedCalls(I)V

    .line 1326
    invoke-virtual {v10, v5}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setMissedCallType(I)V

    if-ne v5, v0, :cond_16

    if-nez v11, :cond_16

    .line 1329
    sget-object v5, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->a:Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

    invoke-virtual {v5, v1, v2}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;->a(J)Ljava/lang/String;

    .line 1333
    :cond_16
    invoke-virtual {v7, v10}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    goto :goto_c

    :cond_17
    move-object/from16 v19, v0

    move/from16 v20, v14

    move/from16 v21, v15

    const/16 v0, 0x28

    .line 1166
    :goto_c
    iget v1, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_18

    const/16 v13, 0x28

    goto :goto_d

    :cond_18
    const/4 v13, 0x3

    .line 1167
    :goto_d
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const-wide/16 v10, 0x0

    invoke-static {v1, v5, v13, v10, v11}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    const/4 v5, 0x1

    goto :goto_e

    :cond_19
    move-object/from16 v19, v0

    move-object/from16 v17, v2

    move/from16 v20, v14

    move/from16 v21, v15

    const/16 v0, 0x28

    const/4 v2, 0x3

    .line 1171
    :goto_e
    iget v1, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    if-ne v1, v2, :cond_1a

    move/from16 v10, v21

    if-lt v9, v10, :cond_1b

    .line 1173
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isMissedCallOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->H:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v0, v10

    if-lez v2, :cond_1b

    .line 1174
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v11

    iget-object v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    iget v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    move v15, v9

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJII)V

    goto :goto_f

    .line 1179
    :cond_1a
    iget v1, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    if-ne v1, v0, :cond_1b

    move/from16 v12, v20

    if-lt v9, v12, :cond_1b

    .line 1181
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isNotAnsweredOverlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->I:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v0, v10

    if-lez v2, :cond_1b

    .line 1182
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v11

    iget-object v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    iget v0, v6, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->e:I

    move v15, v9

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJII)V

    :cond_1b
    :goto_f
    move-object/from16 v2, v17

    move-object/from16 v0, v19

    const/4 v1, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1c
    if-eqz v5, :cond_1d

    .line 1189
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method private static a(Ljava/util/List;JIZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;",
            ">;JIZ)Z"
        }
    .end annotation

    .line 269
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 271
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getMissedCallType()I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v2

    sget-object v4, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getLastDeleteFromNotificationTimeStamp()J

    move-result-wide v4

    if-eqz p4, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    cmp-long p0, v4, p1

    if-lez p0, :cond_2

    return v3

    :cond_2
    return v1

    .line 281
    :cond_3
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-ltz v0, :cond_0

    return v3

    :cond_4
    return v1
.end method

.method public static b()V
    .locals 10

    .line 361
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v1

    .line 363
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    .line 368
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getLastMissedCall()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 369
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 372
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_1
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {v0, v3}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method public static c()V
    .locals 4

    .line 476
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 479
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static d()V
    .locals 5

    .line 483
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v1

    .line 485
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    const/4 v4, 0x3

    .line 487
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setMissedCallType(I)V

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public static e()V
    .locals 9

    .line 494
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData_;->id:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 5272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 495
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 496
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 499
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 501
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    .line 502
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getContactId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getMissedCallTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getNumberOfMissedCalls()I

    move-result v7

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getMissedCallType()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;JJII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getMissedCallCardIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds_;->lastMissedCall:Lio/objectbox/g;

    const/4 v2, 0x1

    .line 2283
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isMissedCallCardEnabled()Z
    .locals 1

    .line 443
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->y:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMissedCallDailySummaryEnabled()Z
    .locals 1

    .line 459
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->C:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isMissedCallOverlayEnabled()Z
    .locals 1

    .line 451
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->A:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMissedCallsNotificationsEnabled()Z
    .locals 1

    .line 471
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->F:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNotAnswerDailySummaryEnabled()Z
    .locals 1

    .line 463
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->D:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNotAnswerNotificationsEnabled()Z
    .locals 1

    .line 467
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->E:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNotAnsweredCardEnabled()Z
    .locals 1

    .line 447
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->z:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isNotAnsweredOverlayEnabled()Z
    .locals 1

    .line 455
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->B:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
