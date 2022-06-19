.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const-string v0, "TTBannerExpressAd"

    const-string v1, "ExpressView SHOW"

    .line 278
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dynamic_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->e:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 292
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 293
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->f(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 297
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 298
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j()V

    .line 299
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/a;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "TTBannerExpressAd"

    if-eqz p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->c(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    const-string/jumbo v1, "\u83b7\u5f97\u7126\u70b9\uff0c\u5f00\u59cb\u8ba1\u65f6"

    .line 258
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u8ba1\u65f6"

    .line 260
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;ZLcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->c:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method
