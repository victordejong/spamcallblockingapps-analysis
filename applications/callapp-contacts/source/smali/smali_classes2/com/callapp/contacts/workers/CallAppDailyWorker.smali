.class public final Lcom/callapp/contacts/workers/CallAppDailyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/CallAppDailyWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "billingManager",
        "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;",
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
.field public static final a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

.field private static final c:Ljava/lang/String;

.field private static final d:J

.field private static final e:J

.field private static final f:J


# instance fields
.field private b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    const-string v0, "job_daily_tag"

    .line 53
    sput-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->c:Ljava/lang/String;

    const-wide/32 v0, 0x19bfcc00

    .line 54
    sput-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->d:J

    const-wide/32 v0, 0x5265c00

    .line 55
    sput-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->e:J

    const-wide/32 v0, 0x337f9800

    .line 56
    sput-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/workers/CallAppDailyWorker;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->d:J

    return-wide v0
.end method

.method public static final synthetic b(Lcom/callapp/contacts/workers/CallAppDailyWorker;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public static final synthetic c()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->e:J

    return-wide v0
.end method

.method public static final synthetic d()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->f:J

    return-wide v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "WorkManager.getInstance(\u2026aryDailyWorker.TAG).get()"

    .line 33
    new-instance v2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v3, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$doWork$1;-><init>(Lcom/callapp/contacts/workers/CallAppDailyWorker;)V

    check-cast v3, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v2, v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 46
    sget-object v2, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    const/4 v3, 0x0

    .line 2166
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 3184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2166
    sget-object v5, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a:Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "WorkManager.getInstance(\u2026teConfigWorker.TAG).get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2167
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2168
    sget-object v4, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a:Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v4}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->a()V

    .line 2171
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 4184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2171
    sget-object v5, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "WorkManager.getInstance(\u2026ContactsWorker.TAG).get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2172
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2174
    sget-object v4, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    invoke-static {v4}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;->a(Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;)V

    .line 2177
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 5184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2177
    sget-object v5, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "WorkManager.getInstance(\u2026criptionWorker.TAG).get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2178
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2180
    sget-object v4, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    invoke-static {v4}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->a(Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;)V

    .line 2183
    :cond_2
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Prefs.setupCompleted.get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2184
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 6184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2184
    sget-object v5, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "WorkManager.getInstance(\u2026HourPingWorker.TAG).get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2185
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2186
    sget-object v4, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v4}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->a()V

    .line 2189
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 7184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2189
    sget-object v5, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "WorkManager.getInstance(\u2026dayDailyWorker.TAG).get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2190
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2191
    sget-object v5, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    .line 2194
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2196
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 8184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2196
    sget-object v5, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2197
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2198
    sget-object v4, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v4}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    .line 2201
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 9184
    invoke-static {v4}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v4

    .line 2201
    sget-object v5, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v5}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/List;

    .line 2202
    invoke-static {v4}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2203
    sget-object v1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    .line 2206
    :cond_6
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    sget-object v4, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->DAILY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    if-eq v1, v4, :cond_7

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hy:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    sget-object v4, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;->WEEKLY:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager$NotificationWhoViewedMyProfile;

    if-ne v1, v4, :cond_8

    .line 2207
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 10184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 2207
    sget-object v4, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "WorkManager.getInstance(\u2026ficationWorker.TAG).get()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 2208
    invoke-static {v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2209
    sget-object v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileNotificationWorker$Companion;->a()V

    .line 2212
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2091
    :cond_9
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    .line 10310
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->a()Ljava/util/Collection;

    move-result-object v4

    .line 10311
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 10312
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10313
    invoke-static {v5}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->setExpires$eef1da(Ljava/lang/String;)V

    goto :goto_1

    .line 10335
    :cond_a
    iget-object v1, v1, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v1}, Landroidx/b/e;->evictAll()V

    .line 10318
    invoke-static {}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a()V

    .line 2093
    invoke-static {}, Lcom/callapp/contacts/util/glide/GlideUtils;->a()V

    .line 2095
    invoke-static {}, Lcom/callapp/contacts/manager/PromotionManager;->a()V

    .line 2097
    check-cast v2, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    .line 11146
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a()Z

    move-result v1

    const v6, 0x7f080351

    const/high16 v7, 0x8000000

    const-string v8, "future_target_index_key"

    const v9, 0x7f0f0009

    const/4 v10, 0x1

    if-eqz v1, :cond_10

    move-object v1, v2

    check-cast v1, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    .line 11161
    sget-object v11, Lcom/callapp/contacts/manager/preferences/Prefs;->ad:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v11}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_c

    sget-object v11, Lcom/callapp/contacts/manager/preferences/Prefs;->ad:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v11}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Prefs.showUpdrageNotificationFirstTimeDate.get()"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    check-cast v1, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getTIME_TO_SHOW_UPGRADE_NOTIFICATION()J

    move-result-wide v13

    add-long/2addr v11, v13

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v1, v11, v13

    if-gez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_10

    .line 11147
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->getServerMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v1

    const-string v11, "message"

    .line 11148
    invoke-static {v1, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_d

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_10

    .line 11150
    :cond_d
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v11

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getUpgradeUrl()Ljava/lang/String;

    move-result-object v1

    .line 11234
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v12

    invoke-virtual {v12}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v12

    .line 11235
    new-instance v13, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "android.intent.action.VIEW"

    invoke-direct {v13, v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11236
    invoke-static {v13}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 11237
    iget-object v13, v11, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v13

    .line 11238
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v14, v12, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v15, "com.callapp.contacts.ACTION_UPGRADE_NOTIFICATION"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 11239
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x7f1204b8

    .line 11240
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v15, 0x7f1201e2

    .line 11241
    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 11243
    sget-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->VALIDATE_CLIENT_TASK_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v11, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v4

    .line 11244
    iget-object v5, v11, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v5, v9, v13}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 11245
    invoke-virtual {v14, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11246
    invoke-static {v12, v3, v14, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 11248
    invoke-virtual {v4, v6}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-result-object v5

    .line 11249
    invoke-virtual {v5, v1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    .line 11975
    iput-object v12, v1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    .line 12160
    invoke-virtual {v1, v5, v10}, Landroidx/core/app/g$e;->a(IZ)V

    .line 11249
    invoke-virtual {v1, v10}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    const/4 v1, 0x7

    .line 11251
    invoke-virtual {v4, v1}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    const-string v5, "com.callapp.contacts.ACTION_DISMISS_UPGRADE_NOTIFICATION"

    const/4 v12, -0x1

    .line 11252
    invoke-static {v4, v12, v5, v13}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 11254
    invoke-virtual {v11, v1, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 11151
    :cond_e
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ad:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 11152
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ad:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 11155
    :cond_f
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 2100
    :cond_10
    invoke-static {}, Lcom/callapp/contacts/manager/messaging/FcmManager;->get()Lcom/callapp/contacts/manager/messaging/FcmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a()V

    .line 2104
    sget-object v1, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 2114
    new-instance v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {v4}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    if-eqz v1, :cond_11

    .line 2115
    new-instance v5, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v5, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_4

    :cond_11
    move-object v5, v1

    :goto_4
    check-cast v5, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 13104
    iput-object v5, v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    const/4 v5, 0x0

    .line 13105
    iput-object v5, v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->e:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    if-eqz v1, :cond_12

    .line 2116
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_5

    :cond_12
    move-object v11, v1

    :goto_5
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 13133
    iput-object v11, v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    if-eqz v1, :cond_13

    .line 2117
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_6

    :cond_13
    move-object v11, v1

    :goto_6
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    invoke-virtual {v4, v5, v11}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v4

    if-eqz v1, :cond_14

    .line 2118
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_7

    :cond_14
    move-object v11, v1

    :goto_7
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 13138
    iput-object v11, v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    if-eqz v1, :cond_15

    .line 2119
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_8

    :cond_15
    move-object v11, v1

    :goto_8
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    invoke-virtual {v4, v5, v11}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v4

    if-eqz v1, :cond_16

    .line 2120
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    :cond_16
    move-object v11, v1

    :goto_9
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    invoke-virtual {v4, v5, v11}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->c(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v4

    if-eqz v1, :cond_17

    .line 2121
    new-instance v11, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v11, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    goto :goto_a

    :cond_17
    move-object v11, v1

    :goto_a
    check-cast v11, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    invoke-virtual {v4, v5, v11}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object v4

    if-eqz v1, :cond_18

    .line 2122
    new-instance v5, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;

    invoke-direct {v5, v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$sam$com_callapp_contacts_manager_asset_managers_StoreItemAssetManager_AssetListener$0;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object v1, v5

    :cond_18
    check-cast v1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 14116
    iput-object v1, v4, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->d:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    .line 2122
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object v1

    .line 2123
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 2124
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 2128
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Prefs.shouldShowWhatsNew.get()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2129
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    if-eqz v1, :cond_19

    .line 2131
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE()J

    move-result-wide v13

    sub-long/2addr v11, v13

    cmp-long v1, v11, v4

    if-gez v1, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION()J

    move-result-wide v1

    sub-long/2addr v11, v1

    cmp-long v1, v11, v4

    if-lez v1, :cond_19

    .line 2134
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    .line 14353
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    .line 14354
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const-class v11, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v4, v5, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14356
    iget-object v5, v1, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    const v11, 0x7f1204b7

    .line 14357
    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f1206e4

    .line 14358
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 14359
    sget-object v13, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->WHATS_NEW_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v13}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v13

    .line 14361
    iget-object v14, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v14, v9, v5}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 14363
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14364
    invoke-static {v2, v3, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 14366
    invoke-virtual {v13, v11}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    .line 14975
    iput-object v2, v3, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 14367
    invoke-virtual {v3, v10}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v2

    const/4 v3, 0x2

    .line 15160
    invoke-virtual {v2, v3, v10}, Landroidx/core/app/g$e;->a(IZ)V

    .line 14367
    invoke-virtual {v2, v6}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v2

    .line 14368
    invoke-virtual {v2, v9}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    const/4 v2, -0x1

    .line 14369
    invoke-virtual {v13, v2}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    .line 14370
    invoke-virtual {v13, v10}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    const/16 v2, 0xd

    const-string v3, "com.callapp.contacts.ACTION_DISMISS_WHATS_NEW_NOTIFICATION"

    .line 14371
    invoke-static {v13, v2, v3, v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 14373
    invoke-virtual {v1, v2, v13}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 2139
    :cond_19
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c()V

    .line 2140
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a()V

    .line 2142
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->b()V

    .line 15334
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "Result.success()"

    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
