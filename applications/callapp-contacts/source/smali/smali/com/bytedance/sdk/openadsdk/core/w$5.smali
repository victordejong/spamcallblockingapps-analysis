.class Lcom/bytedance/sdk/openadsdk/core/w$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w$a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/w$a;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/w;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/w$a;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->b:Lcom/bytedance/sdk/openadsdk/core/w$a;

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

    if-eqz p1, :cond_0

    .line 1143
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1144
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->a:Lorg/json/JSONObject;

    const-string v0, "creatives"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->b:Lcom/bytedance/sdk/openadsdk/core/w$a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1149
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->c:Lcom/bytedance/sdk/openadsdk/core/w;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->b:Lcom/bytedance/sdk/openadsdk/core/w$a;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w$5;->a:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
