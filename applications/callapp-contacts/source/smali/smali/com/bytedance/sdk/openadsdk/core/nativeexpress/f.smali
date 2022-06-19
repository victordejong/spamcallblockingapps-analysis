.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/w;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/d/k;)V
    .locals 1

    .line 34
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/w;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/d/k;)V

    .line 35
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object p1

    .line 88
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-eq p1, v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/e/h;

    .line 90
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "http"

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, p2

    .line 102
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 110
    :cond_4
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-eq p1, v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 113
    :cond_5
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 111
    :cond_6
    :goto_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->b(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method private a(JJLjava/lang/String;I)V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->e:Lcom/bytedance/sdk/openadsdk/d/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->e:Lcom/bytedance/sdk/openadsdk/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/k;->a()Lcom/bytedance/sdk/openadsdk/d/q;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->e:Lcom/bytedance/sdk/openadsdk/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/k;->a()Lcom/bytedance/sdk/openadsdk/d/q;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Ljava/lang/String;JJI)V

    return-void

    .line 145
    :cond_1
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->c:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    if-ne v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->e:Lcom/bytedance/sdk/openadsdk/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/k;->a()Lcom/bytedance/sdk/openadsdk/d/q;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/d/q;->b(Ljava/lang/String;JJI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 6

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 126
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Lcom/bytedance/sdk/openadsdk/j/a/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Lcom/bytedance/sdk/openadsdk/j/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 129
    new-instance v0, Landroid/webkit/WebResourceResponse;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->d:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/e$a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ExpressClient"

    const-string v2, "get image WebResourceResponse error"

    .line 132
    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->f:Z

    .line 69
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->g:Z

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 42
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error1"

    .line 44
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v6, 0x2

    :goto_0
    move-object v0, p0

    move-object v5, p2

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/f;->a(JJLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    return-object v7

    :catchall_0
    move-exception v0

    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error2"

    .line 61
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/c;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
