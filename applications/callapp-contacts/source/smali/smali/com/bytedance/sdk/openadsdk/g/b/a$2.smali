.class Lcom/bytedance/sdk/openadsdk/g/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/b/a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/g/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/b/a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/g/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            ">;)V"
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "creatives"

    .line 69
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/g/b/a;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/b/a;->a(Lcom/bytedance/sdk/openadsdk/g/b/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/b/a$2;->a:Lcom/bytedance/sdk/openadsdk/g/b/a;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/b/a;->b(Lcom/bytedance/sdk/openadsdk/g/b/a;Ljava/lang/Object;)V

    .line 74
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[JSB-RSP] version: 3 data="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DoGetAdsFromNetwork"

    const-string v0, "onAdLoaded error"

    .line 78
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
