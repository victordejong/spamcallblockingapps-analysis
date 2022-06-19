.class public Lcom/bytedance/sdk/openadsdk/core/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONArray;

.field public e:I

.field public f:J

.field public g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->b:I

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->c:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->d:Lorg/json/JSONArray;

    const/4 v1, 0x1

    .line 18
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/j;->g:Lorg/json/JSONObject;

    return-void
.end method
