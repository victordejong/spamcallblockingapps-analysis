.class Lcom/bytedance/sdk/a/b/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/b/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/j;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/a/b/j;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf4240

    .line 65
    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    monitor-enter v2

    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/j$1;->a:Lcom/bytedance/sdk/a/b/j;

    long-to-int v1, v0

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 72
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
