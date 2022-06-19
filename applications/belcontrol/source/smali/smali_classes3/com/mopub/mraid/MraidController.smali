.class public Lcom/mopub/mraid/MraidController;
.super Lcom/mopub/mobileads/MoPubWebViewController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$h;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    }
.end annotation


# instance fields
.field public final A:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field public final i:Lcom/mopub/mraid/PlacementType;

.field public final j:Lcom/mopub/common/CloseableLayout;

.field public k:Landroid/view/ViewGroup;

.field public final l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

.field public final m:Lth1;

.field public n:Lcom/mopub/mraid/ViewState;

.field public o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field public p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field public final q:Lcom/mopub/mraid/MraidBridge;

.field public final r:Lcom/mopub/mraid/MraidBridge;

.field public s:Lcom/mopub/mraid/MraidController$h;

.field public t:Ljava/lang/Integer;

.field public u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field public v:Z

.field public w:Lsh1;

.field public final x:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field public y:Ljava/lang/String;

.field public final z:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    new-instance p2, Lcom/mopub/mraid/MraidController$h;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$h;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$h;

    new-instance p2, Lcom/mopub/mraid/MraidController$a;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$a;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mopub/mraid/MraidController;->v:Z

    sget-object p2, Lsh1;->NONE:Lsh1;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->w:Lsh1;

    new-instance p2, Lcom/mopub/mraid/MraidController$d;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$d;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->z:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    new-instance v0, Lcom/mopub/mraid/MraidController$e;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$e;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->A:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    iget-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance p3, Lth1;

    iget-object p6, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p3, p6, p1}, Lth1;-><init>(Landroid/content/Context;F)V

    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    new-instance p1, Lcom/mopub/common/CloseableLayout;

    iget-object p3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    new-instance p3, Lcom/mopub/mraid/MraidController$b;

    invoke-direct {p3, p0}, Lcom/mopub/mraid/MraidController$b;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    new-instance p3, Landroid/view/View;

    iget-object p6, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {p3, p6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p6, Lcom/mopub/mraid/MraidController$c;

    invoke-direct {p6, p0}, Lcom/mopub/mraid/MraidController$c;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p3, p6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p6, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$h;

    iget-object p3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/mopub/mraid/MraidController$h;->register(Landroid/content/Context;)V

    invoke-virtual {p4, p2}, Lcom/mopub/mraid/MraidBridge;->E(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    invoke-virtual {p5, v0}, Lcom/mopub/mraid/MraidBridge;->E(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    new-instance p1, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V
    .locals 7

    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p3, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, v0, p4}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/mraid/PlacementType;Z)V

    new-instance v6, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;)V

    return-void
.end method

