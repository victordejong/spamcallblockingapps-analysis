.class Lcom/bytedance/sdk/openadsdk/d/q$2;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONObject;)V
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

    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 197
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v5, "ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$2;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "webview_load_error"

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
