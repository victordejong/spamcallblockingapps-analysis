.class Lcom/bytedance/sdk/openadsdk/d/q$11;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->a:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v2, "code"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    const-string v4, "msg"

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$11;->c:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "render_error"

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
