.class public Lcom/mopub/mraid/MraidBridge$d;
.super Lcom/mopub/mraid/MraidWebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mopub/mraid/MraidBridge;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge$d;->b:Lcom/mopub/mraid/MraidBridge;

    invoke-direct {p0}, Lcom/mopub/mraid/MraidWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    instance-of p2, p1, Lcom/mopub/mobileads/BaseWebViewViewability;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/mopub/mobileads/BaseWebViewViewability;

    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseWebViewViewability;->setPageLoaded()V

    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$d;->b:Lcom/mopub/mraid/MraidBridge;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBridge;->c(Lcom/mopub/mraid/MraidBridge;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$d;->b:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->j(Landroid/webkit/RenderProcessGoneDetail;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge$d;->b:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
