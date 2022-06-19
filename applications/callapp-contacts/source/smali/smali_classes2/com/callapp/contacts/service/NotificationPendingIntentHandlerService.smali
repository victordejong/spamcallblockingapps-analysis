.class public Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 5

    .line 363
    invoke-static {p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result p0

    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 365
    invoke-static {}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    move-result-object v0

    .line 1255
    iget-object v1, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 1256
    iget-object v1, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1258
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 1259
    :try_start_0
    iget-object v0, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1260
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;

    .line 1263
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v3

    iget-object v4, v2, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v2}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->a(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;)Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 1265
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1267
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    const-class v0, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    const-string v1, "Our IM ID notification Removed - cleaned after it"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1267
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    .line 1381
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Landroid/content/Intent;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_2e

    .line 2122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2123
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2125
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "com.callapp.contacts.ACTION_END_CALL_TELECOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "com.callapp.contacts.ACTION_END_CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "com.callapp.contacts.ACTION_UPGRADE_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "com.callapp.contacts.ACTION_CALL_REMINDER_CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "com.callapp.contacts.ACTION_CALL_SNOOZE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "com.callapp.contacts.ACTION_TOGGLE_AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_19
    const-string v3, "com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_NOT_ANSWERED_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1a
    const-string v3, "com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1b
    const-string v3, "com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1c
    const-string v3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1d
    const-string v3, "com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1e
    const-string v3, "com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1f
    const-string v3, "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x28

    const-string v8, "phone"

    const-string v9, "contactId"

    const-string v10, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    const-wide/16 v11, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 2169
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->e(Landroid/content/Intent;)V

    .line 2170
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 2171
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2222
    :pswitch_1
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2224
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v2, v3, v5, v11, v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 2226
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->e(Landroid/content/Intent;)V

    .line 2227
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    goto/16 :goto_4

    .line 2253
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->e(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2303
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2304
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    .line 2307
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2310
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2281
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2282
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2283
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2242
    :pswitch_5
    invoke-static {v6}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    goto/16 :goto_4

    .line 2263
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->f(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2189
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->d(Landroid/content/Intent;)V

    .line 2190
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    :pswitch_8
    const-string v2, "extra_im_package"

    .line 2431
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_im_type"

    .line 2432
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/manager/Singletons$SenderType;

    if-eqz v3, :cond_23

    .line 2434
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-static {v3}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 2436
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 2437
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-static {v2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_2

    .line 2439
    :cond_22
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2440
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2441
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_2

    .line 2445
    :cond_23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2446
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2447
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 2450
    :cond_24
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    .line 2451
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2131
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2327
    :pswitch_a
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2328
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    .line 2329
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const-wide/16 v5, -0x1

    .line 2330
    invoke-virtual {v1, v9, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v2, :cond_25

    .line 2331
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    cmp-long v3, v7, v5

    if-eqz v3, :cond_25

    .line 2332
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    new-instance v5, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-direct {v5, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v3, v0, v5}, Lcom/callapp/contacts/manager/popup/PopupManager;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2336
    :cond_25
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2338
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2258
    :pswitch_b
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->d()V

    goto/16 :goto_4

    .line 2343
    :pswitch_c
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d()V

    goto/16 :goto_4

    .line 2288
    :pswitch_d
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    .line 2289
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2290
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->h()Z

    .line 2293
    :cond_26
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2295
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2298
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2386
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2388
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    .line 2389
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2390
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2391
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 2392
    new-instance v2, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$2;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$2;-><init>(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;)V

    const/16 v0, 0x898

    .line 2398
    invoke-virtual {v2, v0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$2;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    goto/16 :goto_4

    .line 2247
    :pswitch_f
    invoke-static {v6}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    goto/16 :goto_4

    .line 2176
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->f(Landroid/content/Intent;)V

    .line 2177
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 2178
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2154
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->c(Landroid/content/Intent;)V

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2183
    :pswitch_12
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 2184
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2273
    :pswitch_13
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v13

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gw:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_28
    const-wide/16 v2, 0x0

    :goto_3
    move-wide/from16 v17, v2

    new-array v0, v7, [Ljava/lang/String;

    const-string v14, "CallAppPlus"

    const-string v15, "ClickNotificationCallAppPlus"

    const-string v16, "firstTimeExperience"

    move-object/from16 v19, v0

    invoke-virtual/range {v13 .. v19}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 2274
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v19

    invoke-virtual {v1, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    sget-object v27, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v26, "NotificationIM"

    invoke-static/range {v19 .. v27}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    .line 2275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2276
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2315
    :pswitch_14
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2316
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c()Z

    .line 2319
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2322
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto/16 :goto_4

    .line 2348
    :pswitch_15
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/content/Context;)V

    .line 2349
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2350
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    goto/16 :goto_4

    .line 2159
    :pswitch_16
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result v0

    .line 2160
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    .line 2161
    invoke-virtual {v1, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    sget-object v21, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v20, "NotificationCallReminder"

    .line 2160
    invoke-static/range {v13 .. v21}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v2

    .line 2162
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    int-to-long v2, v0

    .line 2163
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 2164
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 2165
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 2138
    :pswitch_17
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2139
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2140
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v2, v3, v5, v11, v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 2142
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->c(Landroid/content/Intent;)V

    .line 2143
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    goto :goto_4

    .line 2203
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->d(Landroid/content/Intent;)V

    .line 2204
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    .line 2205
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    goto :goto_4

    .line 2210
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->f(Landroid/content/Intent;)V

    .line 2211
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    goto :goto_4

    .line 2128
    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    goto :goto_4

    .line 2232
    :pswitch_1b
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2233
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2234
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v2, v5, v3, v11, v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 2236
    :cond_2b
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->e(Landroid/content/Intent;)V

    .line 2237
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    goto :goto_4

    .line 2216
    :pswitch_1c
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->f(Landroid/content/Intent;)V

    .line 2217
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    goto :goto_4

    .line 2196
    :pswitch_1d
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->d(Landroid/content/Intent;)V

    .line 2197
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    .line 2198
    invoke-static {v7}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    goto :goto_4

    .line 2146
    :pswitch_1e
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2147
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2148
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v2, v5, v3, v11, v12}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 2150
    :cond_2c
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->c(Landroid/content/Intent;)V

    .line 2151
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a()V

    :cond_2d
    :goto_4
    const-string v0, "future_target_index_key"

    .line 2355
    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2356
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/NotificationManager;->c(I)V

    :cond_2e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d6546d0 -> :sswitch_1f
        -0x6da685de -> :sswitch_1e
        -0x6c698539 -> :sswitch_1d
        -0x5a2fb94b -> :sswitch_1c
        -0x526c3815 -> :sswitch_1b
        -0x45bbfe7e -> :sswitch_1a
        -0x41cfe9d9 -> :sswitch_19
        -0x3e062e07 -> :sswitch_18
        -0x3a86ed63 -> :sswitch_17
        -0x399a584f -> :sswitch_16
        -0x1ea4dfef -> :sswitch_15
        -0x185b860d -> :sswitch_14
        -0xf862a88 -> :sswitch_13
        -0xc9525c2 -> :sswitch_12
        -0x5f0267f -> :sswitch_11
        -0x7319f0 -> :sswitch_10
        0x285e5c7 -> :sswitch_f
        0x63b08f4 -> :sswitch_e
        0x640df08 -> :sswitch_d
        0x85e68f6 -> :sswitch_c
        0xb6c56bf -> :sswitch_b
        0xd2c0c23 -> :sswitch_a
        0x13ad8f72 -> :sswitch_9
        0x2df46d2c -> :sswitch_8
        0x2f41f297 -> :sswitch_7
        0x49166f3e -> :sswitch_6
        0x4a3b3682 -> :sswitch_5
        0x5b989e52 -> :sswitch_4
        0x673e2f40 -> :sswitch_3
        0x695bc946 -> :sswitch_2
        0x78c9ffd4 -> :sswitch_1
        0x78f093e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1a
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private static b(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "notification_id"

    .line 376
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8

    .line 404
    invoke-static {p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->b(Landroid/content/Intent;)I

    move-result v4

    const-string v0, "call_reminder_notification_time"

    const-wide/16 v1, 0x0

    .line 405
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "com.callapp.contacts.EXTRA_FULL_NAME"

    .line 406
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    .line 407
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 409
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 410
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v5

    move-object v5, v6

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/action/ActionDoneListener;Z)V

    .line 411
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 412
    invoke-static {p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private static d(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.extra.INTENT"

    .line 416
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 418
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 3

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 425
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 427
    invoke-static {p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private f(Landroid/content/Intent;)V
    .locals 6

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 457
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 459
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->get()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/sim/SimManager;->isDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f4

    .line 461
    :try_start_0
    invoke-static {v1, v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v2

    .line 462
    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/loader/PreferredSimManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to get contact id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NotificationPendingIntentHandlerService"

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 468
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const v4, 0x7f120819

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;

    invoke-direct {v5, p0, v1, v0}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$3;-><init>(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;)V

    invoke-static {v3, v4, v2, v5}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 478
    invoke-static {p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;->a(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 111
    new-instance p2, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;-><init>(Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p2}, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    const/4 p1, 0x2

    return p1
.end method
