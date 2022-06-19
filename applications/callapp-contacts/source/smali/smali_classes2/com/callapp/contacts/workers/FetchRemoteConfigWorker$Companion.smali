.class public final Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;
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
        "Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 28
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 28
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->getTAG()Ljava/lang/String;

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

    .line 30
    const-class v1, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    new-instance v0, Landroidx/work/o$a;

    const-class v1, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;

    const-wide/16 v2, 0xc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/work/o$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/o$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/o$a;

    invoke-virtual {v0}, Landroidx/work/o$a;->c()Landroidx/work/v;

    move-result-object v0

    const-string v1, "PeriodicWorkRequest.Buil\u2026OURS).addTag(TAG).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/o;

    .line 35
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2184
    invoke-static {v1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    .line 35
    check-cast v0, Landroidx/work/v;

    invoke-virtual {v1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
