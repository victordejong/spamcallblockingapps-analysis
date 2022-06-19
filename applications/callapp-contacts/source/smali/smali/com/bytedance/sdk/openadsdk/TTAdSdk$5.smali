.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTAdConfig;


# direct methods
.method constructor <init>(Ljava/lang/String;JZLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .locals 0

    .line 357
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->a:J

    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->b:Z

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->c:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 360
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->c()Z

    move-result v0

    .line 363
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "duration"

    .line 364
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "is_async"

    .line 365
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->b:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "is_multi_process"

    .line 366
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->c:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "is_debug"

    .line 367
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->c:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isDebug()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "is_use_texture_view"

    .line 368
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$5;->c:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isUseTextureView()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "is_activate_init"

    .line 369
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 370
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(Z)V

    .line 371
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    const-string v3, "pangle_sdk_init"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "TTAdSdk"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pangle_sdk_init = "

    aput-object v4, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    .line 372
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method
