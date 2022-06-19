.class public final Lcom/callapp/contacts/workers/_24HourPingWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/_24HourPingWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "getPermissionsString",
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
.field public static final a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    const-string v0, "job_24_hour_ping_tag"

    .line 27
    sput-object v0, Lcom/callapp/contacts/workers/_24HourPingWorker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/workers/_24HourPingWorker;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 9

    .line 70
    sget-object v0, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->a()V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/workers/_24HourPingWorker;->getPermissionsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registration"

    const-string v3, "24 hour ping"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    .line 79
    div-long v3, v1, v3

    const-wide/16 v5, 0x2c

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const-wide/16 v5, 0x34

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 82
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bv:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Syncers"

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v4, "Second sync finished in 2 days"

    invoke-virtual {v0, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v4, "Second sync didn\'t finish in 2 days"

    invoke-virtual {v0, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x3c

    cmp-long v5, v0, v3

    if-gtz v5, :cond_6

    const-wide/16 v3, 0x1e

    cmp-long v6, v0, v3

    if-nez v6, :cond_3

    const-string v2, "30Days"

    :cond_2
    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    const-string v2, "60Days"

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x3

    cmp-long v5, v0, v3

    if-nez v5, :cond_5

    .line 99
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->e()V

    const-string v2, "3Days"

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x7

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->f()V

    const-string v2, "7Days"

    goto :goto_1

    :goto_2
    if-eqz v5, :cond_6

    .line 106
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v4, "Retention"

    invoke-virtual/range {v3 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 1334
    :cond_6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPermissionsString()Ljava/lang/String;
    .locals 20

    .line 114
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    .line 115
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v1

    .line 116
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v2

    .line 117
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v3

    .line 118
    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isIgnoringBatteryOptimizations()Z

    move-result v4

    .line 119
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Prefs.isPremium.get()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 120
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-string v7, "android.permission.READ_CONTACTS"

    invoke-static {v6, v7}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 121
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    const-string v10, "android.permission.READ_CALL_LOG"

    invoke-static {v9, v10}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 122
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    const-string v11, "android.permission.READ_PHONE_STATE"

    invoke-static {v10, v11}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 123
    :goto_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    const-string v12, "android.permission.RECEIVE_SMS"

    invoke-static {v11, v12}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 124
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const-string v13, "android.permission.RECORD_AUDIO"

    invoke-static {v12, v13}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    .line 125
    :goto_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    const-string v14, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v13, v14}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 126
    :goto_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    const-string v15, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v14, v15}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    .line 127
    :goto_6
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v15

    check-cast v15, Landroid/content/Context;

    const-string v7, "android.permission.READ_CALENDAR"

    invoke-static {v15, v7}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    .line 128
    :goto_7
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v8

    .line 129
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->f()Z

    move-result v15

    move/from16 v16, v15

    .line 130
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->g()Z

    move-result v15

    .line 131
    sget-object v17, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v17}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v15

    move/from16 v17, v8

    const-string v8, "Prefs.setupCompleted.get()"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 132
    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v19, v8

    const-string v8, "ct:"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cl:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",ph:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",sms:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mi:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",lo:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",st:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",pr:"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",dd:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ac:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",no:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ov:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ba:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ca:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",co:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",hu:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",as:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",sc:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
