.class Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$b;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method
