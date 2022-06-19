.class Lcom/bytedance/sdk/openadsdk/d/q$6;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    monitor-exit v0

    return-void

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 341
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 342
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v2, "jsb"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$6;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "webview_jsb_end"

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
