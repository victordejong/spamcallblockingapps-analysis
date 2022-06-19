.class public final Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;
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
        "Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;",
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
.field public static final a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    const-string v0, "YESTERDAY_MISSED_CALL_LIST"

    .line 50
    sput-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->b:Ljava/lang/String;

    const-string v0, "YESTERDAY_MISSED_CALL_TOTAL_NUMBER"

    .line 51
    sput-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->c:Ljava/lang/String;

    const-string v0, "job_missed_call_daily_tag"

    .line 55
    sput-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->d:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 192
    const-class v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;

    :try_start_0
    const-string v1, "MissedCallSummaryDailyWorker onRunDailyJob"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->M:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Result.success()"

    if-eqz v1, :cond_0

    .line 195
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "calendar"

    .line 196
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 197
    invoke-static {v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Already ran missed call summary for today"

    .line 198
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 199
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    sget-object v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    return-object v0

    .line 203
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->J:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a()V

    const-string v1, "Not showing MissedCallSummaryDaily due to lockscreen"

    .line 206
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_1
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->a()V

    .line 2334
    :goto_1
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 211
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 213
    sget-object v1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    throw v0
.end method
