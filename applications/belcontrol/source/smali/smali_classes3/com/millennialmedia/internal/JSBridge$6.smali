.class public Lcom/millennialmedia/internal/JSBridge$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->setReadyState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, v1, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v4, :cond_1

    const-string v4, "interstitial"

    goto :goto_0

    :cond_1
    const-string v4, "inline"

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "MmJsBridge.mraid.setPlacementType"

    invoke-virtual {v1, v4, v3}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->getSupportedFeatures()Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "MmJsBridge.mraid.setSupports"

    invoke-virtual {v1, v4, v3}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/JSBridge;->sendPositions(Lcom/millennialmedia/internal/MMWebView;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    new-array v1, v2, [Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "MmJsBridge.mraid.setViewable"

    invoke-virtual {v0, v2, v1}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v1, v0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    if-eqz v1, :cond_2

    const-string v1, "expanded"

    goto :goto_1

    :cond_2
    const-string v1, "default"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$6;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onJSBridgeReady()V

    :cond_3
    return-void
.end method
