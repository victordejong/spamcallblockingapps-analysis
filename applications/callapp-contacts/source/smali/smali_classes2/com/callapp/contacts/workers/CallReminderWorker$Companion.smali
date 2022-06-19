.class public final Lcom/callapp/contacts/workers/CallReminderWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/CallReminderWorker;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/CallReminderWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "notif_id",
        "cancelJob",
        "",
        "jobId",
        "scheduleJob",
        "notificationId",
        "",
        "notificationTime",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "jobId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 34
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/u;->a(Ljava/util/UUID;)Landroidx/work/n;

    return-void
.end method


# virtual methods
.method public final a(IJ)Ljava/lang/String;
    .locals 2

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 22
    new-instance v0, Landroidx/work/d$a;

    invoke-direct {v0}, Landroidx/work/d$a;-><init>()V

    .line 23
    invoke-static {}, Lcom/callapp/contacts/workers/CallReminderWorker;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/work/d$a;->a(Ljava/lang/String;I)Landroidx/work/d$a;

    .line 53
    new-instance p1, Landroidx/work/m$a;

    const-class v1, Lcom/callapp/contacts/workers/CallReminderWorker;

    invoke-direct {p1, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 25
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {v0}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/m$a;->a(Landroidx/work/d;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {p1}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p1

    const-string p2, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/m;

    .line 27
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 1184
    invoke-static {p2}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p2

    .line 27
    move-object p3, p1

    check-cast p3, Landroidx/work/v;

    invoke-virtual {p2, p3}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    .line 2077
    iget-object p1, p1, Landroidx/work/v;->a:Ljava/util/UUID;

    .line 29
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "workRequest.id.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lcom/callapp/contacts/workers/CallReminderWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
