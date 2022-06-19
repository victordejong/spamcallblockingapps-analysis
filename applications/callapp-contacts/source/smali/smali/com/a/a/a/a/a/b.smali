.class public Lcom/a/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/a/a/a/c;


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/core/e/b;

.field protected b:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/a/a/a/a/a/b;->d:Z

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/a/a/a/a/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-boolean v0, p0, Lcom/a/a/a/a/a/b;->g:Z

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/a/a/b;->f:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object p2, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ag()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPDownLoader"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object p2

    iput-object p2, p0, Lcom/a/a/a/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    .line 48
    iput-object p3, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    .line 49
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "====tag==="

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gotoGooglePlay :market://details?id="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPDownLoader"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "market://details?id="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x10000000

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 77
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.vending"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 83
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_2

    .line 87
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    :cond_2
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 94
    :cond_3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "START_ONLY_FOR_ANDROID"

    const/4 v3, 0x1

    .line 192
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    const-string v5, "click_open"

    const/4 v6, 0x0

    invoke-static {v0, v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public b()Z
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 141
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    const-string v5, "open_url_app"

    invoke-static {v0, v1, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/l;->a()Lcom/bytedance/sdk/openadsdk/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :cond_1
    iget-boolean v0, p0, Lcom/a/a/a/a/a/b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/a/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_2
    iput-boolean v3, p0, Lcom/a/a/a/a/a/b;->d:Z

    .line 164
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    const-string v4, "open_fallback_url"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/a/a/a/a/a/b;->g:Z

    return-void
.end method

.method protected final d()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 7

    .line 112
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->G()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->G()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v0, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/a/a/a/a/a/b;->c:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;ILjava/lang/String;Z)Z

    :cond_4
    return-void
.end method

.method public final f()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v0, p0, Lcom/a/a/a/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a/a/b;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a/a/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
