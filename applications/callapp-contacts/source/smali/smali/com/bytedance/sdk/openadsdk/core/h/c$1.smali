.class Lcom/bytedance/sdk/openadsdk/core/h/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/c;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 249
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 252
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x3

    const-string v3, "SdkSettingsHelper"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    .line 255
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v5, "setting data error: "

    .line 261
    invoke-static {v3, v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 268
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    iget-object v4, p1, Lcom/bytedance/sdk/adnet/face/a$a;->h:Ljava/util/Map;

    .line 269
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    :catchall_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/c;->d()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 275
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b(Z)Z

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a(Lorg/json/JSONObject;)V

    const-string p1, "Fetch setting success"

    .line 278
    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    nop

    .line 282
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b()V

    :cond_4
    return-void

    .line 289
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 297
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()V

    const-string p1, "SdkSettingsHelper"

    const-string v0, "Fetch setting fail"

    .line 298
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
