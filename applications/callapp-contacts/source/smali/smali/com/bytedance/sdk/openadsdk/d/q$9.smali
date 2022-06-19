.class Lcom/bytedance/sdk/openadsdk/d/q$9;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->e(Lcom/bytedance/sdk/openadsdk/d/q;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    monitor-exit v0

    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->c(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->c(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 393
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "native_switchBackgroundAndForeground"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->c(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :catch_0
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->d(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->d(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 399
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intercept_source"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->d(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    :catch_1
    :cond_2
    :try_start_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "webview_time_track"

    .line 404
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "WebviewTimeTrack"

    .line 406
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/d/q;->f(Lcom/bytedance/sdk/openadsdk/d/q;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$9;->a:Lcom/bytedance/sdk/openadsdk/d/q;

    .line 409
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/d/q;->g(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "webview_time_track"

    .line 408
    invoke-static {v2, v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 410
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
