.class public final Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;",
        "",
        "()V",
        "NEXT_CHECK_IN_MINUTES",
        "",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "scheduleJob",
        "notAnsweredTime",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 2

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "cal"

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 36
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Prefs.enableAutomationTestFlow.get()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0xc

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->b()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    .line 41
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 66
    new-instance v0, Landroidx/work/m$a;

    const-class v1, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;

    invoke-direct {v0, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 42
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {p1}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p1

    const-string p2, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/m;

    .line 44
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 1184
    invoke-static {p2}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p2

    .line 44
    move-object v0, p1

    check-cast v0, Landroidx/work/v;

    invoke-virtual {p2, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    .line 2077
    iget-object p1, p1, Landroidx/work/v;->a:Ljava/util/UUID;

    .line 45
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "workRequest.id.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/callapp/contacts/workers/NotAnsweredNotificationWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
