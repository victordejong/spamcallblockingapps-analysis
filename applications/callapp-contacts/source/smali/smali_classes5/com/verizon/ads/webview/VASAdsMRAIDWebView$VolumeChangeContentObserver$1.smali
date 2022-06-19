.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;II)V
    .locals 0

    .line 1909
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    iput p2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->a:I

    iput p3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1913
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->a:I

    iget v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->b:I

    iget-object v3, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver$1;->c:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;

    invoke-static {v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;->b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeContentObserver;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VolumeChangeListener;->onVolumeChange(III)V

    :cond_0
    return-void
.end method
