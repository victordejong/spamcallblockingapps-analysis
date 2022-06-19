.class final Lcom/mopub/mraid/MraidBridge$4;
.super Lcom/mopub/mraid/MraidWebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$4;->a:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 326
    instance-of p2, p1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz p2, :cond_0

    .line 327
    check-cast p1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->setPageLoaded()V

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$4;->a:Lcom/mopub/mraid/MraidBridge;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->c(Lcom/mopub/mraid/MraidBridge;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 335
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mopub/mraid/MraidWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 342
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$4;->a:Lcom/mopub/mraid/MraidBridge;

    if-eqz p2, :cond_0

    .line 1420
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 1424
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 1425
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge;->a()V

    .line 1427
    iget-object v0, p1, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v0, :cond_1

    .line 1428
    iget-object p1, p1, Lcom/mopub/mraid/MraidBridge;->a:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$4;->a:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
