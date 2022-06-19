.class public Lcom/bytedance/sdk/openadsdk/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/d/k$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private r:Landroid/webkit/WebView;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/webkit/WebView;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->b:Z

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->d:I

    const-string v1, "landingpage"

    .line 50
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->i:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->j:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->k:J

    .line 52
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->l:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->m:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->n:J

    .line 53
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->o:Z

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->p:Z

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->s:Z

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->t:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->g:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 65
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/k;->r:Landroid/webkit/WebView;

    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->r:Landroid/webkit/WebView;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/d/k$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/d/k$a;-><init>(Lcom/bytedance/sdk/openadsdk/d/k;Lcom/bytedance/sdk/openadsdk/d/k$1;)V

    const-string p3, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/d/k;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 334
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/k;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 6

    .line 338
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    :try_start_0
    const-string v1, "is_playable"

    .line 348
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "usecache"

    .line 349
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :catch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "ad_extra_data"

    .line 354
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_4

    const-string p2, "duration"

    .line 356
    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    move-object v0, v1

    .line 362
    :catch_2
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendEvent: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/k;->i:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", ext="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LandingPageLog"

    invoke-static {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->g:Landroid/content/Context;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/k;->i:Ljava/lang/String;

    invoke-static {p2, p3, p4, p1, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/d/k;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->t:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/bytedance/sdk/openadsdk/d/k;
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->s:Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/d/q;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->u:Lcom/bytedance/sdk/openadsdk/d/q;

    return-object v0
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 4

    .line 97
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWebProgress: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandingPageLog"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->l:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->l:J

    return-void

    .line 100
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->m:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->m:J

    :cond_1
    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onWebError: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LandingPageLog"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->u:Lcom/bytedance/sdk/openadsdk/d/q;

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/d/q;->g()V

    :cond_0
    if-eqz p5, :cond_1

    const-string p1, "image"

    .line 279
    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x3

    .line 281
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    .line 283
    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->d:I

    .line 284
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/d/k;->e:Ljava/lang/String;

    .line 285
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/d/k;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 328
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWebFinished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LandingPageLog"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->u:Lcom/bytedance/sdk/openadsdk/d/q;

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/d/q;->f()V

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 128
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->s:Z

    if-eqz v0, :cond_1

    .line 129
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->o:Z

    const-string v0, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    .line 144
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 224
    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_3

    .line 226
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    .line 228
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->j:J

    .line 231
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    const-string p1, "render_type_2"

    const-string v1, "h5"

    const-string v2, "render_type"

    const-string v3, "error_url"

    const-string v4, "error_msg"

    const-string v5, "error_code"

    if-eqz p2, :cond_5

    .line 233
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/d/k;->m:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/d/k;->l:J

    sub-long/2addr v6, v8

    .line 234
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 236
    :try_start_0
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/d/k;->d:I

    invoke-virtual {p2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->e:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/k;->f:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "load_finish"

    .line 244
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/bytedance/sdk/openadsdk/d/k;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void

    .line 246
    :cond_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_1
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/d/k;->d:I

    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->e:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/d/k;->f:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p1, "load_fail"

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/d/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onWebStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LandingPageLog"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->u:Lcom/bytedance/sdk/openadsdk/d/q;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/d/q;->e()V

    .line 110
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->b:Z

    .line 112
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "render_type"

    const-string p3, "h5"

    .line 114
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "render_type_2"

    const/4 p3, 0x0

    .line 115
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "load_start"

    .line 119
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/d/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/q;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->u:Lcom/bytedance/sdk/openadsdk/d/q;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->i:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 5

    const-string v0, "LandingPageLog"

    const-string v1, "onResume"

    .line 289
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->n:J

    .line 293
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->j:J

    return-void
.end method

.method public c()V
    .locals 6

    const-string v0, "LandingPageLog"

    const-string v1, "onStop"

    .line 297
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 303
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->k:J

    .line 305
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/d/k;->j:J

    sub-long/2addr v2, v4

    .line 306
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "load_status"

    .line 308
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->a:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "max_scroll_percent"

    .line 309
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "render_type"

    const-string v5, "h5"

    .line 310
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "render_type_2"

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "stay_page"

    .line 315
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/k;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public d()V
    .locals 7

    const-string v0, "LandingPageLog"

    const-string v1, "onDestroy"

    .line 319
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->r:Landroid/webkit/WebView;

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/k;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/k;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/k;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/d/k;->n:J

    sub-long/2addr v3, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
