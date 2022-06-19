.class public Lcom/bytedance/sdk/openadsdk/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/i/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 23
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/i/a;
    .locals 2

    .line 30
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/a;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/i/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/a;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/a;Lcom/bytedance/sdk/openadsdk/i/a/b;)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/a;Ljava/lang/String;I)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    and-int/2addr v2, v4

    if-eq v2, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x2

    .line 148
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Ljava/lang/String;I)V

    :cond_2
    return v1
.end method

.method private g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(JJI)V
    .locals 4

    sub-long v0, p3, p1

    .line 291
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "starttime"

    .line 293
    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "endtime"

    .line 294
    invoke-virtual {v2, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "start_type"

    .line 295
    invoke-virtual {v2, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    const-string p2, "general_label"

    .line 299
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->h(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 301
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 302
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 4

    .line 46
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(J)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 244
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playable_url"

    .line 246
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    const-string v1, "click_playable_test_tool"

    .line 251
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 252
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playable_url"

    .line 274
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error_code"

    .line 275
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "error_message"

    .line 276
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    const-string p2, "use_playable_test_tool_error"

    .line 281
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object v0

    .line 312
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 313
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 314
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 4

    .line 124
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "express_ad_render"

    .line 127
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(J)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "playable_url"

    .line 260
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    const-string v1, "close_playable_test_tool"

    .line 265
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 266
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 268
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;Z)V

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 2

    .line 155
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/a$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/a;Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "load_icon_error"

    .line 186
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 187
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 4

    .line 192
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->g(Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "show_backup_endcard"

    .line 195
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(J)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V

    return-void
.end method
