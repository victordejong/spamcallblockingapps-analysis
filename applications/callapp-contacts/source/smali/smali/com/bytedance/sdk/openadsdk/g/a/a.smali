.class public abstract Lcom/bytedance/sdk/openadsdk/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/bytedance/sdk/openadsdk/g/a/m;

.field protected c:Lcom/bytedance/sdk/openadsdk/g/a/h;

.field protected d:Landroid/os/Handler;

.field protected e:Ljava/lang/String;

.field protected volatile f:Z

.field g:Lcom/bytedance/sdk/openadsdk/g/a/g;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/a;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/p;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/p;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/g/a/p;
    .locals 8

    .line 226
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "__callback_id"

    .line 229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "func"

    .line 230
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 233
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 234
    invoke-interface {p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-object v1

    :cond_2
    :try_start_0
    const-string v1, "__msg_type"

    .line 239
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "params"

    .line 240
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSSDK"

    .line 241
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "namespace"

    .line 242
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__iframe_url"

    .line 243
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/p;->a()Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v7

    .line 245
    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v5

    .line 246
    invoke-virtual {v5, v1}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/p$a;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a/p$a;->a()Lcom/bytedance/sdk/openadsdk/g/a/p;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to create call."

    .line 254
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 256
    invoke-interface {p1, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const/4 p1, -0x1

    .line 258
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/p;->a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/g/a/p;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/g;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/g/a/g;

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->g:Lcom/bytedance/sdk/openadsdk/g/a/g;

    :goto_1
    return-object p1
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/openadsdk/g/a/j;)Landroid/content/Context;
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method final a(Lcom/bytedance/sdk/openadsdk/g/a/j;Lcom/bytedance/sdk/openadsdk/g/a/u;)V
    .locals 1

    .line 157
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/j;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->a:Landroid/content/Context;

    .line 158
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->d:Lcom/bytedance/sdk/openadsdk/g/a/h;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->c:Lcom/bytedance/sdk/openadsdk/g/a/h;

    .line 159
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->i:Lcom/bytedance/sdk/openadsdk/g/a/m;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/g;

    invoke-direct {v0, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/g;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/j;Lcom/bytedance/sdk/openadsdk/g/a/a;Lcom/bytedance/sdk/openadsdk/g/a/u;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->g:Lcom/bytedance/sdk/openadsdk/g/a/g;

    .line 161
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/g/a/j;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Lcom/bytedance/sdk/openadsdk/g/a/j;)V

    return-void
.end method

.method protected final a(Lcom/bytedance/sdk/openadsdk/g/a/p;)V
    .locals 4

    .line 111
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 118
    :cond_1
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/g;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_3

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received call with unknown namespace, "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/r;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Namespace "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/r;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void

    .line 129
    :cond_3
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/f;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/g/a/f;-><init>()V

    .line 130
    iput-object v0, v3, Lcom/bytedance/sdk/openadsdk/g/a/f;->b:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->a:Landroid/content/Context;

    iput-object v0, v3, Lcom/bytedance/sdk/openadsdk/g/a/f;->a:Landroid/content/Context;

    .line 132
    iput-object v1, v3, Lcom/bytedance/sdk/openadsdk/g/a/f;->c:Lcom/bytedance/sdk/openadsdk/g/a/g;

    .line 134
    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcom/bytedance/sdk/openadsdk/g/a/g;->a(Lcom/bytedance/sdk/openadsdk/g/a/p;Lcom/bytedance/sdk/openadsdk/g/a/f;)Lcom/bytedance/sdk/openadsdk/g/a/g$a;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Received call but not registered, "

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->b(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/r;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Function "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/r;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void

    .line 144
    :cond_5
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/g/a/g$a;->a:Z

    if-eqz v1, :cond_6

    .line 145
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/g/a/g$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->b:Lcom/bytedance/sdk/openadsdk/g/a/m;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/g/a/p;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "call finished with error, "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/x;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b(Lcom/bytedance/sdk/openadsdk/g/a/j;)V
.end method

.method final b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/g/a/p;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "By passing js callback due to empty callback: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "{"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "}"

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Illegal callback data: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/RuntimeException;)V

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invoking js callback: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/g/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{\"__msg_type\":\"callback\",\"__callback_id\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/g/a/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"__params\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/p;)V

    return-void
.end method

.method protected invokeMethod(Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received call: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
