.class Lcom/facebook/a/d/a$5$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/d/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/d/a$5;


# direct methods
.method constructor <init>(Lcom/facebook/a/d/a$5;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/facebook/a/d/a$5$1;->a:Lcom/facebook/a/d/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-static {}, Lcom/facebook/a/d/a;->j()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/a/d/a$5$1;->a:Lcom/facebook/a/d/a$5;

    iget-object v0, v0, Lcom/facebook/a/d/a$5;->b:Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/facebook/a/d/a;->g()Lcom/facebook/a/d/i;

    move-result-object v1

    .line 256
    invoke-static {}, Lcom/facebook/a/d/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v0, v1, v2}, Lcom/facebook/a/d/j;->a(Ljava/lang/String;Lcom/facebook/a/d/i;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/facebook/a/d/i;->b()V

    .line 258
    invoke-static {v3}, Lcom/facebook/a/d/a;->a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;

    .line 261
    :cond_0
    invoke-static {}, Lcom/facebook/a/d/a;->k()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 262
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/a/d/a;->a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 263
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
