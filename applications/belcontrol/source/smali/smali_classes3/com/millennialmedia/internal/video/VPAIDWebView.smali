.class public Lcom/millennialmedia/internal/video/VPAIDWebView;
.super Lcom/millennialmedia/internal/MMWebView;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final DEFAULT_BITRATE:I = 0x320

.field private static final LTE_BITRATE:I = 0x320

.field private static final MM_JS_BRIDGE_VPAID_INIT:Ljava/lang/String; = "MmJsBridge.vpaid.init"

.field private static final TAG:Ljava/lang/String;

.field private static final VPAID_SCRIPT:Ljava/lang/String; = "vpaid.js"

.field private static final WIFI_BITRATE:I = 0x4b0


# instance fields
.field private backButtonEnableTime:J

.field private isSkippable:Z

.field private vastDocuments:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/video/VPAIDWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 3

    new-instance v0, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2, v2}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    invoke-direct {p0, p1, v0, p3}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->isSkippable:Z

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->backButtonEnableTime:J

    const-string p1, "VPAIDWebView"

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method private static getDesiredBitrate()I
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x320

    if-eqz v1, :cond_0

    const/16 v2, 0x4b0

    goto :goto_0

    :cond_0
    const-string v1, "lte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v2
.end method


# virtual methods
.method public adLoadFailed(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    const-string v0, "Received adLoadFailed notification from VPAID"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    :cond_1
    return-void
.end method

.method public adLoadSucceeded(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    const-string v0, "Received adLoadSucceeded notification from VPAID"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onLoaded()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVPAIDMaxBackButtonDelay()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->backButtonEnableTime:J

    return-void
.end method

.method public adSkippable(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    const-string v0, "Received adSkippable notification from VPAID"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->isSkippable:Z

    return-void
.end method

.method public getExtraScriptToInject()Ljava/lang/String;
    .locals 1

    const-string v0, "vpaid.js"

    return-object v0
.end method

.method public injectExtraAPIs()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    const-string v0, "MmInjectedFunctionsVpaid"

    invoke-virtual {p0, p0, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->isSkippable:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->backButtonEnableTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->isSkippable:Z

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    const-string v1, "Back button enabled due to delay timeout"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->isSkippable:Z

    return v0
.end method

.method public onLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->vastDocuments:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "vastDocs"

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->vastDocuments:Ljava/util/List;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "minSkipOffset"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMin()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "maxSkipOffset"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "desiredBitrate"

    invoke-static {}, Lcom/millennialmedia/internal/video/VPAIDWebView;->getDesiredBitrate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "startAdTimeout"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVPAIDStartAdTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "skipAdTimeout"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVPAIDSkipAdTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adUnitTimeout"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVPAIDAdUnitTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "htmlEndCardTimeout"

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVPAIDHTMLEndCardTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "MmJsBridge.vpaid.init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/millennialmedia/internal/video/VPAIDWebView;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create JSON arguments for vpaid init"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->vastDocuments:Ljava/util/List;

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/internal/MMWebView;->release()V

    return-void
.end method

.method public setVastDocuments(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VPAIDWebView;->vastDocuments:Ljava/util/List;

    const-string p1, "<HTML><HEAD><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\' /></HEAD><BODY></BODY></HTML>"

    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public updateLayout()V
    .locals 0

    return-void
.end method
