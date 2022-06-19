.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/sdk/adnet/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/sdk/adnet/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;
    .locals 2

    .line 52
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 180
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 181
    new-instance v2, Lcom/bytedance/sdk/adnet/b/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 182
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/b/j;->setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 183
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    if-eqz p2, :cond_1

    .line 186
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 194
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "md5"

    .line 298
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    .line 299
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    .line 300
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/e/m;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;-><init>()V

    .line 307
    invoke-virtual {v4, p2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p2

    .line 308
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p2

    .line 309
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p2

    .line 310
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 311
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 316
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V

    .line 317
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e()V

    .line 319
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 320
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    .line 321
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_2
    :try_start_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 266
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_1
    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->b(Ljava/lang/String;)Z

    move-result p1

    .line 271
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->e()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_6

    .line 273
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 279
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/m;-><init>()V

    .line 280
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 281
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 283
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 284
    invoke-virtual {p1, p5}, Lcom/bytedance/sdk/openadsdk/core/e/m;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p6}, Lcom/bytedance/sdk/openadsdk/core/e/m;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V

    .line 288
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private e()V
    .locals 7

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 v0, 0x64

    .line 99
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b()Ljava/util/List;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u76ee\u524d\u5b58\u50a8\u7684\u6a21\u7248\u7684\u4e2a\u6570 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmplDiffManager"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_2

    .line 107
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/e/m;

    .line 109
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/m;->g()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v0, v0, v4

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 115
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_4

    if-ge v4, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 121
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 122
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/e/m;

    if-eqz v5, :cond_4

    .line 126
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/util/Set;)V

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 102
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "end doCheckAndDeleteTask maxTplCnt,local size"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;
    .locals 1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->d()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->e()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result p1

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a()Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v5

    .line 214
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/h/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/h/f;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/f;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h/f;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    .line 218
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/h/f;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/f;

    move-result-object v0

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/h/f;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/h/f;Ljava/lang/String;)V
    .locals 10

    const-string v0, "TmplDiffManager"

    if-nez p1, :cond_0

    const-string p1, "saveTemplate error: tplInfo == null"

    .line 224
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/h/f;->a:Ljava/lang/String;

    .line 228
    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/core/h/f;->c:Ljava/lang/String;

    .line 229
    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/core/h/f;->b:Ljava/lang/String;

    .line 230
    iget-object v7, p1, Lcom/bytedance/sdk/openadsdk/core/h/f;->d:Ljava/lang/String;

    .line 231
    iget-object v8, p1, Lcom/bytedance/sdk/openadsdk/core/h/f;->e:Ljava/lang/String;

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v9, p2

    .line 233
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "saveTemplate error:tmpId is empty"

    .line 234
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;

    const-string v3, "_saveTemplate"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmplDiffManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/adnet/b/i;

    if-eqz v2, :cond_0

    .line 374
    :try_start_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/adnet/b/i;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    :cond_1
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/adnet/b/i;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/b/j;

    if-eqz v1, :cond_3

    .line 386
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/b/j;->cancel()V

    goto :goto_1

    .line 391
    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->f()V

    return-void
.end method
