.class public Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->d()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/e/l$a;

    .line 131
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/l$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 148
    :try_start_0
    new-instance p0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "TTDynamic"

    const-string v0, "get html WebResourceResponse error"

    .line 150
    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;
    .locals 1

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V
    .locals 2

    .line 108
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;

    const-string v1, "_updateTmplTime"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/m;)V

    const/16 p0, 0xa

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/bytedance/sdk/openadsdk/core/e/m;
    .locals 2

    if-eqz p0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b()Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/e/m;->a(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    .line 102
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/m;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Set;
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

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 37
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->d()V

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->f()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V

    return-void

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/k;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/bytedance/sdk/openadsdk/core/e/l;
    .locals 1

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->d()Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->c()Z

    move-result v0

    return v0
.end method
