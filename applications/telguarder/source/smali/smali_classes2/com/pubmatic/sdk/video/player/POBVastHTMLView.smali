.class public abstract Lcom/pubmatic/sdk/video/player/POBVastHTMLView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/player/POBVastHTMLView$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected createWebView(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;
    .locals 2

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->createInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setScrollBarStyle(I)V

    :cond_0
    return-object p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    :cond_0
    return-void
.end method

.method protected renderVastHTMLView(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->createWebView(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;

    new-instance v3, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;

    invoke-direct {v3}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;-><init>()V

    invoke-direct {v2, p0, v0, v3, v0}, Lcom/pubmatic/sdk/video/player/POBVastHTMLView$a;-><init>(Lcom/pubmatic/sdk/video/player/POBVastHTMLView;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V

    iput-object v2, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-virtual {v2, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->setRendererViewListener(Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;)V

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRenderableContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/video/player/POBVastHTMLView;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
