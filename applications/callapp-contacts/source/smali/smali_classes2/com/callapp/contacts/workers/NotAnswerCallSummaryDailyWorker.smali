.class public final Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;
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
        "Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;",
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
.field public static final a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

.field private static final b:I

.field private static c:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    const/16 v0, 0x10

    .line 49
    sput v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->b:I

    const-string v0, "job_not_answer_daily_tag"

    .line 52
    sput-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    .line 44
    sget v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->b:I

    return v0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->c:Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 189
    const-class v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;

    :try_start_0
    const-string v1, "NotAnswerCallSummaryDailyWorker onRunDailyJob"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->K:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a()V

    const-string v1, "Not showing NotAnswerCallSummaryDaily due to lockscreen"

    .line 194
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a()V

    .line 1334
    :goto_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 199
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    sget-object v1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    return-object v0

    .line 191
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 201
    sget-object v1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    throw v0
.end method
