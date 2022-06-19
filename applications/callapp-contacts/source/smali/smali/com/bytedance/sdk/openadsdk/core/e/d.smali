.class public Lcom/bytedance/sdk/openadsdk/core/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e/d$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->a:[I

    .line 35
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->b:[I

    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->c(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->d:[I

    .line 37
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->d(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->c:[I

    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->e(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->e:I

    .line 39
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->f(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->f:I

    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->g(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->g:I

    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->h(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->h:I

    .line 42
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->i(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->i:J

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->j(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->j:J

    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->k(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->k:I

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->l(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->l:I

    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->m(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->m:I

    .line 47
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->n(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->n:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/d$a;Lcom/bytedance/sdk/openadsdk/core/e/d$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/e/d$a;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->a:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    array-length v5, v1

    if-ne v5, v4, :cond_0

    const-string v5, "ad_x"

    .line 55
    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "ad_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->a:[I

    aget v6, v6, v2

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->b:[I

    if-eqz v1, :cond_1

    array-length v5, v1

    if-ne v5, v4, :cond_1

    const-string v5, "width"

    .line 59
    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->b:[I

    aget v6, v6, v2

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->c:[I

    if-eqz v1, :cond_2

    array-length v5, v1

    if-ne v5, v4, :cond_2

    const-string v5, "button_x"

    .line 63
    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "button_y"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->c:[I

    aget v6, v6, v2

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->d:[I

    if-eqz v1, :cond_3

    array-length v5, v1

    if-ne v5, v4, :cond_3

    const-string v4, "button_width"

    .line 67
    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "button_height"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->d:[I

    aget v2, v4, v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "down_x"

    .line 70
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->f:I

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_x"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->g:I

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_y"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->h:I

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "down_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->i:J

    .line 74
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "up_time"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->j:J

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "toolType"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->k:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->l:I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "source"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->m:I

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_area_type"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/e/d;->n:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
