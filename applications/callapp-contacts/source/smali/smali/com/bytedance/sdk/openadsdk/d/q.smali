.class public Lcom/bytedance/sdk/openadsdk/d/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONArray;

.field private h:Lorg/json/JSONArray;

.field private final i:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "embeded_ad"

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->c:Ljava/lang/Boolean;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->d:Ljava/lang/Boolean;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->e:Ljava/lang/Boolean;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "embeded_ad"

    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->a:Ljava/lang/String;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->c:Ljava/lang/Boolean;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->d:Ljava/lang/Boolean;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->e:Ljava/lang/Boolean;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->i:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/q;->a:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/q;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 45
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/q;->f:Lorg/json/JSONObject;

    .line 46
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/q;->g:Lorg/json/JSONArray;

    .line 47
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/q;->h:Lorg/json/JSONArray;

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/q;->f:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "webview_source"

    invoke-direct {p0, p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONArray;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 447
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 442
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 431
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONObject;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->f:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->g:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/d/q;)Lorg/json/JSONArray;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->h:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/d/q;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/d/q;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/d/q;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method private j()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$1;

    const-string v2, "_onRenderStart"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$1;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$10;

    const-string v2, "_onRenderError"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/d/q$10;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$11;

    const-string v2, "_onRenderError"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/q$11;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 314
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$5;

    const-string v2, "_onWebviewJsbStart"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/d/q$5;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;JJI)V
    .locals 11

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v10, Lcom/bytedance/sdk/openadsdk/d/q$3;

    const-string v3, "_onInterceptHtml"

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p4

    move-wide v7, p2

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/d/q$3;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;JJI)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$2;

    const-string v2, "_onWebviewLoadError"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/d/q$2;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 378
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public b()V
    .locals 3

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$8;

    const-string v2, "_onRenderSuc"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$8;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 333
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$6;

    const-string v2, "_onWebviewJsbEnd"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/d/q$6;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;JJI)V
    .locals 11

    .line 291
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v10, Lcom/bytedance/sdk/openadsdk/d/q$4;

    const-string v3, "_onInterceptJs"

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p4

    move-wide v7, p2

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/d/q$4;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Ljava/lang/String;JJI)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 3

    .line 353
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$7;

    const-string v2, "_addExtraH5JsonObject"

    invoke-direct {v1, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/d/q$7;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$12;

    const-string v2, "_onNativeRenderStart"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$12;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$13;

    const-string v2, "_onNativeRenderEnd"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$13;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$14;

    const-string v2, "_onWebviewLoadStart"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$14;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 161
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$15;

    const-string v2, "_onWebviewLoadSuc"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$15;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 176
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$16;

    const-string v2, "_onWebviewLoadError"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$16;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 374
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public i()V
    .locals 3

    .line 382
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/l/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/d/q$9;

    const-string v2, "_trySendTrackInfo"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/d/q$9;-><init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
