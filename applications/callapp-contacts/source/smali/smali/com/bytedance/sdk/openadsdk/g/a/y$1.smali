.class Lcom/bytedance/sdk/openadsdk/g/a/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/y;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/y;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/y;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/y;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/g/a/y;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking Jsb using evaluateJavascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/y;->a(Lcom/bytedance/sdk/openadsdk/g/a/y;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invoking Jsb using loadUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/i;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/y;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/y;->a(Lcom/bytedance/sdk/openadsdk/g/a/y;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
