.class final Lcom/facebook/a/d/a$5;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a;->e(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/facebook/a/d/a$5;->a:J

    iput-object p3, p0, Lcom/facebook/a/d/a$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 238
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v2

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Lcom/facebook/a/d/i;

    iget-wide v4, p0, Lcom/facebook/a/d/a$5;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/a/d/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v2}, Lcom/facebook/a/d/a;->a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;

    .line 244
    :cond_0
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v2

    iget-wide v4, p0, Lcom/facebook/a/d/a$5;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/a/d/i;->a(Ljava/lang/Long;)V

    .line 245
    invoke-static {}, Lcom/facebook/a/d/a;->j()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    .line 249
    new-instance v2, Lcom/facebook/a/d/a$5$1;

    invoke-direct {v2, p0}, Lcom/facebook/a/d/a$5$1;-><init>(Lcom/facebook/a/d/a$5;)V

    .line 267
    invoke-static {}, Lcom/facebook/a/d/a;->k()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 268
    :try_start_0
    invoke-static {}, Lcom/facebook/a/d/a;->l()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 270
    invoke-static {}, Lcom/facebook/a/d/a;->i()I

    move-result v5

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-interface {v4, v2, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/a/d/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 272
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_1
    invoke-static {}, Lcom/facebook/a/d/a;->m()J

    move-result-wide v2

    .line 277
    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    iget-wide v0, p0, Lcom/facebook/a/d/a$5;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/facebook/a/d/a$5;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/facebook/a/d/d;->a(Ljava/lang/String;J)V

    .line 285
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/a/d/i;->j()V

    .line 286
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
