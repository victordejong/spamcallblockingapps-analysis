.class public Lcom/bytedance/sdk/openadsdk/i/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bytedance/sdk/openadsdk/i/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/i/a/a;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3.5.0.5"

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->d:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->f:J

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->g:I

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->i:I

    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/i/a/b<",
            "Lcom/bytedance/sdk/openadsdk/i/a/b;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;-><init>()V

    return-object v0
.end method

.method private q()Lorg/json/JSONObject;
    .locals 4

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "os"

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "model"

    .line 112
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vendor"

    .line 113
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "package_name"

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ua"

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ip"

    .line 116
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gaid"

    .line 117
    invoke-static {}, Lcom/a/a/a/a/b/a;->a()Lcom/a/a/a/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private r()Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 198
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->g:I

    .line 199
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 189
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->f:J

    .line 190
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->a:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 6

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "type"

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rit"

    .line 49
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "creative_id"

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ad_sdk_version"

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "app_version"

    if-nez v1, :cond_4

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 63
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    const-string v1, "timestamp"

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->j()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "adtype"

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "req_id"

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "error_code"

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "error_msg"

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "extra"

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "image_url"

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "event_extra"

    .line 90
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "duration"

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "appid"

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v1, "conn_type"

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "device_info"

    .line 101
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->q()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 216
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->i:I

    .line 217
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->m:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->b:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->c:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->h:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->j:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->k:Ljava/lang/String;

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->n:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->r()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->f:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->g:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->i:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/b;->n:Ljava/lang/String;

    return-object v0
.end method
