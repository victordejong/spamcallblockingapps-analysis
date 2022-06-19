.class final Lcom/bytedance/sdk/openadsdk/k/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d$b;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/d$b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/d$b;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d$5;->a:Lcom/bytedance/sdk/openadsdk/k/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 543
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/k/d$5;->a:Lcom/bytedance/sdk/openadsdk/k/d$b;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/k/d$b;->offerFirst(Ljava/lang/Object;)Z

    .line 544
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
