.class Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/VASAdsWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASAdsWebViewGestureListener"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/webview/VASAdsWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsWebView;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewGestureListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/webview/VASAdsWebView;

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p1, Lcom/verizon/ads/webview/VASAdsWebView;->b:Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;

    invoke-interface {v0, p1}, Lcom/verizon/ads/webview/VASAdsWebView$VASAdsWebViewListener;->onClicked(Lcom/verizon/ads/webview/VASAdsWebView;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
