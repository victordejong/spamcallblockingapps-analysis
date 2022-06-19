.class public Lcom/bytedance/sdk/openadsdk/core/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/bytedance/sdk/openadsdk/core/e/n;


# direct methods
.method private constructor <init>(IZLcom/bytedance/sdk/openadsdk/core/e/n;)V
    .locals 0

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    .line 1249
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$b;->b:Z

    .line 1250
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p$b;->c:Lcom/bytedance/sdk/openadsdk/core/e/n;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$b;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "code"

    .line 1257
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "verify"

    .line 1258
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "data"

    .line 1259
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1260
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/e/n;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/e/n;-><init>()V

    if-eqz p0, :cond_1

    :try_start_0
    const-string v3, "reason"

    .line 1263
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a(I)V

    const-string v3, "corp_type"

    .line 1264
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/n;->b(I)V

    const-string v3, "reward_amount"

    .line 1265
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/n;->c(I)V

    const-string v3, "reward_name"

    .line 1266
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/e/n;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1269
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1271
    :cond_1
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/p$b;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p$b;-><init>(IZLcom/bytedance/sdk/openadsdk/core/e/n;)V

    return-object p0
.end method
