.class public Lcom/amazon/device/ads/DTBAdView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdView$WebBridge;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "DTBAdView"


# instance fields
.field b:Lcom/amazon/device/ads/DTBAdMRAIDController;

.field c:Z

.field d:Z

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/amazon/device/ads/DTBAdViewSupportClient;

.field i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private l:Lcom/amazon/device/ads/DTBAdView$WebBridge;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Z

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdBannerListener;)V
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->m:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 94
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->n:Z

    .line 96
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 100
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->p:Z

    .line 119
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 133
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdBannerListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 134
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->m:Z

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 94
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->n:Z

    .line 96
    iput-boolean p2, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    const/4 p2, -0x1

    .line 98
    iput p2, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 100
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->c()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/device/ads/DTBAdView;->p:Z

    .line 119
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 142
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    invoke-direct {p1, p0}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    .line 143
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 144
    invoke-static {p3}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->a(I)Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    move-result-object p2

    .line 1029
    iput-object p2, p1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->j:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    .line 146
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 1

    .line 124
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->m:Z

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->c:Z

    .line 94
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->n:Z

    .line 96
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 100
    invoke-static {}, Lcom/amazon/device/ads/WebResourceOptions;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->p:Z

    .line 119
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 126
    new-instance p1, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;

    invoke-direct {p1, p0, p2}, Lcom/amazon/device/ads/DTBAdMRAIDInterstitialController;-><init>(Lcom/amazon/device/ads/DTBAdView;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    .line 127
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 182
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 188
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    .line 190
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 194
    new-instance v0, Lcom/amazon/device/ads/DTBAdViewSupportClient;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/DTBAdViewSupportClient;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdMRAIDController;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->h:Lcom/amazon/device/ads/DTBAdViewSupportClient;

    .line 195
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 196
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/DTBAdView;->b(Z)V

    .line 199
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$WebBridge;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$WebBridge;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->l:Lcom/amazon/device/ads/DTBAdView$WebBridge;

    const-string v1, "amzn_bridge"

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/DTBAdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->a()V

    .line 206
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$1;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 212
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 215
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$2;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 222
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 224
    new-instance v0, Lcom/amazon/device/ads/DTBAdView$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/DTBAdView$3;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 231
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 233
    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdView$ys3TRHw_0J-YR7kcsleUwo5QMgg;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdView$ys3TRHw_0J-YR7kcsleUwo5QMgg;-><init>(Lcom/amazon/device/ads/DTBAdView;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/widget/ScrollView;Z)V
    .locals 11

    .line 485
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 486
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 488
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 489
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v2, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v3, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v1, [I

    .line 493
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 494
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v5

    mul-int v2, v2, v5

    int-to-float v2, v2

    .line 495
    new-instance v5, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    aget v9, v0, v4

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v10

    add-int/2addr v0, v10

    invoke-direct {v5, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p1, :cond_0

    .line 498
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 501
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 502
    new-instance v1, Landroid/graphics/Rect;

    aget v7, v0, v4

    aget v8, v0, v6

    aget v9, v0, v4

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 503
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 504
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 506
    :goto_0
    iget p1, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    mul-int p1, p1, v0

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v2

    float-to-int v4, p1

    .line 511
    :cond_1
    iget p1, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    if-ne v4, p1, :cond_2

    if-eqz p2, :cond_3

    .line 512
    :cond_2
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 513
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(ILandroid/graphics/Rect;)V

    .line 514
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->q()V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/amazon/device/ads/DTBAdView;)V
    .locals 10

    .line 2327
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2337
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2339
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v0, :cond_2

    .line 2340
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 2341
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2343
    :cond_1
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    :cond_2
    return-void

    :cond_3
    const v2, 0x1020002

    .line 2348
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 2350
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 2351
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v1

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v3, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v3, v3, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v3, v0

    invoke-direct {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v2, [I

    .line 2355
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 2356
    new-instance v3, Landroid/graphics/Rect;

    aget v5, v0, v1

    aget v7, v0, v6

    aget v8, v0, v1

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v9

    add-int/2addr v0, v9

    invoke-direct {v3, v5, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2359
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2360
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v0, :cond_b

    .line 2361
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_4

    .line 2362
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2364
    :cond_4
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    .line 2365
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_0

    .line 2369
    :cond_5
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->b()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_9

    new-array v2, v2, [I

    .line 2372
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 2373
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v1

    aget v7, v2, v6

    aget v8, v2, v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v4, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2374
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v0, :cond_7

    .line 2375
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_6

    .line 2376
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2378
    :cond_6
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    .line 2379
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_0

    .line 2380
    :cond_7
    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-nez v0, :cond_b

    .line 2381
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_8

    .line 2382
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2384
    :cond_8
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    .line 2385
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto :goto_0

    .line 2388
    :cond_9
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_a

    iget-boolean v2, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-nez v2, :cond_a

    .line 2389
    invoke-virtual {v0, v6}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2391
    :cond_a
    invoke-direct {p0, v6}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    .line 2394
    :cond_b
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v0, :cond_c

    .line 2399
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->a(Z)V

    :cond_c
    return-void

    .line 2328
    :cond_d
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-eqz v0, :cond_f

    .line 2329
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_e

    .line 2330
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->c(Z)V

    .line 2332
    :cond_e
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/DTBAdView;->d(Z)V

    :cond_f
    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 235
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const-wide/16 v2, 0x0

    if-eq p1, p2, :cond_0

    .line 255
    iput-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->q:J

    goto :goto_0

    .line 239
    :cond_0
    iget-wide p1, p0, Lcom/amazon/device/ads/DTBAdView;->r:J

    sub-long p1, v0, p1

    const-wide/16 v4, 0x3e8

    cmp-long v6, p1, v4

    if-ltz v6, :cond_3

    .line 243
    iget-wide p1, p0, Lcom/amazon/device/ads/DTBAdView;->q:J

    sub-long p1, v0, p1

    const-wide/16 v4, 0x1f4

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    .line 244
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->r:J

    .line 245
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->i()V

    .line 247
    :cond_1
    iput-wide v2, p0, Lcom/amazon/device/ads/DTBAdView;->q:J

    goto :goto_0

    .line 251
    :cond_2
    iput-wide v0, p0, Lcom/amazon/device/ads/DTBAdView;->q:J

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()Landroid/widget/ScrollView;
    .locals 2

    move-object v0, p0

    .line 470
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 471
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 474
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 475
    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    .line 477
    :cond_0
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/device/ads/DTBAdView;)Lcom/amazon/device/ads/DTBAdMRAIDController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    return-object p0
.end method

.method private c(Z)V
    .locals 10

    .line 426
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 427
    invoke-static {v0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/amazon/device/ads/DTBAdUtil;->a(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x1020002

    .line 433
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 435
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 436
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v2, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v2, v2, v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    invoke-direct {v3, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-array v0, v1, [I

    .line 439
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationOnScreen([I)V

    .line 440
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v5, v0, v6

    aget v7, v0, v4

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-direct {v1, v2, v5, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 441
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v2

    mul-int v0, v0, v2

    int-to-float v0, v0

    .line 442
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 443
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    mul-int v2, v2, v3

    int-to-float v2, v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    float-to-double v5, v2

    mul-double v5, v5, v3

    float-to-double v2, v0

    div-double/2addr v5, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v2

    double-to-int v0, v5

    .line 445
    iget v2, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_3

    .line 446
    :cond_2
    iput v0, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 447
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(ILandroid/graphics/Rect;)V

    :cond_3
    return-void

    .line 452
    :cond_4
    iget v0, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    if-nez v0, :cond_5

    if-eqz p1, :cond_6

    .line 453
    :cond_5
    iput v4, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 454
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 455
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iget v0, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(ILandroid/graphics/Rect;)V

    :cond_6
    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 520
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->d:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 523
    iput p1, p0, Lcom/amazon/device/ads/DTBAdView;->o:I

    .line 524
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz p1, :cond_0

    .line 525
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$ys3TRHw_0J-YR7kcsleUwo5QMgg(Lcom/amazon/device/ads/DTBAdView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 272
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->p:Z

    const-string v1, "</script>"

    const-string v2, "<script>"

    if-nez v0, :cond_0

    .line 275
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/WebResourceService;->b()Lcom/amazon/device/ads/WebResourceService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebResourceService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 283
    :catch_0
    sget-object v0, Lcom/amazon/device/ads/DTBAdView;->a:Ljava/lang/String;

    const-string v3, "Failed to read local file"

    invoke-static {v0, v3}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 289
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 291
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 299
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error reading file:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    .line 301
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Z)V
    .locals 7

    .line 403
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdView;->b()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/DTBAdView;->a(Landroid/widget/ScrollView;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 408
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/DTBAdView;->getLocationInWindow([I)V

    .line 409
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 410
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->c(Z)V

    .line 412
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController;->a(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method final b(Z)V
    .locals 0

    .line 796
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->m:Z

    .line 798
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->setVerticalScrollBarEnabled(Z)V

    .line 799
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/DTBAdView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 649
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public finalize()V
    .locals 2

    .line 805
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 806
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 807
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 162
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 164
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->k:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdView;->j:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 305
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 306
    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->n:Z

    if-eqz p1, :cond_3

    .line 307
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->a()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->a()Lcom/amazon/device/ads/DTBTimeTrace;

    move-result-object p1

    .line 2059
    iget-boolean v0, p1, Lcom/amazon/device/ads/DTBTimeTrace;->b:Z

    if-eqz v0, :cond_0

    .line 2062
    iget-object p1, p1, Lcom/amazon/device/ads/DTBTimeTrace;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;

    const-string v1, "AD displayed"

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->a()Lcom/amazon/device/ads/DTBTimeTrace;

    invoke-static {}, Lcom/amazon/device/ads/DTBTimeTrace;->b()V

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdView;->b:Lcom/amazon/device/ads/DTBAdMRAIDController;

    instance-of v0, p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    if-eqz v0, :cond_2

    .line 316
    check-cast p1, Lcom/amazon/device/ads/DTBAdViewDisplayListener;

    .line 317
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBAdViewDisplayListener;->h()V

    :cond_2
    const/4 p1, 0x0

    .line 319
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdView;->n:Z

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdView;->m:Z

    if-eqz v0, :cond_0

    .line 779
    invoke-super {p0, p1, p2, p4, p3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 781
    invoke-virtual {p0, p1, p1}, Lcom/amazon/device/ads/DTBAdView;->scrollTo(II)V

    return-void
.end method
