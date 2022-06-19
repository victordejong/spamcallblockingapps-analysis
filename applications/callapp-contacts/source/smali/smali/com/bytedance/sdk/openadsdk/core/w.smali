.class public Lcom/bytedance/sdk/openadsdk/core/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/b;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/w$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/h/h;

.field private B:Z

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h;",
            ">;"
        }
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:Lcom/bytedance/sdk/openadsdk/d/q;

.field private H:Lcom/bytedance/sdk/openadsdk/g/a/q;

.field private I:Ljava/lang/String;

.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/openadsdk/utils/ah;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/f/c;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

.field private r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

.field private s:Lorg/json/JSONObject;

.field private t:Lcom/bytedance/sdk/openadsdk/f/d;

.field private u:Lcom/bytedance/sdk/openadsdk/h/a;

.field private v:Lcom/bytedance/sdk/openadsdk/h/e;

.field private w:Lcom/bytedance/sdk/openadsdk/h/d;

.field private x:Lorg/json/JSONObject;

.field private y:Lcom/bytedance/sdk/openadsdk/core/b/d;

.field private z:Lcom/bytedance/sdk/openadsdk/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 143
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "private"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "dispatch_message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "custom_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "log_event_v3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Z

    .line 117
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->B:Z

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->E:Z

    .line 126
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->F:Z

    .line 128
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    .line 152
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ah;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->C:Ljava/util/List;

    return-object p1
.end method

