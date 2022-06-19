.class public final Lcom/callapp/contacts/workers/BirthdayDailyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;
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
        "Lcom/callapp/contacts/workers/BirthdayDailyWorker;",
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
.field public static final a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    const-string v0, "job_birthday_daily_tag"

    .line 37
    sput-object v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 9

    .line 23
    :try_start_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lcom/callapp/contacts/model/BirthdayManager;->getBirthdays(Z)Ljava/util/List;

    move-result-object v1

    .line 26
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    .line 2104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 2106
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->x:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 3039
    :goto_1
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3040
    new-instance v8, Lcom/callapp/contacts/manager/NotificationManager$1;

    invoke-direct {v8, v2, v6, v7, v5}, Lcom/callapp/contacts/manager/NotificationManager$1;-><init>(Lcom/callapp/contacts/manager/NotificationManager;Lcom/callapp/contacts/model/objectbox/BirthdayData;ZI)V

    .line 3099
    invoke-virtual {v8}, Lcom/callapp/contacts/manager/NotificationManager$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2109
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->U:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 2110
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->U:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    .line 2111
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->U:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 3334
    :cond_3
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v1, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    throw v0
.end method
