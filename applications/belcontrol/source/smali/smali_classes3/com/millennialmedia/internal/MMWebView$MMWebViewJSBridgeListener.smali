.class public Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMWebViewJSBridgeListener"
.end annotation


# instance fields
.field public mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getWebView()Lcom/millennialmedia/internal/MMWebView;
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->close()V

    :cond_0
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z

    move-result p1

    return p1
.end method

.method public onAdLeftApplication()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onInjectedScriptsLoaded()V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/MMWebView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Injected scripts have been loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->access$202(Lcom/millennialmedia/internal/MMWebView;Z)Z

    iget-object v1, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    sget v2, Lcom/millennialmedia/MMLog;->logLevel:I

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/JSBridge;->setLogLevel(I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/MMWebView;->access$300(Lcom/millennialmedia/internal/MMWebView;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/MMWebView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMWebView reference no longer points to a valid object"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onJSBridgeReady()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/MMWebView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSBridge is ready"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onReady()V

    :cond_1
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result p1

    return p1
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewJSBridgeListener;->getWebView()Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->showCloseIndicator(Z)V

    :cond_0
    return-void
.end method
