.class public final Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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
.field public static final a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    const-string v0, "job_who_viewed_my_profile_tag"

    .line 24
    sput-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 70
    const-class v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;

    :try_start_0
    const-string v1, "WhoViewedMyProfileNotificationWorker"

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const-string v1, "WhoViewedMyProfileNotificationDailyWorker onRunDailyJob"

    .line 72
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hC:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Result.success()"

    if-eqz v1, :cond_0

    .line 75
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "calendar"

    .line 76
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 77
    invoke-static {v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Already ran WhoViewedMyProfileNotificationDailyWorker for today"

    .line 78
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 79
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->a()V

    return-object v0

    .line 83
    :cond_0
    :try_start_2
    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$Companion;->getNotificationDataByDate()Ljava/util/List;

    move-result-object v1

    .line 84
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Prefs.whoViewedMyProfileNotificationEnabled.get()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showProfileViewedNotification"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2334
    :cond_1
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 90
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 92
    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->a()V

    throw v0
.end method
