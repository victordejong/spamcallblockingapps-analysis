.class Lcom/verizon/ads/webview/VASAdsWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/verizon/ads/webview/VASAdsWebChromeClient;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/webview/VASAdsWebChromeClient;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    const/4 p1, 0x2

    .line 22
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebChromeClient;->a:Lcom/verizon/ads/Logger;

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "Received JS Alert: %s:"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/verizon/ads/Logger;->v(Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    return p2
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    const/4 p1, 0x2

    .line 62
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebChromeClient;->a:Lcom/verizon/ads/Logger;

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "Received JS BeforeUnload: %s:"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/verizon/ads/Logger;->v(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    return p2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    const/4 p1, 0x2

    .line 35
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebChromeClient;->a:Lcom/verizon/ads/Logger;

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "Received JS Confirm: %s:"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/verizon/ads/Logger;->v(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    return p2
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    const/4 p1, 0x2

    .line 49
    invoke-static {p1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lcom/verizon/ads/webview/VASAdsWebChromeClient;->a:Lcom/verizon/ads/Logger;

    new-array p4, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    const-string p3, "Received JS Prompt: %s:"

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/verizon/ads/Logger;->v(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    return p2
.end method
