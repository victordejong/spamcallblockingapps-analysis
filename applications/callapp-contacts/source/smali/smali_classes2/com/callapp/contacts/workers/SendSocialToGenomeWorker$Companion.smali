.class public final Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;",
        "",
        "()V",
        "HOURS",
        "",
        "SOCIAL_NET_IDS_KEY",
        "",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "scheduleJob",
        "",
        "socialNetIds",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    .line 31
    invoke-static {}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-string v3, "calendar"

    .line 34
    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 36
    new-instance v0, Landroidx/work/d$a;

    invoke-direct {v0}, Landroidx/work/d$a;-><init>()V

    .line 37
    invoke-static {}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/work/d$a;->a(Ljava/lang/String;[I)Landroidx/work/d$a;

    .line 46
    new-instance p1, Landroidx/work/m$a;

    const-class v1, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;

    invoke-direct {p1, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 39
    invoke-virtual {v0}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/m$a;->a(Landroidx/work/d;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;->getTAG()Ljava/lang/String;

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

    .line 41
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 41
    check-cast p1, Landroidx/work/v;

    invoke-virtual {v0, p1}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
