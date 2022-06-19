.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

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

    const-string v0, "TTNativeExpressAd"

    const-string v1, "ExpressView SHOW"

    .line 219
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;J)J

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dynamic_show_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->c:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWebView()Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->j()V

    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->h()V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;J)J

    return-void

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;J)J

    return-void
.end method

.method public b()V
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k$2;->b:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;J)J

    :cond_0
    return-void
.end method
