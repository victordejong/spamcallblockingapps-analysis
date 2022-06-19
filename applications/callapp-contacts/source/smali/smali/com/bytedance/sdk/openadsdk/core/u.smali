.class public Lcom/bytedance/sdk/openadsdk/core/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdManager;


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/u$1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u$1;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Z

    .line 224
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    const-string v0, "com.union_test.internationad"

    .line 374
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Ljava/lang/String;

    const-string v0, "5001121"

    .line 375
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->e:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->a:Ljava/lang/String;

    .line 235
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 240
    invoke-static {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-result-object p1

    .line 241
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_3

    return-void

    .line 244
    :cond_3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    if-nez v0, :cond_4

    return-void

    .line 248
    :cond_4
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 249
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 250
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->e(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Z

    .line 251
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 1

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 1

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->b(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 1

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 1

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 1

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->m()V

    .line 143
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/v;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/v;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;
    .locals 1

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public getBiddingToken()Ljava/lang/String;
    .locals 7

    const-string v0, "gaid"

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 267
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 270
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "version"

    .line 271
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "param"

    .line 272
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "abtest"

    .line 273
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "ad_sdk_version"

    const-string v4, "3.5.0.5"

    .line 275
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "package_name"

    .line 276
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user_data"

    .line 277
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string v5, "ts"

    .line 279
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x29e

    if-gt v3, v4, :cond_2

    .line 286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    .line 288
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    invoke-static {}, Lcom/a/a/a/a/b/a;->a()Lcom/a/a/a/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "apk-sign"

    .line 292
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vendor"

    .line 293
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "model"

    .line 294
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user_agent_device"

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user_agent_webview"

    .line 296
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sys_compiling_time"

    .line 297
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip"

    const/4 v5, 0x1

    .line 298
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "screen_height"

    .line 300
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->d(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "screen_width"

    .line 301
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v3, 0xc

    .line 303
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-ge v5, v4, :cond_3

    const-string v3, "rom_version"

    .line 304
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "carrier_name"

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os_version"

    .line 306
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "conn_type"

    .line 307
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "boot"

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :cond_3
    :goto_0
    if-lez v3, :cond_4

    .line 316
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v4, :cond_4

    .line 317
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 321
    :cond_4
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-lez v3, :cond_5

    .line 323
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0x400

    if-le v0, v4, :cond_5

    .line 324
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/u;->f:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 331
    :catchall_0
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bidding token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTAdManagerImpl"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoppa()I
    .locals 1

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->f()I

    move-result v0

    return v0
.end method

.method public getGdpr()I
    .locals 1

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->g()I

    move-result v0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.5.0.5"

    return-object v0
.end method

.method public isExpressAd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 201
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 202
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->e(Ljava/lang/String;)V

    .line 203
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->c:Z

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isFullScreenVideoAd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 210
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 213
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/u;->e(Ljava/lang/String;)V

    .line 215
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/u;->b:Z

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isUseTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->d(Z)V

    return-object p0
.end method

.method public onlyVerityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->d:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/u;->e:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    const-string v2, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    const-string v3, "verityPlayable"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    .line 392
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v6, v5, v9

    invoke-static {v2, v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 396
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    aput-object p3, v4, v7

    aput-object p4, v4, v8

    aput-object p5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "TTAdManagerImpl"

    const-string p3, "reward component maybe not exist, pls check"

    .line 399
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public openDebugMode()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 135
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->b()V

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->c()V

    return-object p0
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setAllowShowNotifiFromSDK(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->c(Z)V

    return-object p0
.end method

.method public synthetic setAppId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    return-object p1
.end method

.method public setCoppa(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)V

    return-object p0
.end method

.method public synthetic setData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    return-object p1
.end method

.method public setGdpr(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->b(I)V

    return-object p0
.end method

.method public synthetic setKeywords(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    return-object p1
.end method

.method public setNeedClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a([Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic setPaid(Z)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Z)Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    return-object p1
.end method

.method public setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V

    return-object p0
.end method

.method public setTitleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 123
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/g;->d(I)V

    return-object p0
.end method

.method public showPrivacyProtection()V
    .locals 0

    .line 193
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->a()V

    return-void
.end method