.method public static synthetic A(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static C(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_0

    invoke-interface {p0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onExpand()V

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_2

    :goto_0
    invoke-interface {p0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClose()V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onResize(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic e(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-object p0
.end method

.method public static synthetic f(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseWebView;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-object p0
.end method

.method public static synthetic g(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object p0
.end method

.method public static synthetic h(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic i(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic j(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic k(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    return-object p0
.end method

.method public static synthetic l(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    return-object p0
.end method

.method public static synthetic m(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic n(Lcom/mopub/mraid/MraidController;)Lth1;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    return-object p0
.end method

.method public static synthetic o(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->I()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic q(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method public static synthetic r(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic s(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic t(Lcom/mopub/mraid/MraidController;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->H()I

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic v(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method public static synthetic w(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method public static synthetic x(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    return-object p0
.end method

.method public static synthetic y(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method public static synthetic z(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method


# virtual methods
.method public B()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->w:Lsh1;

    sget-object v1, Lsh1;->NONE:Lsh1;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->b0()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lrh1;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lsh1;->a()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->Y(I)V

    :goto_1
    return-void
.end method

.method public D(III)I
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final E()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    return-void
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-void
.end method

.method public final G()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->I()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final H()I
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public final I()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public J()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v3, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->b0()V

    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->Z(Lcom/mopub/mraid/ViewState;)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->F()V

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->Z(Lcom/mopub/mraid/ViewState;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public K(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mraid/WebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public L(Z)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->X()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_1
    return-void
.end method

.method public M(Ljava/net/URI;Z)V
    .locals 5

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->B()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->createWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v2

    check-cast v2, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object v2, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidBridge;->d(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    :cond_3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    const/4 v4, 0x4

    if-ne v3, v1, :cond_7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    :cond_5
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->G()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v3, v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    :cond_8
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v1, v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    :cond_9
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->L(Z)V

    sget-object p1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->Z(Lcom/mopub/mraid/ViewState;)V

    return-void

    :cond_b
    new-instance p1, Lrh1;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Lrh1;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/WebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public O(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onClicked()V

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Uri scheme %s is not allowed."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Lrh1;

    const-string v2, "Unsupported MRAID Javascript command"

    invoke-direct {v0, v2}, Lrh1;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    :cond_2
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/mopub/common/UrlAction;

    sget-object v6, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v6, v5, v4

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v5, v3

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/util/ManifestUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->u:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    invoke-virtual {v0, v2}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    :cond_3
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public P(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->c0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Q()V
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->d(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->a(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->W()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge;->s(ZZZZZ)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->q(Lcom/mopub/mraid/PlacementType;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->u(Z)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lth1;)V

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->Z(Lcom/mopub/mraid/ViewState;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->r()V

    return-void
.end method

.method public R(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public S(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 17
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v7, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v6, v7, :cond_a

    sget-object v7, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v6, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v7, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v6, v7, :cond_9

    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v7, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-eq v6, v7, :cond_8

    int-to-float v6, v1

    iget-object v7, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    int-to-float v7, v2

    iget-object v8, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v7

    int-to-float v8, v3

    iget-object v9, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    int-to-float v9, v4

    iget-object v10, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    iget-object v10, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v10}, Lth1;->c()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    iget-object v8, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v8}, Lth1;->c()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    new-instance v9, Landroid/graphics/Rect;

    add-int/2addr v6, v10

    add-int v11, v8, v7

    invoke-direct {v9, v10, v8, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, ")"

    const-string v8, ") and offset ("

    const-string v10, "resizeProperties specified a size ("

    const-string v11, ", "

    if-nez p6, :cond_2

    iget-object v12, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v12}, Lth1;->e()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-gt v13, v14, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_1

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->D(III)I

    move-result v13

    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->top:I

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v12, v12, v16

    invoke-virtual {v0, v14, v15, v12}, Lcom/mopub/mraid/MraidController;->D(III)I

    move-result v12

    invoke-virtual {v9, v13, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    new-instance v5, Lrh1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v1}, Lth1;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v1}, Lth1;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_0
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v5, v9, v12}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v13}, Lth1;->e()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v3}, Lth1;->e()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v3}, Lth1;->e()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v3, v2, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebViewViewability;->disableTracking()V

    :cond_3
    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mraid/MraidController;->G()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    instance-of v2, v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz v2, :cond_5

    check-cast v1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseWebViewViewability;->enableTracking()V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_5

    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->Z(Lcom/mopub/mraid/ViewState;)V

    return-void

    :cond_6
    new-instance v2, Lrh1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v5, Lrh1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v1}, Lth1;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->m:Lth1;

    invoke-virtual {v1}, Lth1;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    new-instance v1, Lrh1;

    const-string v2, "Not allowed to resize from an interstitial ad"

    invoke-direct {v1, v2}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Lrh1;

    const-string v2, "Not allowed to resize from an already expanded ad"

    invoke-direct {v1, v2}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    return-void

    :cond_b
    new-instance v1, Lrh1;

    const-string v2, "Unable to resize after the WebView is destroyed"

    invoke-direct {v1, v2}, Lrh1;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public T(ZLsh1;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->a0(Lsh1;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->v:Z

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->w:Lsh1;

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    sget-object p2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object p2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->h:Z

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->B()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lrh1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lrh1;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public V()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/mopub/mraid/MraidController$f;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$f;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->c0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public W()Z
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Z
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Y(I)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->w:Lsh1;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->a0(Lsh1;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_1
    new-instance p1, Lrh1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->w:Lsh1;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lrh1;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final Z(Lcom/mopub/mraid/ViewState;)V
    .locals 4

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRAID state set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->t(Lcom/mopub/mraid/ViewState;)V

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->t(Lcom/mopub/mraid/ViewState;)V

    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->d:Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;

    if-eqz v1, :cond_1

    invoke-static {v1, v0, p1}, Lcom/mopub/mraid/MraidController;->C(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidController;->c0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()V
    .locals 3

    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->s:Lcom/mopub/mraid/MraidController$h;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$h;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->j:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->E()V

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->F()V

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->b0()V

    return-void

    :cond_0
    throw v0
.end method

.method public a0(Lsh1;)Z
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    sget-object v0, Lsh1;->NONE:Lsh1;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lsh1;->a()I

    move-result p1

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    invoke-static {p1, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    invoke-static {p1, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    check-cast v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->d(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    return-void
.end method

.method public b0()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->t:Ljava/lang/Integer;

    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->c(Z)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public final c0(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->cancelLastRequest()V

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->l:Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$g;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$g;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubWebViewController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 2

    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/mopub/mobileads/MoPubWebViewController;->d()V

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->p:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubWebViewController;->f:Lcom/mopub/mobileads/BaseWebView;

    check-cast v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->l(Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->X()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->B()V
    :try_end_0
    .catch Lrh1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to apply orientation."

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubWebViewController;->e:Lcom/mopub/mraid/WebViewDebugListener;

    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->o:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    return-void
.end method
