.class Lcom/pubmatic/sdk/webrendering/mraid/p$f;
.super Lcom/pubmatic/sdk/webrendering/mraid/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/pubmatic/sdk/webrendering/mraid/n;

.field final synthetic c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field final synthetic d:Lcom/pubmatic/sdk/webrendering/mraid/p;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/mraid/n;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/r;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->h(Lcom/pubmatic/sdk/webrendering/mraid/p;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/p;Z)Z

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance p2, Lcom/pubmatic/sdk/webrendering/mraid/p$f$a;

    invoke-direct {p2, p0}, Lcom/pubmatic/sdk/webrendering/mraid/p$f$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/p$f;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/p;)Lcom/pubmatic/sdk/webrendering/mraid/n;

    move-result-object p1

    sget-object p2, Lcom/pubmatic/sdk/webrendering/mraid/b;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/mraid/n;)Lcom/pubmatic/sdk/webrendering/mraid/n;

    return-void
.end method
