.class final Lcom/facebook/appevents/f/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/f/a;
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
    .locals 0

    .line 228
    iput-wide p1, p0, Lcom/facebook/appevents/f/a$5;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/f/a$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 231
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/facebook/appevents/f/g;

    iget-wide v1, p0, Lcom/facebook/appevents/f/a$5;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/f/g;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/f/a;->a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;

    .line 237
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/appevents/f/a$5;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1101
    iput-object v1, v0, Lcom/facebook/appevents/f/g;->b:Ljava/lang/Long;

    .line 238
    invoke-static {}, Lcom/facebook/appevents/f/a;->k()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_2

    .line 242
    new-instance v0, Lcom/facebook/appevents/f/a$5$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/f/a$5$1;-><init>(Lcom/facebook/appevents/f/a$5;)V

    .line 261
    invoke-static {}, Lcom/facebook/appevents/f/a;->l()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/f/a;->m()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 264
    invoke-static {}, Lcom/facebook/appevents/f/a;->j()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 263
    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcom/facebook/appevents/f/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 265
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 268
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 269
    iget-wide v2, p0, Lcom/facebook/appevents/f/a$5;->a:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/facebook/appevents/f/a$5;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/f/d;->a(Ljava/lang/String;J)V

    .line 274
    invoke-static {}, Lcom/facebook/appevents/f/a;->h()Lcom/facebook/appevents/f/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/f/g;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 275
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
