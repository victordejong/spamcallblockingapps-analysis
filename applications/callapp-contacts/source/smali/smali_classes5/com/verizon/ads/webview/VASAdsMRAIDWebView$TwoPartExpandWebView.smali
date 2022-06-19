.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;
.super Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwoPartExpandWebView"
.end annotation


# instance fields
.field a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1376
    invoke-direct {p0, p1, v0, p3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;-><init>(Landroid/content/Context;ZLcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;)V

    .line 1378
    iput-object p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 1379
    new-instance p1, Landroid/webkit/WebViewClient;

    invoke-direct {p1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, p1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "expanded"

    return-object v0
.end method
