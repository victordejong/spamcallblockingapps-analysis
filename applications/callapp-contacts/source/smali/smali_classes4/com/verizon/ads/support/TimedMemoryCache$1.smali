.class Lcom/verizon/ads/support/TimedMemoryCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/support/TimedMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/support/TimedMemoryCache;


# direct methods
.method constructor <init>(Lcom/verizon/ads/support/TimedMemoryCache;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/verizon/ads/support/TimedMemoryCache$1;->a:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/support/TimedMemoryCache;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    iget-object v2, p0, Lcom/verizon/ads/support/TimedMemoryCache$1;->a:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-static {v2, v0, v1}, Lcom/verizon/ads/support/TimedMemoryCache;->a(Lcom/verizon/ads/support/TimedMemoryCache;J)V

    .line 232
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache$1;->a:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-static {v0}, Lcom/verizon/ads/support/TimedMemoryCache;->a(Lcom/verizon/ads/support/TimedMemoryCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-static {}, Lcom/verizon/ads/support/TimedMemoryCache;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Error occurred while cleaner was sleeping"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    :goto_0
    invoke-static {}, Lcom/verizon/ads/support/TimedMemoryCache;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Stopping cleaner"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/verizon/ads/support/TimedMemoryCache$1;->a:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-static {v0}, Lcom/verizon/ads/support/TimedMemoryCache;->b(Lcom/verizon/ads/support/TimedMemoryCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
