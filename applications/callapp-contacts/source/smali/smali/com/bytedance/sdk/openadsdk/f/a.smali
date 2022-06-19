.class public Lcom/bytedance/sdk/openadsdk/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/c;


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private final b:Lcom/bytedance/sdk/openadsdk/f/b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/a/a/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/f/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->b:Lcom/bytedance/sdk/openadsdk/f/b;

    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/a/a/a/a/a/c;
    .locals 0

    .line 179
    invoke-static {p1, p2, p4}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p1

    .line 180
    invoke-interface {p1}, Lcom/a/a/a/a/a/c;->c()V

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 55
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;-><init>()V

    .line 56
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Lorg/json/JSONObject;)V

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 58
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->k(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez p1, :cond_2

    return-object v1

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p1

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p1

    :cond_5
    return-object v1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/f/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/f/a;
    .locals 1

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;-><init>(Lcom/bytedance/sdk/openadsdk/f/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {p1, p2, p3}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/a/a/a/a/a/c;->e()V

    return-void

    .line 127
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/a/a/a/a/a/c;

    if-eqz p2, :cond_2

    .line 130
    invoke-interface {p2}, Lcom/a/a/a/a/a/c;->e()V

    .line 132
    :cond_2
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    if-eqz p2, :cond_3

    .line 133
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->T()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;IZ)V
    .locals 7

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 90
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->b:Lcom/bytedance/sdk/openadsdk/f/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/a/c;

    if-eqz v0, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/a/a/a/a/a/c;

    move-result-object p1

    .line 103
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->b:Lcom/bytedance/sdk/openadsdk/f/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "message"

    const-string v1, "success"

    .line 158
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const-string v1, "unsubscribed"

    .line 159
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appad"

    .line 160
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/a;->b:Lcom/bytedance/sdk/openadsdk/f/b;

    const-string v0, "app_ad_event"

    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/f/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 111
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p2

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 7

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 82
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 84
    invoke-direct {p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    .line 85
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
