.class Lcom/bytedance/sdk/openadsdk/g/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/a;->invokeMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/a;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/p;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception thrown while parsing function."

    .line 58
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/p;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "By pass invalid call: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/r;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/g/a/p;->a:I

    const-string v4, "Failed to parse invocation."

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/g/a/r;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    :cond_1
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/a;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void
.end method
