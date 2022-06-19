.class Lcom/bytedance/sdk/openadsdk/k/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/d;
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

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/d$1;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/k/b;)V
    .locals 3

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/k/b;->f()I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$1;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/k/d$1;->a:Lcom/bytedance/sdk/openadsdk/k/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/k/d;->a(Lcom/bytedance/sdk/openadsdk/k/d;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/k/e;->c:Z

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "afterExecute, key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/k/b;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
