.class Lcom/bytedance/sdk/openadsdk/component/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c/b;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->a(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->b(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c/b;->c(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "interaction"

    invoke-static {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->d(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->d(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;->onAdShow()V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->c(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/c/b;->c(Lcom/bytedance/sdk/openadsdk/component/c/b;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c/b;->e(Lcom/bytedance/sdk/openadsdk/component/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V

    :cond_1
    return-void
.end method
