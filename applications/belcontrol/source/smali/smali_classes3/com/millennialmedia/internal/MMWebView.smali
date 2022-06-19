.class public Lcom/millennialmedia/internal/MMWebView;
.super Landroid/webkit/WebView;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;,
        Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static googleSecurityPatchEnabled:Z


# instance fields
.field private currentPosition:[I

.field public currentUrl:Ljava/lang/String;

.field private volatile destroyed:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field public jsBridge:Lcom/millennialmedia/internal/JSBridge;

.field private jsScriptsInjected:Z

.field private lastPosition:[I

.field private moatFactory:Lbf1;

.field private final options:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

.field private final viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private webAdTracker:Lrf1;

.field public final webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    iput-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->destroyed:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating webview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->getDefault()Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView;->options:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    const-string v1, "MMWebView"

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    iput-object p3, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    iget-boolean v1, p2, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->transparent:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;

    invoke-direct {v2, p3}, Lcom/millennialmedia/internal/MMWebView$MMWebViewGestureListener;-><init>(Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;

    invoke-direct {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;

    invoke-direct {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v2, "Disabling user gesture requirement for media playback"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google security patch is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    if-eqz v2, :cond_5

    const-string v2, "enabled"

    goto :goto_1

    :cond_5
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    sget-boolean v0, Lcom/millennialmedia/internal/MMWebView;->googleSecurityPatchEnabled:Z

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    new-instance p1, Lcom/millennialmedia/internal/JSBridge;

    iget-boolean p3, p2, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->interstitial:Z

    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-direct {p1, p0, p3, v0}, Lcom/millennialmedia/internal/JSBridge;-><init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean p2, p2, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableEnhancedAdControl:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/millennialmedia/internal/JSBridge;->enableApiCalls()V

    :cond_7
    new-instance p1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance p2, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;

    invoke-direct {p2, p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewViewabilityListener;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-direct {p1, p0, p2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to create MMWebView instance, specified listener is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/millennialmedia/internal/MMWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView;->setLoaded()V

    return-void
.end method

.method public static synthetic access$400(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->loadUrlOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method private isOriginalUrl(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadUrlOnUiThread(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "Error loading url"

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setLoaded()V
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->onLoaded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getExtraScriptToInject()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->destroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectExtraAPIs()V
    .locals 0

    return-void
.end method

.method public varargs invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->destroyed:Z

    return v0
.end method

.method public isEnhancedAdControlEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->areApiCallsEnabled()Z

    move-result v0

    return v0
.end method

.method public isJSBridgeReady()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->isReady()Z

    move-result v0

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string p3, "Error hit when calling through to loadDataWithBaseUrl"

    invoke-static {p2, p3, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v0, "Url is null or empty"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->destroyed:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v0, "Attempt to load url after webview has been destroyed"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/MMWebView$2;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->options:Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;->enableMoat:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbf1;->a(Landroid/app/Activity;)Lbf1;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->moatFactory:Lbf1;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->webAdTracker:Lrf1;

    if-nez v1, :cond_3

    invoke-virtual {v0, p0}, Lbf1;->c(Landroid/webkit/WebView;)Lrf1;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webAdTracker:Lrf1;

    invoke-interface {v0}, Lrf1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "MOAT tracking initialization failed."

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "MOAT tracking enabled for MMWebView."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "MOAT disabled. Cannot determine host Activity for Ad."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "Moat is not enabled for this MMWebView."

    :goto_0
    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onLoaded()V

    return-void
.end method

.method public onNotifyClicked()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    aget v4, v3, v1

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    aget v2, v0, v5

    aget v4, v3, v5

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    aget v2, v0, v1

    aput v2, v3, v1

    aget v0, v0, v5

    aput v0, v3, v5

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/JSBridge;->setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V

    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/millennialmedia/internal/JSBridge;->setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->enableApiCalls()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "release must be called on the UI thread"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing webview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    :cond_2
    const-string v0, "about:blank"

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v3, "An error occurred destroying the webview."

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->destroyed:Z

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v2, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->injectJSBridge(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/millennialmedia/internal/MMWebView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/internal/MMWebView$1;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStateCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateCollapsed()V

    :cond_0
    return-void
.end method

.method public setStateExpanded()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateExpanded()V

    :cond_0
    return-void
.end method

.method public setStateResized()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResized()V

    :cond_0
    return-void
.end method

.method public setStateResizing()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResizing()V

    :cond_0
    return-void
.end method

.method public setStateUnresized()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateUnresized()V

    :cond_0
    return-void
.end method

.method public setTwoPartExpand()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setTwoPartExpand()V

    :cond_0
    return-void
.end method
