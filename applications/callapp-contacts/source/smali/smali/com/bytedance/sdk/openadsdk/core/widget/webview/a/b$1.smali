.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/f;->a()V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "TemplateManager"

    const-string v1, "init......2"

    .line 77
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;)V

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->e()V

    const-string v1, "init......3"

    .line 83
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
