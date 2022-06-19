.class public final Lb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J4\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\u0008\u0012\u00060\u001dj\u0002`\u001e0\u001cj\u000c\u0012\u0008\u0012\u00060\u001dj\u0002`\u001e`\u001fJ.\u0010 \u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u001e\u0010\u001b\u001a\u001a\u0012\u0008\u0012\u00060\u001dj\u0002`\u001e0\u001cj\u000c\u0012\u0008\u0012\u00060\u001dj\u0002`\u001e`\u001fJ\u000e\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ$\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0#2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010%\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006&"
    }
    d2 = {
        "Lcoroutinesrunner/CoroutinesRunner$Companion;",
        "",
        "()V",
        "syncThreadPool",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "getSyncThreadPool",
        "()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "threadPool",
        "getThreadPool",
        "await",
        "",
        "task",
        "Lcom/callapp/contacts/manager/task/Task;",
        "timeout",
        "",
        "loadAsync",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "loader",
        "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
        "loadContext",
        "Lcom/callapp/contacts/loader/api/LoadContext;",
        "loadWithoutUpdate",
        "Lcom/callapp/contacts/loader/EagerContactLoader;",
        "runAsyncTasks",
        "",
        "Lkotlinx/coroutines/Job;",
        "runnables",
        "Ljava/util/ArrayList;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "Lkotlin/collections/ArrayList;",
        "runSyncTasks",
        "runTask",
        "scheduleTask",
        "Lkotlinx/coroutines/Deferred;",
        "waittime",
        "updateAfterLoadDone",
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
    invoke-direct {p0}, Lb/a$a;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/c/f;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/bv;",
            ">;"
        }
    .end annotation

    const-string v0, "coroutineContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    check-cast p1, Ljava/lang/Iterable;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Runnable;

    .line 95
    sget-object v2, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v2, Lkotlinx/coroutines/ak;

    new-instance v3, Lb/a$a$d;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lb/a$a$d;-><init>(Ljava/lang/Runnable;Lkotlin/c/d;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p0, v3}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/callapp/contacts/manager/task/Task;JLkotlin/c/f;)Lkotlinx/coroutines/as;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/task/Task;",
            "J",
            "Lkotlin/c/f;",
            ")",
            "Lkotlinx/coroutines/as<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v0, Lkotlinx/coroutines/ak;

    new-instance v1, Lb/a$a$h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lb/a$a$h;-><init>(JLcom/callapp/contacts/manager/task/Task;Lkotlin/c/d;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x2

    invoke-static {v0, p3, v1, p0}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/as;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/manager/task/Task;)V
    .locals 4

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v0, Lkotlinx/coroutines/ak;

    invoke-static {}, Lkotlinx/coroutines/az;->a()Lkotlinx/coroutines/af;

    move-result-object v1

    check-cast v1, Lkotlin/c/f;

    new-instance v2, Lb/a$a$g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lb/a$a$g;-><init>(Lcom/callapp/contacts/manager/task/Task;Lkotlin/c/d;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/bv;

    return-void
.end method

.method public static b(Lkotlin/c/f;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "coroutineContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v0}, Lkotlin/jvm/internal/ab$e;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/Runnable;

    .line 109
    sget-object v5, Lkotlinx/coroutines/bo;->a:Lkotlinx/coroutines/bo;

    check-cast v5, Lkotlinx/coroutines/ak;

    new-instance v6, Lb/a$a$f;

    invoke-direct {v6, v3, v4}, Lb/a$a$f;-><init>(Ljava/lang/Runnable;Lkotlin/c/d;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x2

    invoke-static {v5, p0, v6, v3}, Lkotlinx/coroutines/h;->a(Lkotlinx/coroutines/ak;Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/as;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 108
    iput-object v2, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 118
    new-instance p0, Lb/a$a$e;

    invoke-direct {p0, v0, p1, v4}, Lb/a$a$e;-><init>(Lkotlin/jvm/internal/ab$e;Ljava/util/ArrayList;Lkotlin/c/d;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    .line 1001
    invoke-static {v4, p0, p1}, Lkotlinx/coroutines/i;->a(Lkotlin/c/f;Lkotlin/jvm/functions/Function2;I)Ljava/lang/Object;

    return-void
.end method
