.class public Lcom/verizon/ads/webview/VASAdsWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;,
        Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;,
        Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;,
        Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final g:Ljava/lang/String;

.field private static final h:Z

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;


# instance fields
.field protected b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

.field c:Ljava/lang/String;

.field volatile d:Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;

.field e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/iab/omid/library/verizonmedia/adsession/b;

.field private volatile m:Lorg/json/JSONArray;

.field private n:Landroid/view/GestureDetector;

.field private volatile o:Z

.field private volatile p:Z

.field private q:Lcom/iab/omid/library/verizonmedia/adsession/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lcom/verizon/ads/webview/VASAdsWebView;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->g:Ljava/lang/String;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/verizon/ads/webview/VASAdsWebView;->h:Z

    const-string v0, "<html[^>]*>"

    const/4 v1, 0x2

    .line 70
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->i:Ljava/util/regex/Pattern;

    const-string v0, "<head[^>]*>"

    .line 71
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->j:Ljava/util/regex/Pattern;

    const-string v0, "<body[^>]*>"

    .line 72
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->k:Ljava/util/regex/Pattern;

    const-string v0, "<(?!meta)[^>]*>"

    .line 73
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;)V
    .locals 4

    .line 227
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    .line 83
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->p:Z

    const/4 v1, 0x3

    .line 229
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating webview "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const-string v1, "VASAdsWebView"

    .line 233
    invoke-virtual {p0, v1}, Lcom/verizon/ads/webview/VASAdsWebView;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->b()Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    .line 237
    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->setVerticalScrollBarEnabled(Z)V

    .line 240
    new-instance p2, Landroid/view/GestureDetector;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;

    invoke-direct {v1, p0}, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsWebView;->n:Landroid/view/GestureDetector;

    .line 243
    new-instance p1, Lcom/verizon/ads/webview/VASAdsWebViewClient;

    invoke-direct {p1}, Lcom/verizon/ads/webview/VASAdsWebViewClient;-><init>()V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 244
    new-instance p1, Lcom/verizon/ads/webview/VASAdsWebChromeClient;

    invoke-direct {p1}, Lcom/verizon/ads/webview/VASAdsWebChromeClient;-><init>()V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 247
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    .line 248
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, -0x1

    .line 249
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const-string v1, "UTF-8"

    .line 250
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 252
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 253
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 255
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 256
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Disabling user gesture requirement for media playback"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 260
    :cond_2
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 264
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 267
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    .line 269
    sget-boolean v0, Lcom/verizon/ads/webview/VASAdsWebView;->h:Z

    if-eqz v0, :cond_3

    const-string v0, "actionsQueue.js"

    const-string v1, "vas/actionsQueue.js"

    .line 270
    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->a()Ljava/util/List;

    move-result-object p1

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 278
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 283
    :cond_5
    new-instance p1, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;

    invoke-direct {p1, p0}, Lcom/verizon/ads/webview/VASAdsWebView$CommonJavaScriptInterface;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;)V

    const-string p2, "MmInjectedFunctions"

    invoke-virtual {p0, p1, p2}, Lcom/verizon/ads/webview/VASAdsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/webview/VASAdsWebView;)Lorg/json/JSONArray;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->m:Lorg/json/JSONArray;

    return-object p0
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p5, "vasadsdk"

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3058
    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_1

    const/4 p1, 0x0

    .line 460
    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/ErrorInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 464
    sget-object p2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string p3, "Error occurred when calling through to loadDataWithBaseUrl"

    invoke-virtual {p2, p3, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/webview/VASAdsWebView;->g:Ljava/lang/String;

    const/4 p3, -0x2

    const-string p4, "Exception occurred loading content."

    invoke-direct {p1, p2, p4, p3}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "Error closing asset input stream"

    const/4 v1, 0x0

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 786
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 792
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 794
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v2, v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 788
    :try_start_2
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error opening asset input stream"

    invoke-virtual {v2, v3, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 792
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 794
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v1, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const-string p1, ""

    return-object p1

    :goto_2
    if-eqz v1, :cond_2

    .line 792
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 794
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {v2, v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    :cond_2
    :goto_3
    throw p1
.end method

.method static synthetic b(Lcom/verizon/ads/webview/VASAdsWebView;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->m:Lorg/json/JSONArray;

    return-object v0
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 589
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Calling js: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 593
    invoke-virtual {p0, p1, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private c()Z
    .locals 11

    .line 747
    invoke-static {}, Lcom/verizon/ads/omsdk/OMSDKPlugin;->getMeasurementService()Lcom/verizon/ads/omsdk/OpenMeasurementService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 749
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled"

    invoke-virtual {v0, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return v1

    .line 755
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->getPartner()Lcom/iab/omid/library/verizonmedia/adsession/i;

    move-result-object v4

    const-string v8, ""

    const-string v0, "Partner is null"

    .line 2000
    invoke-static {v4, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/verizonmedia/adsession/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/iab/omid/library/verizonmedia/adsession/d;->HTML:Lcom/iab/omid/library/verizonmedia/adsession/d;

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/iab/omid/library/verizonmedia/adsession/c;-><init>(Lcom/iab/omid/library/verizonmedia/adsession/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/verizonmedia/adsession/d;)V

    .line 758
    sget-object v2, Lcom/iab/omid/library/verizonmedia/adsession/e;->HTML_DISPLAY:Lcom/iab/omid/library/verizonmedia/adsession/e;

    sget-object v3, Lcom/iab/omid/library/verizonmedia/adsession/g;->OTHER:Lcom/iab/omid/library/verizonmedia/adsession/g;

    sget-object v4, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    const/4 v5, 0x0

    .line 759
    invoke-static {v2, v3, v4, v5, v1}, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;

    move-result-object v2

    .line 761
    invoke-static {v2, v0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;Lcom/iab/omid/library/verizonmedia/adsession/c;)Lcom/iab/omid/library/verizonmedia/adsession/b;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 766
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v3, "OMSDK is disabled - error initializing OMSDK Ad Session."

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private synthetic d()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_0

    return-void

    .line 714
    :cond_0
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing OMSDK"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 722
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-static {v1}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a(Lcom/iab/omid/library/verizonmedia/adsession/b;)Lcom/iab/omid/library/verizonmedia/adsession/a;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->q:Lcom/iab/omid/library/verizonmedia/adsession/a;

    .line 725
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {v1, p0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a(Landroid/view/View;)V

    const-string v1, "Starting the OMSDK Ad Session."

    .line 728
    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {v1}, Lcom/iab/omid/library/verizonmedia/adsession/b;->a()V

    .line 732
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->q:Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/verizonmedia/adsession/a;->b()V

    const-string v1, "Fired OMSDK loaded event."

    .line 733
    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 736
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "OMSDK is disabled - error starting OMSDK Ad Session."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    .line 739
    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->q:Lcom/iab/omid/library/verizonmedia/adsession/a;

    return-void
.end method

.method private synthetic d(Ljava/lang/String;)V
    .locals 2

    .line 2852
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    if-eqz v0, :cond_0

    .line 2853
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Attempt to loadUrlOnUiThread after webview has been destroyed"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 2859
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2862
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error loading url"

    invoke-virtual {v0, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    const/4 v0, 0x3

    .line 346
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Releasing webview "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    :cond_1
    const-string v0, "about:blank"

    .line 4058
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->stopLoading()V

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 364
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v3, "An error occurred destroying the webview."

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    :goto_0
    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->n:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic j()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/verizon/ads/webview/VASAdsWebView;->h:Z

    return v0
.end method

.method static synthetic k()Lcom/verizon/ads/Logger;
    .locals 1

    .line 58
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method

.method public static synthetic lambda$SpTF7XLzwPbmV3fbdV_YREF5Hr0(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$UtWIWJvHjr9RS12mpOK_1BCvBGo(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/webview/VASAdsWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$WHeBH-cxM56FvYjT-f-NHoIkynA(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->d()V

    return-void
.end method

.method public static synthetic lambda$ihvQkcHU61EMaCpp8QCQ_z30TuM(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/verizon/ads/webview/VASAdsWebView;->e()V

    return-void
.end method

.method public static synthetic lambda$lyRLzQsQbeErs2U-LEUFN75QOnU(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n<script>"

    .line 684
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-direct {p0, v1}, Lcom/verizon/ads/webview/VASAdsWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</script>"

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 2708
    new-instance v0, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$WHeBH-cxM56FvYjT-f-NHoIkynA;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$WHeBH-cxM56FvYjT-f-NHoIkynA;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 829
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->d:Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->d:Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;

    invoke-interface {v0, p1}, Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    const/4 p1, 0x0

    .line 831
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->d:Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;

    :cond_0
    return-void
.end method

.method protected b()Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;
    .locals 1

    .line 804
    new-instance v0, Lcom/verizon/ads/webview/VASAdsWebView$1;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/VASAdsWebView$1;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;)V

    return-object v0
.end method

.method public varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 554
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1695
    :try_start_0
    iget-object p2, p0, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    const/4 v1, 0x3

    if-nez p2, :cond_1

    .line 557
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 558
    sget-object p2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jsBridge scripts are not loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 564
    :cond_1
    sget-boolean p2, Lcom/verizon/ads/webview/VASAdsWebView;->h:Z

    if-eqz p2, :cond_4

    .line 565
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "functionName"

    .line 566
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "args"

    .line 567
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :try_start_1
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queuing js: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " args: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 577
    :cond_2
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->m:Lorg/json/JSONArray;

    if-nez p1, :cond_3

    .line 578
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->m:Lorg/json/JSONArray;

    .line 580
    :cond_3
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->m:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 581
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 584
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 587
    new-instance p2, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$SpTF7XLzwPbmV3fbdV_YREF5Hr0;

    invoke-direct {p2, p0, p1}, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$SpTF7XLzwPbmV3fbdV_YREF5Hr0;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/verizon/ads/webview/VASAdsWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 598
    sget-object p2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to execute javascript function"

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public fireImpression()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->q:Lcom/iab/omid/library/verizonmedia/adsession/a;

    if-eqz v0, :cond_0

    .line 510
    :try_start_0
    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a()V

    .line 511
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK impression event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 513
    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Error occurred firing OMSDK Impression event."

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;)V
    .locals 10

    const-string v0, "com.verizon.ads"

    const-string v1, "waterfallProviderBaseUrl"

    const-string v2, "http://ads.nexage.com"

    .line 299
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p4

    .line 301
    invoke-virtual/range {v3 .. v9}, Lcom/verizon/ads/webview/VASAdsWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    .line 401
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;)V
    .locals 13

    move-object v9, p0

    move-object v0, p2

    move-object/from16 v1, p6

    .line 420
    iput-object v1, v9, Lcom/verizon/ads/webview/VASAdsWebView;->d:Lcom/verizon/ads/webview/VASAdsWebView$LoadDataListener;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/verizon/ads/ErrorInfo;

    sget-object v1, Lcom/verizon/ads/webview/VASAdsWebView;->g:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "data was null"

    invoke-direct {v0, v1, v3, v2}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    :cond_0
    move-object v3, p1

    .line 428
    iput-object v3, v9, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    .line 430
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    .line 431
    iget-object v2, v9, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/lit8 v8, v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "<meta http-equiv=\"Content-Security-Policy\" content=\"upgrade-insecure-requests\"><style>body {margin:0;padding:0;}</style>"

    goto :goto_0

    :cond_1
    const-string v1, "<style>body {margin:0;padding:0;}</style>"

    .line 1618
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/verizon/ads/webview/VASAdsWebView;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x40

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1625
    sget-object v5, Lcom/verizon/ads/webview/VASAdsWebView;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, 0x0

    .line 1626
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v10, "<html>"

    .line 1628
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1634
    :cond_2
    sget-object v10, Lcom/verizon/ads/webview/VASAdsWebView;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1635
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_4

    .line 1638
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 1639
    sget-object v10, Lcom/verizon/ads/webview/VASAdsWebView;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1640
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v10

    invoke-virtual {v5, v0, v10}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1645
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1646
    invoke-virtual {v5, v2, v11}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1647
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1651
    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1656
    :cond_4
    sget-object v10, Lcom/verizon/ads/webview/VASAdsWebView;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1657
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const-string v12, "<head>"

    if-eqz v10, :cond_5

    .line 1659
    invoke-virtual {v5, v2, v11}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1660
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</head>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1663
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    if-nez v7, :cond_6

    .line 1666
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</head><body>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</body>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    if-nez v7, :cond_7

    const-string v0, "</html>"

    .line 1672
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1675
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/omsdk/OMSDKPlugin;->getMeasurementService()Lcom/verizon/ads/omsdk/OpenMeasurementService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 439
    invoke-virtual {v0, v1}, Lcom/verizon/ads/omsdk/OpenMeasurementService;->enhanceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 442
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Error injecting OMSDK scripts into HTML content."

    invoke-virtual {v2, v5, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    :cond_8
    :goto_2
    invoke-virtual {p0, v1}, Lcom/verizon/ads/webview/VASAdsWebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 447
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 448
    sget-object v2, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const-string v1, "Injected Content:\n%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 451
    :cond_9
    new-instance v10, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$lyRLzQsQbeErs2U-LEUFN75QOnU;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$lyRLzQsQbeErs2U-LEUFN75QOnU;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v10}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Url is null or empty"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->o:Z

    if-eqz v0, :cond_1

    .line 489
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Attempt to load url after webview has been destroyed"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "http"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView;->c:Ljava/lang/String;

    .line 497
    :cond_2
    new-instance v0, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$UtWIWJvHjr9RS12mpOK_1BCvBGo;

    invoke-direct {v0, p0, p1}, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$UtWIWJvHjr9RS12mpOK_1BCvBGo;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 528
    iput-boolean v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->p:Z

    .line 530
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->n:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 534
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 3

    .line 329
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 330
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "release must be called on the UI thread"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/verizon/ads/webview/VASAdsWebView;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Finishing the OMSDK Ad session."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView;->f:Lcom/iab/omid/library/verizonmedia/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/b;->b()V

    .line 342
    :cond_1
    new-instance v0, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$ihvQkcHU61EMaCpp8QCQ_z30TuM;

    invoke-direct {v0, p0}, Lcom/verizon/ads/webview/-$$Lambda$VASAdsWebView$ihvQkcHU61EMaCpp8QCQ_z30TuM;-><init>(Lcom/verizon/ads/webview/VASAdsWebView;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/verizon/ads/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method
