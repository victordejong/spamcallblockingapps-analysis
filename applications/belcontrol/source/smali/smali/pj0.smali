.class public Lpj0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "pj0"

.field public static volatile b:Loj0;

.field public static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public static d:Ljava/util/concurrent/ScheduledFuture;

.field public static final e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Loj0;

    invoke-direct {v0}, Loj0;-><init>()V

    sput-object v0, Lpj0;->b:Loj0;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lpj0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lpj0$a;

    invoke-direct {v0}, Lpj0$a;-><init>()V

    sput-object v0, Lpj0;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    sget-object v0, Lpj0;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static synthetic b(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    sput-object p0, Lpj0;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic c()Loj0;
    .locals 1

    sget-object v0, Lpj0;->b:Loj0;

    return-object v0
.end method

.method public static synthetic d(Loj0;)Loj0;
    .locals 0

    sput-object p0, Lpj0;->b:Loj0;

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lpj0;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lpj0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static synthetic g(Llj0;Lcom/facebook/GraphRequest;Laj0;Lzj0;Lwj0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lpj0;->m(Llj0;Lcom/facebook/GraphRequest;Laj0;Lzj0;Lwj0;)V

    return-void
.end method

.method public static h(Llj0;Lnj0;)V
    .locals 2

    sget-object v0, Lpj0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lpj0$d;

    invoke-direct {v1, p0, p1}, Lpj0$d;-><init>(Llj0;Lnj0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i(Llj0;Lzj0;ZLwj0;)Lcom/facebook/GraphRequest;
    .locals 7

    invoke-virtual {p0}, Llj0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnm0;->o(Ljava/lang/String;Z)Lmm0;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "%s/activities"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, v0, v3, v3}, Lcom/facebook/GraphRequest;->K(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->y()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p0}, Llj0;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "access_token"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lxj0;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "device_token"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lsj0;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "install_referrer"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v4}, Lcom/facebook/GraphRequest;->Z(Landroid/os/Bundle;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lmm0;->p()Z

    move-result v1

    :cond_3
    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1, p2}, Lzj0;->e(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result p2

    if-nez p2, :cond_4

    return-object v3

    :cond_4
    iget v1, p3, Lwj0;->a:I

    add-int/2addr v1, p2

    iput v1, p3, Lwj0;->a:I

    new-instance p2, Lpj0$e;

    invoke-direct {p2, p0, v0, p1, p3}, Lpj0$e;-><init>(Llj0;Lcom/facebook/GraphRequest;Lzj0;Lwj0;)V

    invoke-virtual {v0, p2}, Lcom/facebook/GraphRequest;->V(Lcom/facebook/GraphRequest$e;)V

    return-object v0
.end method

.method public static j(Luj0;)V
    .locals 2

    sget-object v0, Lpj0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lpj0$c;

    invoke-direct {v1, p0}, Lpj0$c;-><init>(Luj0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static k(Luj0;)V
    .locals 3

    invoke-static {}, Lqj0;->c()Lyj0;

    move-result-object v0

    sget-object v1, Lpj0;->b:Loj0;

    invoke-virtual {v1, v0}, Loj0;->b(Lyj0;)V

    :try_start_0
    sget-object v0, Lpj0;->b:Loj0;

    invoke-static {p0, v0}, Lpj0;->o(Luj0;Loj0;)Lwj0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lwj0;->a:I

    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lwj0;->b:Lvj0;

    const-string v1, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnf;->d(Landroid/content/Intent;)Z

    :cond_0
    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lpj0;->a:Ljava/lang/String;

    const-string v1, "Caught unexpected exception while flushing app events: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Llj0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lpj0;->b:Loj0;

    invoke-virtual {v0}, Loj0;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static m(Llj0;Lcom/facebook/GraphRequest;Laj0;Lzj0;Lwj0;)V
    .locals 9

    invoke-virtual {p2}, Laj0;->g()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    sget-object v1, Lvj0;->a:Lvj0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->c()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    sget-object v1, Lvj0;->c:Lvj0;

    const-string p2, "Failed: No Connectivity"

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Laj0;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "Failed:\n  Response: %s\n  Error %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lvj0;->b:Lvj0;

    goto :goto_0

    :cond_1
    const-string p2, "Success"

    :goto_0
    sget-object v5, Ldj0;->f:Ldj0;

    invoke-static {v5}, Lui0;->z(Ldj0;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->A()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "<Can\'t encode events for debug logging>"

    :goto_1
    sget-object v6, Ldj0;->f:Ldj0;

    sget-object v7, Lpj0;->a:Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->t()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    aput-object p2, v8, v2

    aput-object v5, v8, v4

    const-string p1, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    invoke-static {v6, v7, p1, v8}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p3, v2}, Lzj0;->b(Z)V

    sget-object p1, Lvj0;->c:Lvj0;

    if-ne v1, p1, :cond_4

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lpj0$f;

    invoke-direct {v0, p0, p3}, Lpj0$f;-><init>(Llj0;Lzj0;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    sget-object p0, Lvj0;->a:Lvj0;

    if-eq v1, p0, :cond_5

    iget-object p0, p4, Lwj0;->b:Lvj0;

    if-eq p0, p1, :cond_5

    iput-object v1, p4, Lwj0;->b:Lvj0;

    :cond_5
    return-void
.end method

.method public static n()V
    .locals 2

    sget-object v0, Lpj0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lpj0$b;

    invoke-direct {v1}, Lpj0$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static o(Luj0;Loj0;)Lwj0;
    .locals 6

    new-instance v0, Lwj0;

    invoke-direct {v0}, Lwj0;-><init>()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lui0;->r(Landroid/content/Context;)Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Loj0;->f()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llj0;

    invoke-virtual {p1, v4}, Loj0;->c(Llj0;)Lzj0;

    move-result-object v5

    invoke-static {v4, v5, v1, v0}, Lpj0;->i(Llj0;Lzj0;ZLwj0;)Lcom/facebook/GraphRequest;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Ldj0;->f:Ldj0;

    sget-object v1, Lpj0;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lwj0;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "Flushing %d events due to %s."

    invoke-static {p1, v1, p0, v3}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->g()Laj0;

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
