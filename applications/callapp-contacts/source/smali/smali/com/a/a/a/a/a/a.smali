.class final Lcom/a/a/a/a/a/a;
.super Lcom/a/a/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/a/a/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 27
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "START_ONLY_FOR_ANDROID"

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2

    const/high16 v2, 0x10000000

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/a/a/a/a/a/a;->c:Ljava/lang/String;

    const-string v5, "click_open"

    const/4 v6, 0x0

    invoke-static {v0, v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    :cond_3
    return v1
.end method

.method public final b()Z
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 66
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, p0, Lcom/a/a/a/a/a/a;->c:Ljava/lang/String;

    const-string v6, "open_url_app"

    invoke-static {v0, v2, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/l;->a()Lcom/bytedance/sdk/openadsdk/d/l;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/a/a/a/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/l;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/a/a/a/a/a/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/a/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    :cond_2
    iput-boolean v4, p0, Lcom/a/a/a/a/a/a;->d:Z

    .line 82
    invoke-virtual {p0}, Lcom/a/a/a/a/a/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/a/a/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/a/a/a/a/a/a;->c:Ljava/lang/String;

    const-string v5, "open_fallback_url"

    invoke-static {v0, v2, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/d/e;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    nop

    :catchall_0
    :cond_3
    return v1
.end method
