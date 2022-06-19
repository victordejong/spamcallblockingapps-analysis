.class public Lca1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lca1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()V
    .locals 5

    sget-object v0, Lca1;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    sget-object v0, Lca1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lca1$a;

    invoke-direct {v1}, Lca1$a;-><init>()V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lca1;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