.method public static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1266
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 1270
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1272
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 1273
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ag()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/w$a;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1138
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/w$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/w$a;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/h/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->q()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->g(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->G:Lcom/bytedance/sdk/openadsdk/d/q;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 732
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->G:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Ljava/lang/String;)V

    return-void

    .line 734
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->G:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 371
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->k()Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 375
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "innerAppName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkEdition"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "netType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "supportList"

    .line 381
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/e/g;)Z
    .locals 2

    .line 1192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->D:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/h;

    if-eqz p1, :cond_1

    .line 1197
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/h;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->h(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1298
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "callback"

    .line 1299
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__callback_id"

    .line 1300
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "__params"

    .line 1302
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1304
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->o(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->j(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1325
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1328
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__msg_type"

    const-string v2, "event"

    .line 1329
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "__event_id"

    .line 1330
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p1, "__params"

    .line 1332
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1334
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->o(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    const-string v1, "cid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    const-string v1, "log_extra"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Ljava/lang/String;

    const-string v1, "download_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "SG"

    :goto_0
    const-string v1, "dc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    const-string v0, "TTAndroidObject"

    .line 1341
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1342
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1347
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/w$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/w$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "__msg_type"

    const/4 v7, 0x0

    .line 1352
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    const-string v6, "__callback_id"

    .line 1353
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    const-string v6, "func"

    .line 1354
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    const-string v6, "params"

    .line 1355
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iput-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    const-string v6, "JSSDK"

    .line 1356
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1360
    :catchall_0
    :cond_0
    :try_start_2
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1363
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1364
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1365
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/w;->e:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    nop

    .line 1368
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1369
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "failed to parse jsbridge msg queue "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "failed to parse jsbridge msg queue"

    .line 1371
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 721
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->G:Lcom/bytedance/sdk/openadsdk/d/q;

    if-nez v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2

    .line 1442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "click_other"

    .line 1445
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1448
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->e()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-nez v0, :cond_0

    .line 1497
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->l:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 5

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->z:Lcom/bytedance/sdk/openadsdk/h/b;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "isRenderSuc"

    .line 756
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(ZILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bytedance://"

    .line 1506
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "bytedance://dispatch_message/"

    const-string v1, "bytedance://private/setresult/"

    .line 1512
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->i()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    .line 1516
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1518
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    const/16 v1, 0x26

    .line 1520
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_4

    return-void

    .line 1524
    :cond_4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 1525
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SCENE_FETCHQUEUE"

    .line 1526
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1527
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "mute"

    const/4 v1, 0x0

    .line 907
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 908
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "stateType"

    const/4 v1, -0x1

    .line 919
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private i()Landroid/webkit/WebView;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private i(Lorg/json/JSONObject;)Z
    .locals 7

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->O()J

    move-result-wide v2

    long-to-double v2, v2

    .line 937
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->P()I

    move-result v0

    :try_start_0
    const-string v4, "currentTime"

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    .line 939
    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "state"

    .line 940
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "TTAndroidObject"

    const-string v2, "currentTime,state:"

    .line 941
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method private j()Lorg/json/JSONObject;
    .locals 10

    const-string v0, "TTAndroidObject"

    const/4 v1, 0x0

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 225
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v2, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;)[I

    move-result-object v4

    .line 231
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/view/View;)[I

    move-result-object v3

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "x"

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v4, v8

    aget v8, v3, v8

    sub-int/2addr v9, v8

    int-to-float v8, v9

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "y"

    .line 238
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    aget v4, v4, v8

    aget v3, v3, v8

    sub-int/2addr v4, v3

    int-to-float v3, v4

    invoke-static {v7, v3}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "w"

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "h"

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "isExist"

    .line 241
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->e(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v5

    :cond_2
    :goto_0
    const-string v2, "setCloseButtonInfo error position or webViewPosition is null"

    .line 233
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_1
    const-string v2, "setCloseButtonInfo error closeButton is null"

    .line 227
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v2

    const-string v3, "setCloseButtonInfo error"

    .line 244
    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "TTAndroidObject"

    const-string v3, "TTAndroidObject handleClickEvent"

    .line 987
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "adId"

    .line 989
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "areaType"

    const/4 v4, 0x1

    .line 990
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "clickAreaType"

    .line 991
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "clickInfo"

    .line 992
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    const-string v7, "down_x"

    .line 996
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v9, "down_y"

    .line 997
    invoke-virtual {v1, v9, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v11, "up_x"

    .line 998
    invoke-virtual {v1, v11, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v13, "up_y"

    .line 999
    invoke-virtual {v1, v13, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    const-string v15, "down_time"

    .line 1000
    invoke-virtual {v1, v15, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    move-wide/from16 v17, v7

    const-string v7, "up_time"

    .line 1001
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v19, v7

    const-string v7, "button_x"

    .line 1002
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v21, v7

    const-string v7, "button_y"

    .line 1003
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v23, v7

    const-string v7, "button_width"

    .line 1004
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    move-wide/from16 v25, v7

    const-string v7, "button_height"

    .line 1005
    invoke-virtual {v1, v7, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    move-object/from16 p1, v2

    move-wide/from16 v31, v5

    move-wide v7, v15

    move-wide/from16 v5, v17

    move-wide/from16 v1, v19

    move-wide/from16 v27, v23

    move-wide/from16 v29, v25

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, v21

    goto :goto_0

    :cond_1
    move-object/from16 p1, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide v1, v5

    move-wide v3, v1

    move-wide v7, v3

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move-wide/from16 v27, v13

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    .line 1007
    :goto_0
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;-><init>()V

    double-to-int v5, v5

    .line 1008
    invoke-virtual {v15, v5}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v5

    double-to-int v6, v9

    .line 1009
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v5

    double-to-int v6, v11

    .line 1010
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v5

    double-to-int v6, v13

    .line 1011
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v5

    double-to-long v6, v7

    .line 1012
    invoke-virtual {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v5

    double-to-long v1, v1

    .line 1013
    invoke-virtual {v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    double-to-int v2, v3

    .line 1014
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    move-wide/from16 v5, v27

    double-to-int v2, v5

    .line 1015
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    move-wide/from16 v5, v29

    double-to-int v2, v5

    .line 1016
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    move-wide/from16 v5, v31

    double-to-int v2, v5

    .line 1017
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    move-object/from16 v2, v17

    .line 1018
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    .line 1019
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/g;

    move-result-object v1

    .line 1021
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    move/from16 v3, v16

    if-eqz v2, :cond_2

    .line 1022
    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    :cond_2
    move-object/from16 v2, p1

    .line 1024
    invoke-direct {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/e/g;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 1026
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1027
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    :cond_3
    return-void
.end method

.method private k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "appInfo"

    const-string v1, "adInfo"

    const-string v2, "getTemplateInfo"

    const-string v3, "getTeMaiAds"

    .line 294
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1033
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    if-eqz v2, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1036
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/e/k;-><init>()V

    const/4 v3, 0x1

    .line 1037
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/k;->a(I)V

    :try_start_0
    const-string v4, "isRenderSuc"

    .line 1039
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "AdSize"

    .line 1040
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "height"

    const-string v7, "width"

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_1

    .line 1044
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 1045
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_1
    move-wide v10, v8

    :goto_0
    const-string v5, "videoInfo"

    .line 1047
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v12, "x"

    .line 1053
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "y"

    .line 1054
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v16, v4

    .line 1055
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1056
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1057
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/e/k;->c(D)V

    .line 1058
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/e/k;->d(D)V

    .line 1059
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/k;->e(D)V

    .line 1060
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/e/k;->f(D)V

    goto :goto_1

    :cond_2
    move/from16 v16, v4

    :goto_1
    const-string v3, "message"

    const/16 v4, 0x65

    .line 1062
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "code"

    .line 1063
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move/from16 v4, v16

    .line 1064
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/e/k;->a(Z)V

    .line 1065
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/e/k;->a(D)V

    .line 1066
    invoke-virtual {v2, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/e/k;->b(D)V

    .line 1067
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e/k;->a(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->b(I)V

    .line 1069
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const/16 v1, 0x65

    .line 1071
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->b(I)V

    .line 1072
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->a(Ljava/lang/String;)V

    .line 1073
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private l()V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->A:Lcom/bytedance/sdk/openadsdk/h/h;

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/h/h;->a()V

    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "TTAndroidObject"

    const-string v1, "TTAndroidObject handlerDynamicTrack"

    .line 1081
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "trackData"

    .line 1083
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1084
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bytedance"

    .line 1086
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/n;->a(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private m()V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->A:Lcom/bytedance/sdk/openadsdk/h/h;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/h/h;->b()V

    return-void
.end method

.method private m(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/f/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "temaiProductIds"

    .line 1099
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1100
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/f/d;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/f/d;->a(ZLorg/json/JSONArray;)V

    return-void

    .line 1103
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/f/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/f/d;->a(ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1106
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/f/d;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/f/d;->a(ZLorg/json/JSONArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private n()V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    if-eqz v0, :cond_0

    .line 888
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;->N()V

    :cond_0
    return-void
.end method

.method private n(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->C:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "creatives"

    .line 1119
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private o()V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 895
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->I:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private o(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1313
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->i()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1316
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/p;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1317
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "js_msg "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAndroidObject"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private p()Lorg/json/JSONObject;
    .locals 7

    .line 954
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 955
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 959
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v1

    .line 960
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result v2

    .line 961
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->g(Ljava/lang/String;)I

    move-result v3

    .line 962
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->e(I)I

    move-result v4

    .line 963
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/h/e;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x7

    if-eq v2, v6, :cond_2

    const/16 v6, 0x8

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 969
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(I)Z

    move-result v1

    goto :goto_1

    .line 967
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b(I)Z

    move-result v1

    :goto_1
    const-string v2, "voice_control"

    .line 971
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "rv_skip_time"

    .line 972
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fv_skip_show"

    .line 973
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "iv_skip_time"

    .line 974
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "show_dislike"

    .line 975
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ae()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "video_adaptation"

    .line 976
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->j()I

    move-result v3

    :cond_4
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private p(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "ad_extra_data"

    .line 1468
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    .line 1470
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1473
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 1474
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1476
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1478
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1479
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1480
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1481
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1483
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1485
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method private q()V
    .locals 6

    .line 1171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->C:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1174
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->D:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1176
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1177
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_2

    goto :goto_1

    .line 1183
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 1184
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v4

    .line 1185
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/h;

    invoke-direct {v5, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    .line 1186
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->D:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private r()Z
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ab()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 1280
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->E:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ab()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "parent_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1290
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->E:Z

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private s()V
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 250
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->n:I

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 1

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/d;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->y:Lcom/bytedance/sdk/openadsdk/core/b/d;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->r:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/j;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 1

    .line 156
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/a/q;->a(Landroid/webkit/WebView;)Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    const-string v0, "ToutiaoJSBridge"

    .line 157
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/j;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/w$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/w$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;)V

    .line 158
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/j;->a(Lcom/bytedance/sdk/openadsdk/g/a/l;)Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/j;->a(Z)Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/g/a/j;->b(Z)Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a/j;->a()Lcom/bytedance/sdk/openadsdk/g/a/j;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/a/j;->b()Lcom/bytedance/sdk/openadsdk/g/a/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->H:Lcom/bytedance/sdk/openadsdk/g/a/q;

    .line 179
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/b/b;->a(Lcom/bytedance/sdk/openadsdk/g/a/q;Lcom/bytedance/sdk/openadsdk/core/w;)V

    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->H:Lcom/bytedance/sdk/openadsdk/g/a/q;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/b/a;->a(Lcom/bytedance/sdk/openadsdk/g/a/q;Lcom/bytedance/sdk/openadsdk/core/w;)V

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/d;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->t:Lcom/bytedance/sdk/openadsdk/f/d;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/a;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->u:Lcom/bytedance/sdk/openadsdk/h/a;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/b;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->z:Lcom/bytedance/sdk/openadsdk/h/b;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/d;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->w:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/e;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->v:Lcom/bytedance/sdk/openadsdk/h/e;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/h;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->A:Lcom/bytedance/sdk/openadsdk/h/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/w;"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lorg/json/JSONObject;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->b:Z

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/w$a;I)Lorg/json/JSONObject;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 411
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->a:Ljava/lang/String;

    const-string v4, "call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 414
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[JSB-REQ] version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 418
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "openPrivacy"

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "landscape_click"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0x1f

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "skipVideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x1e

    goto/16 :goto_2

    :sswitch_2
    const-string v5, "sendLog"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x1d

    goto/16 :goto_2

    :sswitch_3
    const-string v5, "playable_style"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v4, 0x1c

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "getNetworkData"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v4, 0x1b

    goto/16 :goto_2

    :sswitch_5
    const-string v5, "endcard_load"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/16 v4, 0x1a

    goto/16 :goto_2

    :sswitch_6
    const-string v5, "removeLoading"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/16 v4, 0x19

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "renderDidFinish"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/16 v4, 0x18

    goto/16 :goto_2

    :sswitch_8
    const-string v5, "muteVideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/16 v4, 0x17

    goto/16 :goto_2

    :sswitch_9
    const-string v5, "pauseWebViewTimers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x16

    goto/16 :goto_2

    :sswitch_a
    const-string v5, "getVolume"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x15

    goto/16 :goto_2

    :sswitch_b
    const-string v5, "getCurrentVideoState"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_c
    const-string v5, "cancel_download_app_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x13

    goto/16 :goto_2

    :sswitch_d
    const-string v5, "getTemplateInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x12

    goto/16 :goto_2

    :sswitch_e
    const-string v5, "dynamicTrack"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x11

    goto/16 :goto_2

    :sswitch_f
    const-string v5, "sendReward"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_10
    const-string v5, "isViewable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0xf

    goto/16 :goto_2

    :sswitch_11
    const-string v5, "getCloseButtonInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_12
    const-string v5, "unsubscribe_app_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_13
    const-string v5, "download_app_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_14
    const-string v5, "getTeMaiAds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_15
    const-string v5, "send_temai_product_ids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_16
    const-string v5, "getMaterialMeta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_17
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_18
    const-string v5, "getScreenSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_19
    const-string v5, "appInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_1a
    const-string v5, "clickEvent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1b
    const-string v5, "webview_time_track"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_1c
    const-string v5, "changeVideoState"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_1d
    const-string v5, "pauseWebView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_1

    :cond_20
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_1e
    const-string v5, "adInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_1

    :cond_21
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1f
    const-string v5, "subscribe_app_ad"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_1

    :cond_22
    const/4 v4, 0x0

    :goto_2
    const-string v5, "TTAndroidObject"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 536
    :pswitch_0
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-eqz v4, :cond_28

    .line 537
    instance-of v5, v4, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    if-eqz v5, :cond_28

    .line 538
    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->T()V

    goto/16 :goto_5

    .line 552
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->n()V

    goto/16 :goto_5

    .line 426
    :pswitch_2
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    if-eqz v4, :cond_28

    const-string v5, "extJson"

    .line 428
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_28

    const-string v6, "category"

    .line 429
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    const-string v7, "tag"

    .line 430
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    const-string v8, "label"

    .line 431
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 432
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 433
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "value"

    .line 436
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v6, "extValue"

    .line 437
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    :try_start_0
    const-string v4, "ua_policy"

    .line 440
    iget v6, v0, Lcom/bytedance/sdk/openadsdk/core/w;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    const-string v4, "click"

    .line 444
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 445
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/w;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_23
    move-object/from16 v19, v5

    .line 447
    iget v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->l:I

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(I)Ljava/lang/String;

    move-result-object v13

    .line 448
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static/range {v11 .. v19}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 453
    :pswitch_3
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->d(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 570
    :pswitch_4
    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w$a;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 573
    :pswitch_5
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->f(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 495
    :pswitch_6
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->w:Lcom/bytedance/sdk/openadsdk/h/d;

    if-eqz v4, :cond_28

    .line 496
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a()V

    goto/16 :goto_5

    .line 546
    :pswitch_7
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->k(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 555
    :pswitch_8
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->g(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 579
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->m()V

    goto/16 :goto_5

    .line 484
    :pswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v4

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    if-eqz v4, :cond_24

    .line 487
    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 488
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u97f3\u4e50\u97f3\u91cf >>>> AudioManager-->currentVolume="

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-gtz v9, :cond_25

    const/4 v8, 0x1

    :cond_25
    const-string v4, "endcard_mute"

    .line 492
    invoke-virtual {v3, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 561
    :pswitch_b
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->i(Lorg/json/JSONObject;)Z

    goto/16 :goto_5

    .line 525
    :pswitch_c
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v4, :cond_28

    .line 526
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/f/c;->b(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 456
    :pswitch_d
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lorg/json/JSONObject;

    if-eqz v3, :cond_26

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->p()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "setting"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    :cond_26
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 549
    :pswitch_e
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->l(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 500
    :pswitch_f
    iput-boolean v10, v0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    .line 501
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->v:Lcom/bytedance/sdk/openadsdk/h/e;

    if-eqz v4, :cond_28

    .line 502
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/h/e;->a()V

    goto/16 :goto_5

    .line 467
    :pswitch_10
    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->F:Z

    const-string v5, "viewStatus"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 478
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->j()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_28

    goto :goto_4

    .line 530
    :pswitch_12
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v4, :cond_28

    .line 531
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/f/c;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    .line 514
    :pswitch_13
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->y:Lcom/bytedance/sdk/openadsdk/core/b/d;

    if-eqz v4, :cond_27

    .line 515
    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/w;->B:Z

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/b/d;->a(Z)V

    goto/16 :goto_5

    .line 516
    :cond_27
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v4, :cond_28

    .line 518
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-eqz v4, :cond_28

    .line 519
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/w;->I:Ljava/lang/String;

    invoke-interface {v5, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/f/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 462
    :pswitch_14
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->x:Lorg/json/JSONObject;

    if-eqz v4, :cond_28

    :goto_4
    move-object v3, v4

    goto/16 :goto_5

    .line 564
    :pswitch_15
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->m(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 567
    :pswitch_16
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->n(Lorg/json/JSONObject;)Z

    goto :goto_5

    .line 585
    :pswitch_17
    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->o()V

    goto :goto_5

    .line 470
    :pswitch_18
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->u:Lcom/bytedance/sdk/openadsdk/h/a;

    if-eqz v4, :cond_28

    .line 471
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/h/a;->b()I

    move-result v4

    .line 472
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/w;->u:Lcom/bytedance/sdk/openadsdk/h/a;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/h/a;->a()I

    move-result v5

    const-string v6, "width"

    .line 473
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "height"

    .line 474
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_5

    .line 420
    :pswitch_19
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->e:I

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lorg/json/JSONObject;I)V

    goto :goto_5

    .line 543
    :pswitch_1a
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->j(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 582
    :pswitch_1b
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->e(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 558
    :pswitch_1c
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/w;->h(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 576
    :pswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->l()V

    goto :goto_5

    .line 423
    :pswitch_1e
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 506
    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/w;->s()V

    .line 508
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->g:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/content/Context;

    if-eqz v12, :cond_28

    .line 509
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->d:Lorg/json/JSONObject;

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    iget v15, v0, Lcom/bytedance/sdk/openadsdk/core/w;->l:I

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/w;->o:Z

    move/from16 v16, v4

    invoke-interface/range {v11 .. v16}, Lcom/bytedance/sdk/openadsdk/f/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    :cond_28
    :goto_5
    if-ne v2, v10, :cond_29

    .line 595
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 596
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/w$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/w;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 597
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[JSB-RSP] version:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_29
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7966d06a -> :sswitch_1f
        -0x54d5e48f -> :sswitch_1e
        -0x4f555ebd -> :sswitch_1d
        -0x45af975a -> :sswitch_1c
        -0x325352a1 -> :sswitch_1b
        -0x2fbc0e0e -> :sswitch_1a
        -0x2f57a591 -> :sswitch_19
        -0x2aa0497d -> :sswitch_18
        -0x1e7a3222 -> :sswitch_17
        -0x1d2a69be -> :sswitch_16
        -0x1097c80a -> :sswitch_15
        -0xa5b419e -> :sswitch_14
        0x1a8c298 -> :sswitch_13
        0x642ec2f -> :sswitch_12
        0x17d08ce2 -> :sswitch_11
        0x18049cc9 -> :sswitch_10
        0x1a6244d7 -> :sswitch_f
        0x220cf04c -> :sswitch_e
        0x26c16abe -> :sswitch_d
        0x281c12d3 -> :sswitch_c
        0x2a6ab279 -> :sswitch_b
        0x34c20a10 -> :sswitch_a
        0x420130f1 -> :sswitch_9
        0x44a639e2 -> :sswitch_8
        0x49bca8fc -> :sswitch_7
        0x5b52a418 -> :sswitch_6
        0x616caa3a -> :sswitch_5
        0x66233dc2 -> :sswitch_4
        0x673944c0 -> :sswitch_3
        0x7602ce9c -> :sswitch_2
        0x7c55d63c -> :sswitch_1
        0x7d77e304 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1560
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1562
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/w$a;

    if-eqz v0, :cond_2

    .line 1564
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/w$a;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lcom/bytedance/sdk/openadsdk/core/w$a;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/d/q;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->G:Lcom/bytedance/sdk/openadsdk/d/q;

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1581
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/h/c;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result v0

    .line 1214
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->n()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 1215
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/e/j;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/e/j;-><init>()V

    .line 1216
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1217
    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    .line 1219
    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ab()Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1221
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    if-eqz p1, :cond_4

    .line 1224
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1225
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1226
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1227
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1230
    :cond_4
    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/e/j;->g:Lorg/json/JSONObject;

    .line 1231
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object p1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/w$7;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/w$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/h/c;)V

    invoke-interface {p1, v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1210
    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/h/c;->a(ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "TTAndroidObject"

    const-string v0, "get ads error"

    .line 1247
    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "bytedance"

    .line 1381
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1384
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1385
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/w;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public adInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 762
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 764
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public appInfo()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 772
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 774
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 284
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->l:I

    return-object p0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 1

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->k:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->x:Lorg/json/JSONObject;

    return-object p0
.end method

.method public b(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->F:Z

    return-object p0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 12

    const-string v0, "TTAndroidObject"

    .line 1396
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_event"

    .line 1397
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "custom_event"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "log_event_v3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "private"

    .line 1431
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dispatch_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "handlrUir: not match schema host"

    .line 1434
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1432
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/w;->g(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string v1, "category"

    .line 1398
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "tag"

    .line 1400
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1401
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->I:Ljava/lang/String;

    const-string v2, "label"

    .line 1402
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1403
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/w;->e(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v2, :cond_4

    return-void

    :cond_4
    const-wide/16 v6, 0x0

    :try_start_1
    const-string v2, "value"

    .line 1408
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-wide v8, v6

    :goto_2
    :try_start_2
    const-string v2, "ext_value"

    .line 1413
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-wide v10, v6

    const/4 v2, 0x0

    :try_start_3
    const-string v4, "extra"

    .line 1417
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v4, :cond_5

    .line 1420
    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string p1, "ua_policy"

    .line 1421
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-object v2, v4

    :catch_3
    :cond_5
    :try_start_6
    const-string p1, "click"

    .line 1426
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1427
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/w;->p(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v2

    .line 1429
    :goto_3
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1430
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-wide v6, v8

    move-wide v8, v10

    move-object v10, p1

    invoke-static/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v1, "handleUri exception: "

    .line 1437
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->c:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->m:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/bytedance/sdk/openadsdk/core/w;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->B:Z

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 1159
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/w$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/w$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/h/c;)V

    return-void
.end method

.method public changeVideoState(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 836
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 838
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->h(Lorg/json/JSONObject;)V

    return-void

    .line 841
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$3;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clickEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 857
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 859
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->j(Lorg/json/JSONObject;)V

    return-void

    .line 862
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$4;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 1257
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1258
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->C:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "material"

    .line 1259
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "materialMeta"

    .line 1260
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dynamicTrack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 826
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->l(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method e()Z
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->p:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1459
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->A()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public f()V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v0, :cond_0

    .line 1536
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/c;->a()V

    .line 1538
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1539
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->c()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v0, :cond_0

    .line 1545
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/c;->b()V

    :cond_0
    return-void
.end method

.method public getCurrentVideoState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 881
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 882
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->i(Lorg/json/JSONObject;)Z

    .line 883
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "getTemplateInfo"

    const/4 v1, 0x1

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/lang/String;Z)V

    .line 784
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "setting"

    .line 785
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->p()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v1, 0x0

    .line 787
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/w;->a(Ljava/lang/String;Z)V

    .line 788
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->s:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/w;->h:Lcom/bytedance/sdk/openadsdk/f/c;

    if-eqz v0, :cond_0

    .line 1551
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/f/c;->c()V

    :cond_0
    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 806
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 808
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->g(Lorg/json/JSONObject;)V

    return-void

    .line 811
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/w$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/w;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "TTAndroidObject"

    const-string v0, ""

    .line 819
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderDidFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 797
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/w;->k(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public skipVideo()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 876
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/w;->n()V

    return-void
.end method
