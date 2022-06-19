.class public Lcom/kedlin/cca/core/sync/ServerSync;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ServerSync"

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/util/concurrent/ScheduledExecutorService;

.field public static d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public static e:Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

.field public static f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kedlin/cca/core/sync/ServerSync;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".AWKSNK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->e:Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kedlin/cca/core/sync/ServerSync;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b()Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->e:Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    return-object v0
.end method

.method public static synthetic c(Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;)Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;
    .locals 0

    sput-object p0, Lcom/kedlin/cca/core/sync/ServerSync;->e:Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    return-object p0
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->m()V

    return-void
.end method

.method public static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/kedlin/cca/core/sync/ServerSync;->f:J

    return-wide v0
.end method

.method public static synthetic f(J)J
    .locals 0

    sput-wide p0, Lcom/kedlin/cca/core/sync/ServerSync;->f:J

    return-wide p0
.end method

.method public static synthetic g()Z
    .locals 1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->j()Z

    move-result v0

    return v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->n()V

    return-void
.end method

.method public static j()Z
    .locals 7

    sget-object v0, Lr71$a;->x1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Lr71$a;->X0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->g()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-object v1, Lr71$a;->w1:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->g()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v3, Lr71$a;->X0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->g()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v0, v3

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public static k()V
    .locals 5

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/kedlin/cca/core/sync/ServerSync$b;

    invoke-direct {v1}, Lcom/kedlin/cca/core/sync/ServerSync$b;-><init>()V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public static l()V
    .locals 3

    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->e:Lcom/kedlin/cca/core/sync/ServerSync$SyncReceiver;

    if-nez v0, :cond_0

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/kedlin/cca/core/sync/ServerSync$a;

    invoke-direct {v2, v0}, Lcom/kedlin/cca/core/sync/ServerSync$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kedlin/cca/core/sync/ServerSync;->f:J

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->n()V

    return-void
.end method

.method public static m()V
    .locals 3

    sget-object v0, Lq71$d;->b:Lq71$d;

    invoke-static {v0}, Lr71;->F(Lq71$d;)V

    :try_start_0
    invoke-static {}, Lk61;->h()V

    sget-object v0, Lq71$d;->d:Lq71$d;

    invoke-static {v0}, Lr71;->F(Lq71$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    instance-of v1, v0, Lk61$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lk61$a;

    invoke-virtual {v1}, Lk61$a;->b()I

    move-result v1

    const/16 v2, -0x1f4

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/kedlin/cca/core/sync/ServerSync;->a:Ljava/lang/String;

    const-string v2, "Unable to synchronize with server"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kedlin/cca/core/sync/ServerSync;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Unable to synchronize with server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lq71$d;->c:Lq71$d;

    invoke-static {v0}, Lr71;->F(Lq71$d;)V

    :goto_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lm91$c;->f:Lm91$c;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void
.end method

.method public static n()V
    .locals 5

    sget-object v0, Lta1;->H:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfa1;->w()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    sget-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/kedlin/cca/core/sync/ServerSync$d;

    invoke-direct {v1}, Lcom/kedlin/cca/core/sync/ServerSync$d;-><init>()V

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/kedlin/cca/core/sync/ServerSync;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static o()V
    .locals 3

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/kedlin/cca/core/sync/ServerSync$c;

    invoke-direct {v2, v0}, Lcom/kedlin/cca/core/sync/ServerSync$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
