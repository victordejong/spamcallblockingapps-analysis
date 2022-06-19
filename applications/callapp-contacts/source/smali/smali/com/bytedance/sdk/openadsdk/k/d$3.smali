.class Lcom/bytedance/sdk/openadsdk/k/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/d;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 414
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 416
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/d$3;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/d;->b(Lcom/bytedance/sdk/openadsdk/k/d;)Lcom/bytedance/sdk/openadsdk/k/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/k/d$b;->clear()V

    .line 421
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/k/b;

    .line 424
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/k/b;->a()V

    .line 426
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v2, :cond_2

    const-string v2, "TAG_PROXY_Preloader"

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PreloadTask: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canceled!!!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 421
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
