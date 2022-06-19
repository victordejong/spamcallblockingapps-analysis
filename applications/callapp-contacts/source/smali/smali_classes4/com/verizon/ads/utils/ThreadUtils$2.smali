.class final Lcom/verizon/ads/utils/ThreadUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/verizon/ads/utils/ThreadUtils$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 3

    .line 165
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/utils/ThreadUtils$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 167
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->c()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Error executing runnable"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
