.class public final Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/CallAppDailyWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u0011\u001a\u00020\u0010J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0007J\u0006\u0010\u0018\u001a\u00020\u0010J\u0008\u0010\u0019\u001a\u00020\u0014H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\nX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;",
        "",
        "()V",
        "AFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION",
        "",
        "getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION",
        "()J",
        "SHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE",
        "getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "TIME_TO_SHOW_UPGRADE_NOTIFICATION",
        "getTIME_TO_SHOW_UPGRADE_NOTIFICATION",
        "ensureMandatoryWorkersAreScheduled",
        "",
        "handleDailyTask",
        "handleValidateTask",
        "isWorkerNotScheduled",
        "",
        "workInfoList",
        "",
        "Landroidx/work/WorkInfo;",
        "scheduleJob",
        "shouldShowUpgradeNotification",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/t;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/t;

    .line 3077
    iget-object v0, v0, Landroidx/work/t;->b:Landroidx/work/t$a;

    const-string v1, "workInfo.state"

    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/t$a;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 60
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 60
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    move-result-object v0

    const-string v1, "WorkManager.getInstance(\u2026).cancelAllWorkByTag(TAG)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    const-class v1, Lcom/callapp/contacts/workers/CallAppDailyWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    new-instance v0, Landroidx/work/o$a;

    const-class v1, Lcom/callapp/contacts/workers/CallAppDailyWorker;

    const-wide/16 v2, 0x18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/work/o$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/o$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/o$a;

    invoke-virtual {v0}, Landroidx/work/o$a;->c()Landroidx/work/v;

    move-result-object v0

    const-string v1, "PeriodicWorkRequest.Buil\u2026OURS).addTag(TAG).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/o;

    .line 67
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 67
    check-cast v0, Landroidx/work/v;

    invoke-virtual {v1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getAFTER_HOW_MUCH_TIME_TO_SHOW_WHATS_NEW_NOTIFICATION()J
    .locals 2

    .line 55
    invoke-static {}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSHOW_WHATS_NEW_NOTIFICATION_AFTER_UPGRADE()J
    .locals 2

    .line 54
    invoke-static {}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTIME_TO_SHOW_UPGRADE_NOTIFICATION()J
    .locals 2

    .line 56
    invoke-static {}, Lcom/callapp/contacts/workers/CallAppDailyWorker;->d()J

    move-result-wide v0

    return-wide v0
.end method
