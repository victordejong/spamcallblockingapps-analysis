.class public final Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "getTAG",
        "()Ljava/lang/String;",
        "deviceId_param",
        "loadingAdLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getLoadingAdLock",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "missedCallType_param",
        "multiSizeAdLoader",
        "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;",
        "numberOfMissedCalls_param",
        "phone_param",
        "time_param",
        "scheduleJob",
        "",
        "phone",
        "Lcom/callapp/framework/phone/Phone;",
        "deviceId",
        "",
        "time",
        "numberOfMissedCalls",
        "",
        "missedCallType",
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;JJII)V
    .locals 2

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroidx/work/d$a;

    invoke-direct {v0}, Landroidx/work/d$a;-><init>()V

    .line 47
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/work/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    .line 48
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/work/d$a;->a(Ljava/lang/String;J)Landroidx/work/d$a;

    .line 49
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4, p5}, Landroidx/work/d$a;->a(Ljava/lang/String;J)Landroidx/work/d$a;

    .line 50
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p6}, Landroidx/work/d$a;->a(Ljava/lang/String;I)Landroidx/work/d$a;

    .line 51
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p7}, Landroidx/work/d$a;->a(Ljava/lang/String;I)Landroidx/work/d$a;

    .line 149
    new-instance p1, Landroidx/work/m$a;

    const-class p2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;

    invoke-direct {p1, p2}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 53
    move-object p2, p0

    check-cast p2, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;

    invoke-virtual {p2}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {v0}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/m$a;->a(Landroidx/work/d;)Landroidx/work/v$a;

    move-result-object p1

    check-cast p1, Landroidx/work/m$a;

    invoke-virtual {p1}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p1

    const-string p2, "OneTimeWorkRequestBuilde\u2026ata(data.build()).build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/m;

    .line 55
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 1184
    invoke-static {p2}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p2

    .line 55
    check-cast p1, Landroidx/work/v;

    invoke-virtual {p2, p1}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lcom/callapp/contacts/workers/MissedNotAnsweredPreloadAdWorker;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
