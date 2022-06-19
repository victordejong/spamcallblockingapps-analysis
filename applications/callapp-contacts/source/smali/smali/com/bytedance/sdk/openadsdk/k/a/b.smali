.class public Lcom/bytedance/sdk/openadsdk/k/a/b;
.super Lcom/bytedance/sdk/openadsdk/k/a/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;


# virtual methods
.method public a()V
    .locals 1

    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/k/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/k/a/b;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/g/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/d;->c()Lcom/bytedance/sdk/openadsdk/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/d;->d()V

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/k/b/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/b/c;->a(I)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 56
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/a/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/k/a/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method e(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/b;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
