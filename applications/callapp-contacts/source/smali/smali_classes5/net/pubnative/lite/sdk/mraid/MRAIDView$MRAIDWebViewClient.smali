.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;


# direct methods
.method private constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 1457
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Lnet/pubnative/lite/sdk/mraid/MRAIDView$1;)V
    .locals 0

    .line 1457
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    return-void
.end method


# virtual methods
.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onPageCommitVisibile"

    .line 1534
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1461
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1462
    invoke-static {}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "onPageFinished: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget p2, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v0, 0x0

    if-nez p2, :cond_5

    .line 1464
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isPageFinished:Z

    .line 1465
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraid.setPlacementType(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "interstitial"

    goto :goto_0

    :cond_0
    const-string v3, "inline"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V

    .line 1466
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1467
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-boolean p2, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isLaidOut:Z

    if-eqz p2, :cond_2

    .line 1468
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1469
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1470
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1471
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1472
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1473
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1474
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->showAsInterstitial(Landroid/app/Activity;)V

    goto :goto_1

    .line 1476
    :cond_1
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iput v1, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    .line 1477
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1478
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireReadyEvent()V

    .line 1479
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-boolean p2, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->isViewable:Z

    if-eqz p2, :cond_2

    .line 1480
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1485
    :cond_2
    :goto_1
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1486
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2900(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/view/View;)V

    .line 1489
    :cond_3
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object p2, p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3000(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1490
    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->initAdSession(Landroid/webkit/WebView;Z)V

    .line 1491
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1492
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3200(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/view/ViewGroup;

    move-result-object p2

    sget-object v2, Lcom/iab/omid/library/pubnativenet/adsession/f;->OTHER:Lcom/iab/omid/library/pubnativenet/adsession/f;

    const-string v3, "Content info description for the ad"

    invoke-virtual {p1, p2, v2, v3}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addViewabilityFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    .line 1493
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;

    .line 1494
    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    move-result-object v2

    .line 1495
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v3

    .line 1496
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getPurpose()Lcom/iab/omid/library/pubnativenet/adsession/f;

    move-result-object v4

    .line 1497
    invoke-virtual {p2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityFriendlyObstruction;->getReason()Ljava/lang/String;

    move-result-object p2

    .line 1494
    invoke-virtual {v2, v3, v4, p2}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/pubnativenet/adsession/f;Ljava/lang/String;)V

    goto :goto_2

    .line 1500
    :cond_4
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3002(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z

    .line 1501
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->fireLoaded()V

    .line 1502
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;

    move-result-object p1

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/viewability/HyBidViewabilityWebAdSession;->fireImpression()V

    .line 1504
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->listener:Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-interface {p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewListener;->mraidViewLoaded(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1506
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V

    .line 1509
    :cond_5
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1510
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1502(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Z)Z

    .line 1511
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;

    invoke-direct {p2, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$1;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onPageStarted"

    .line 1530
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onReceivedClientCertRequest"

    .line 1562
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1589
    invoke-static {}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceivedError: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1538
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p2, "hz-m MRAIDView WebViewClient - onReceivedError: "

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 1539
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "hz-m MRAIDView WebViewClient - onReceivedError code: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 1540
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void

    .line 1542
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onReceivedHttpAuthRequest"

    .line 1567
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onReceivedHttpError"

    .line 1547
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onReceivedLoginRequest"

    .line 1583
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onReceivedSslError"

    .line 1551
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - onScaleChanged"

    .line 1578
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    .line 1556
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "hz-m MRAIDView WebViewClient - onTooManyRedirects"

    .line 1557
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1616
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hz-m shouldInterceptRequest - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    const-string p1, "mraid.js"

    .line 1617
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1618
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hz-m shouldInterceptRequest - intercepting mraid - "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 1619
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance p2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$2;

    invoke-direct {p2, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient$2;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1625
    new-instance p1, Landroid/webkit/WebResourceResponse;

    iget-object p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$4100(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Ljava/io/InputStream;

    move-result-object p2

    const-string v0, "application/javascript"

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "hz-m MRAIDView WebViewClient - shouldOverrideKeyEvent"

    .line 1573
    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1595
    invoke-static {}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$2000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mraid://"

    .line 1596
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1597
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V

    return v0

    .line 1601
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3700(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1602
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, p2, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1605
    :cond_1
    :try_start_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$3900(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1607
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return v0
.end method
