.class public Lcom/bytedance/sdk/openadsdk/core/video/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bytedance/sdk/openadsdk/k/f/b;)V
    .locals 2

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/video/b/a;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/f/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/k/f/b;->b:I

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a(I)V

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/f/a;->a()Lcom/bytedance/sdk/openadsdk/k/f/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/f/a;->a(Lcom/bytedance/sdk/openadsdk/k/f/b;)Z

    return-void
.end method
