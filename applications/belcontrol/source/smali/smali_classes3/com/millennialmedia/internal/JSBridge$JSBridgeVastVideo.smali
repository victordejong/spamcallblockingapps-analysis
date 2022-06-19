.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSBridgeVastVideo"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->close()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Close cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->pause()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pause cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->play()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public restart(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->restart()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Restart cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seek(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    instance-of v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "seekTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->seek(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Seek cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTimeInterval(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    instance-of v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v2, "timeInterval"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setTimeInterval(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SetTimeInterval can\'t be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public skip(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->skip()V

    :cond_0
    return-void
.end method

.method public triggerTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    instance-of v0, p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->triggerTimeUpdate()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TriggerTimeUpdate can\'t be called on a WebView that is not part of a VAST Video creative."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
