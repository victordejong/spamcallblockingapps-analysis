.class public final Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "scheduleJob",
        "",
        "daysToWait",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-string v1, "Calendar.getInstance()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string p1, "calendar"

    .line 35
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 43
    new-instance p1, Landroidx/work/m$a;

    const-class v0, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;

    invoke-direct {p1, v0}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Landroidx/work/m$a;->a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {p1}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p1

    const-string v0, "OneTimeWorkRequestBuilde\u2026nit.MILLISECONDS).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/m;

    .line 39
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 39
    check-cast p1, Landroidx/work/v;

    invoke-virtual {v0, p1}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/callapp/contacts/workers/TrackSuperSkinPremiumSubscriptionEndedWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
