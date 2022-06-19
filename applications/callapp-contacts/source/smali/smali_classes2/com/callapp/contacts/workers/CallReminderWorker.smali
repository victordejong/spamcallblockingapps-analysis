.class public final Lcom/callapp/contacts/workers/CallReminderWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/CallReminderWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/CallReminderWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "handleCallReminder",
        "",
        "notificationId",
        "",
        "Companion",
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
.field public static final a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    const-string v0, "job_callreminder_tag"

    .line 17
    sput-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->b:Ljava/lang/String;

    const-string v0, "notificationId"

    .line 18
    sput-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 23

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/CallReminderWorker;->getInputData()Landroidx/work/d;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/workers/CallReminderWorker;->c:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/work/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 2046
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 2047
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2048
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    .line 2436
    sget-object v9, Lcom/callapp/contacts/manager/NotificationManager;->e:Ljava/lang/Object;

    monitor-enter v9

    .line 2437
    :try_start_0
    iget-object v3, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 2439
    monitor-exit v9

    goto/16 :goto_4

    .line 2441
    :cond_0
    iget-object v3, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v10

    .line 2442
    sget-object v3, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->CALL_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v11

    const v3, 0x7f120175

    .line 2443
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    const v4, 0x7f0804ac

    .line 2444
    invoke-virtual {v3, v4}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v3

    const/4 v5, 0x2

    .line 3160
    invoke-virtual {v3, v5, v2}, Landroidx/core/app/g$e;->a(IZ)V

    .line 3275
    iput v5, v11, Landroidx/core/app/g$e;->l:I

    const-string v3, "call"

    .line 4227
    iput-object v3, v11, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    .line 2447
    iget-object v3, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 2450
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v12

    .line 2451
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v13

    .line 2452
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    const-class v8, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION"

    .line 2453
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "notification_id"

    .line 2454
    iget-object v8, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2455
    iget-wide v7, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    iget-object v14, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v14}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    sget-object v22, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-object v14, v6

    move-wide v15, v7

    invoke-static/range {v14 .. v22}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 2456
    invoke-static {v6}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 2459
    iget-object v7, v1, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 2460
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v8

    const v14, 0x7f120167

    if-eqz v8, :cond_2

    new-array v4, v4, [Ljava/lang/Object;

    .line 2461
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v14, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 2462
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const v3, 0x7f080596

    invoke-virtual {v2, v3, v7}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v14, v5

    goto :goto_1

    .line 2466
    :cond_2
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v8

    if-eqz v8, :cond_3

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f120819

    .line 2467
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v14, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 2468
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 2469
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const v3, 0x7f08037c

    invoke-virtual {v2, v3, v7}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    new-array v4, v4, [Ljava/lang/Object;

    .line 2474
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    invoke-static {v14, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 2475
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 2476
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2482
    :goto_1
    invoke-virtual {v11, v2}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    const-string v2, "future_target_index_key"

    .line 2485
    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2487
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v10, v6, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS"

    .line 2489
    invoke-static {v11, v10, v3, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    const/16 v3, 0x17

    .line 2490
    invoke-virtual {v11, v3}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    .line 4975
    iput-object v2, v11, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 2493
    iget-object v2, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    move v3, v10

    move-object v4, v13

    move-object v5, v12

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;JZ)Ljava/util/List;

    move-result-object v2

    .line 2494
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/g$a;

    .line 2495
    invoke-virtual {v11, v3}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$a;)Landroidx/core/app/g$e;

    goto :goto_2

    .line 2497
    :cond_4
    iget-object v2, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, v1

    move v3, v10

    move-object v4, v13

    move-object v5, v12

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;JZ)Ljava/util/List;

    move-result-object v2

    invoke-static {v11, v14, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 2499
    invoke-virtual {v1, v10, v11}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 2501
    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 2502
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    goto :goto_3

    .line 2504
    :cond_5
    const-class v0, Lcom/callapp/contacts/manager/NotificationManager;

    const-string v1, "info is null"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2506
    :goto_3
    monitor-exit v9

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5334
    :cond_6
    :goto_4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
