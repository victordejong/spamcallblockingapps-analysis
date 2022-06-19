.class Lcom/bytedance/sdk/openadsdk/k/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/k/g$b;Lcom/bytedance/sdk/openadsdk/k/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/g;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/k/b;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 335
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/k/b;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g;->a(Lcom/bytedance/sdk/openadsdk/k/g;)Lcom/bytedance/sdk/openadsdk/k/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/g$1;->a:Lcom/bytedance/sdk/openadsdk/k/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/g;->g()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/k/d;->a(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 337
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
