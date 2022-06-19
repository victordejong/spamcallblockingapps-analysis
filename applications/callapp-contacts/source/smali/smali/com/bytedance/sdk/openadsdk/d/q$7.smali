.class Lcom/bytedance/sdk/openadsdk/d/q$7;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 366
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$7;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->i()V

    .line 367
    monitor-exit v0

    return-void

    .line 358
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
