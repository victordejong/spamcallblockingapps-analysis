.class Lcom/pubmatic/sdk/webrendering/mraid/p$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBFullScreenActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/mraid/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/pubmatic/sdk/webrendering/mraid/p;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->c:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "POBMraidController"

    const-string v2, "expand close"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->c:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->c:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->f(Lcom/pubmatic/sdk/webrendering/mraid/p;)I

    move-result v1

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->c:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->g(Lcom/pubmatic/sdk/webrendering/mraid/p;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->a:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$e;->c:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->e(Lcom/pubmatic/sdk/webrendering/mraid/p;)V

    return-void
.end method
