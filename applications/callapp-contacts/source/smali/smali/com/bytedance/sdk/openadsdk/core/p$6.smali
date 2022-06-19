.class Lcom/bytedance/sdk/openadsdk/core/p$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/o$b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1191
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1193
    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1199
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1204
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    goto :goto_0

    :catchall_0
    nop

    .line 1210
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$b;

    move-result-object p1

    .line 1211
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    return-void

    .line 1215
    :cond_2
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$b;->c:Lcom/bytedance/sdk/openadsdk/core/e/n;

    if-nez v0, :cond_3

    .line 1216
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    return-void

    .line 1219
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(Lcom/bytedance/sdk/openadsdk/core/p$b;)V

    return-void

    .line 1221
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 1228
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 1230
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v0, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 1232
    iget-object v2, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_1

    .line 1233
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1235
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$6;->a:Lcom/bytedance/sdk/openadsdk/core/o$b;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    return-void
.end method
