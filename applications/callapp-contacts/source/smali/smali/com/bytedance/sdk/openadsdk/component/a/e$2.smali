.class Lcom/bytedance/sdk/openadsdk/component/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/c;Lcom/bytedance/sdk/openadsdk/component/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/e;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

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

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    const-string v0, "TTBannerAd"

    const-string v1, "BANNER SHOW"

    .line 282
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->d(Lcom/bytedance/sdk/openadsdk/component/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/a/e;->e(Lcom/bytedance/sdk/openadsdk/component/a/e;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->f(Lcom/bytedance/sdk/openadsdk/component/a/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->f(Lcom/bytedance/sdk/openadsdk/component/a/e;)Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;->onAdShow(Landroid/view/View;I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "TTBannerAd"

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->a(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    const-string/jumbo p1, "\u83b7\u5f97\u7126\u70b9\uff0c\u5f00\u59cb\u8ba1\u65f6"

    .line 261
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "\u5931\u53bb\u7126\u70b9\uff0c\u505c\u6b62\u8ba1\u65f6"

    .line 263
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/a/e;->b(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/e$2;->b:Lcom/bytedance/sdk/openadsdk/component/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/a/e;->b(Lcom/bytedance/sdk/openadsdk/component/a/e;)V

    return-void
.end method
