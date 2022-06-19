.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;-><init>(Landroid/content/Context;ZLcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1429
    instance-of p1, p1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    if-eqz p1, :cond_1

    .line 1430
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 1431
    iget-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {p2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->k(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)I

    move-result p2

    if-eq p2, p1, :cond_1

    const/4 p2, 0x3

    .line 1432
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1433
    invoke-static {}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->g()Lcom/verizon/ads/Logger;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    new-instance p5, Lcom/verizon/ads/EnvironmentInfo;

    iget-object p6, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {p6}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    .line 1434
    invoke-virtual {p5}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getConfigurationOrientation()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    const-string p4, "Detected change in orientation to %s"

    .line 1433
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1437
    :cond_0
    iget-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {p2, p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;I)I

    .line 1438
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a()V

    :cond_1
    return-void
.end method
