.class public Ld2/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/d1;


# direct methods
.method public constructor <init>(Ld2/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/a1;->a:Ld2/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 8

    .line 1
    iget-object p1, p0, Ld2/a1;->a:Ld2/d1;

    .line 2
    iget-object v0, p1, Ld2/d1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p1, Ld2/d1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    :cond_0
    iget-object v0, p1, Ld2/d1;->b:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    iget-object v1, p1, Ld2/d1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ld2/c1;

    invoke-direct {v2, p1}, Ld2/c1;-><init>(Ld2/d1;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p1, Ld2/d1;->b:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error when scheduling network checks: "

    .line 6
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v2, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Ld2/d1;->a()V

    :cond_1
    return-void
.end method
