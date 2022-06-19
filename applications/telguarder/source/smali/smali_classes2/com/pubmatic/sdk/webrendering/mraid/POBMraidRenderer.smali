.class public Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/mraid/q;
.implements Lcom/pubmatic/sdk/common/ui/POBBannerRendering;
.implements Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/pubmatic/sdk/webrendering/mraid/p;

.field private c:Lcom/pubmatic/sdk/webrendering/mraid/n;

.field private d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

.field private e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

.field private f:Z

.field private g:Landroid/view/View$OnLayoutChangeListener;

.field private h:Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;

.field private i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field private m:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

.field private n:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/r;

    invoke-direct {v1}, Lcom/pubmatic/sdk/webrendering/mraid/r;-><init>()V

    invoke-direct {v0, p3, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;Lcom/pubmatic/sdk/webrendering/ui/POBHTMLViewClient;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->setRendererViewListener(Lcom/pubmatic/sdk/common/ui/POBHtmlRendererListener;)V

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-direct {v0, p3}, Lcom/pubmatic/sdk/webrendering/mraid/n;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBWebView;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/p;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->k:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p2, p4}, Lcom/pubmatic/sdk/webrendering/mraid/p;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/webrendering/mraid/n;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-virtual {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/q;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iget-object p4, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {p2, p4, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-virtual {p1, p3}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b()V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;)V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->h:Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->g:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$d;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$d;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->g:Landroid/view/View$OnLayoutChangeListener;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PMMraidRenderer"

    const-string v2, "layoutChangeListener null"

    invoke-static {v1, v2, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$e;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V

    invoke-direct {v0, p1, v1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;-><init>(Landroid/content/Context;Lcom/pubmatic/sdk/common/utility/POBUrlHandler$UrlHandlerListener;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->n:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    return-void
.end method

.method private a(Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->h:Lcom/pubmatic/sdk/webrendering/ui/POBAdVisibilityListener;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onRenderAdClick()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->j:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setOnfocusChangedListener(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->n:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->n:Lcom/pubmatic/sdk/common/utility/POBUrlHandler;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/common/utility/POBUrlHandler;->open(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PMMraidRenderer"

    const-string v1, "Click url is missing."

    invoke-static {v0, v1, p1}, Lcom/pubmatic/sdk/common/log/PMLog;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;
    .locals 2

    invoke-static {p0}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->createInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->startAdSession(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    sget-object v1, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;->LOADED:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;

    invoke-interface {v0, v1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->signalAdEvent(Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider$POBHTMLAdEventType;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->signalImpressionEvent()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/mraid/n;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    return-object p0
.end method

.method static synthetic f(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/mraid/p;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    return-object p0
.end method

.method static synthetic g(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c()V

    return-void
.end method

.method static synthetic h(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->destroy()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->i()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->g:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setOnfocusChangedListener(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$OnFocusChangedListener;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->g:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->finishAdSession()V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    :cond_0
    return-void
.end method

.method public invalidateExpiration()V
    .locals 0

    return-void
.end method

.method public isUserInteracted(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->isUserInteracted()Z

    move-result v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->setUserInteracted(Z)V

    :cond_0
    return v0
.end method

.method public onAdInteractionStarted()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStarted()V

    :cond_0
    return-void
.end method

.method public onAdInteractionStopped()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdInteractionStopped()V

    :cond_0
    return-void
.end method

.method public onAdUnload()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdUnload()V

    :cond_0
    return-void
.end method

.method public onAdViewChanged(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->setTrackView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLeavingApplication()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onLeavingApplication()V

    :cond_0
    return-void
.end method

.method public onMRAIDAdClick()V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onRenderAdClick()V

    :cond_0
    return-void
.end method

.method public onObstructionAdded(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->CLOSE_AD:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->addFriendlyObstructions(Landroid/view/View;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;)V

    :cond_0
    return-void
.end method

.method public onObstructionRemoved(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->removeFriendlyObstructions(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onOpen(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onViewClicked(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onViewRendered(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a:Ljava/lang/String;

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->b:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a()V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->f:Z

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a()V

    invoke-direct {p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d()V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->k:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->m:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    invoke-interface {v0, p1, v1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRender(Landroid/view/View;Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->m:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRefreshInterval()I

    move-result p1

    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdReadyToRefresh(I)V

    :cond_3
    return-void
.end method

.method public onViewRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/base/POBAdRendererListener;->onAdRenderingFailed(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_0
    return-void
.end method

.method public prepareToDetach()V
    .locals 0

    return-void
.end method

.method public renderAd(Lcom/pubmatic/sdk/common/base/POBAdDescriptor;)V
    .locals 4

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->m:Lcom/pubmatic/sdk/common/base/POBAdDescriptor;

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getDeviceInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBDeviceInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getAppInfo(Landroid/content/Context;)Lcom/pubmatic/sdk/common/models/POBAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/models/POBAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getAdvertisingID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/models/POBDeviceInfo;->getLmtEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/POBSDKConfig;->isCoppa()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/pubmatic/sdk/webrendering/mraid/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/pubmatic/sdk/common/base/POBAdDescriptor;->getRenderableContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$b;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;->omidJsServiceScript(Landroid/content/Context;Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBScriptListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->loadHTML(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAdRendererListener(Lcom/pubmatic/sdk/common/base/POBAdRendererListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e:Lcom/pubmatic/sdk/common/base/POBAdRendererListener;

    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->j:Ljava/lang/String;

    return-void
.end method

.method public setHTMLMeasurementListener(Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    return-void
.end method

.method public setRenderingTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->setRenderingTimeout(I)V

    return-void
.end method

.method public signalImpressionEvent()V
    .locals 4

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->i:Lcom/pubmatic/sdk/common/viewability/POBHTMLMeasurementProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->l:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$f;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
