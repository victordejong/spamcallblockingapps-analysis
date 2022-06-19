.class public Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/TimedMemoryCache;->startCleaner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/utils/TimedMemoryCache;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;->this$0:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$100()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;->this$0:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-static {v2, v0, v1}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$200(Lcom/millennialmedia/internal/utils/TimedMemoryCache;J)V

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;->this$0:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$300(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error occurred while cleaner was sleeping"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping cleaner"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;->this$0:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$400(Lcom/millennialmedia/internal/utils/TimedMemoryCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
