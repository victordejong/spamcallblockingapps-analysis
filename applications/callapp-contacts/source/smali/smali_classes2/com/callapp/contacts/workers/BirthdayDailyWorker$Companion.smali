.class public final Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/BirthdayDailyWorker;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "scheduleJob",
        "",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 41
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 45
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 46
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 47
    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 49
    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 50
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 51
    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 54
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    :cond_1
    const-string v2, "calendar"

    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string v3, "now"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 62
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 62
    move-object v3, p0

    check-cast v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    move-result-object v0

    const-string v3, "WorkManager.getInstance(\u2026).cancelAllWorkByTag(TAG)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 64
    const-class v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 73
    :goto_1
    new-instance v0, Landroidx/work/m$a;

    const-class v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker;

    invoke-direct {v0, v3}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 67
    move-object v3, p0

    check-cast v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object v0

    const-string v1, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/m;

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 69
    check-cast v0, Landroidx/work/v;

    invoke-virtual {v1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
