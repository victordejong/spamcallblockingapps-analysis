.class public final Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;
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
        "Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;",
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
.field public static final a:Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    const-string v0, "YESTERDAY_CALLAPP_PLUS_LIST"

    .line 25
    sput-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->b:Ljava/lang/String;

    const-string v0, "job_callapp_plus_daily_tag"

    .line 26
    sput-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    .line 66
    :try_start_0
    const-class v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;

    const-string v1, "CallAppPlusSummaryDailyWorker onRunDailyJob"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    .line 1029
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->G:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.callAppPlusDailySummaryEnabled.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->getLast24ContactPlusItemsData()Ljava/util/List;

    move-result-object v1

    .line 1031
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 1033
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;->getYESTERDAY_CALLAPP_PLUS_LIST()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1035
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 1034
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_1
    :goto_0
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "Result.success()"

    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;->a()V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;->a()V

    throw v0
.end method
