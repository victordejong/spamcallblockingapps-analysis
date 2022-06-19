.class public final Lcom/flurry/sdk/kt$2;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/kt;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/kt;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/kt$2;->a:Lcom/flurry/sdk/kt;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-static {p1}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/mg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/flurry/sdk/kt$2;->a:Lcom/flurry/sdk/kt;

    invoke-static {p2}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/kt$2;->a:Lcom/flurry/sdk/kt;

    invoke-static {v0}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/flurry/sdk/kt$2;->a:Lcom/flurry/sdk/kt;

    invoke-static {p2, p1}, Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt;Lcom/flurry/sdk/mg;)V

    new-instance p2, Lcom/flurry/sdk/kt$2$1;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/kt$2$1;-><init>(Lcom/flurry/sdk/kt$2;Lcom/flurry/sdk/mg;)V

    invoke-virtual {p2}, Lcom/flurry/sdk/mf;->run()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
