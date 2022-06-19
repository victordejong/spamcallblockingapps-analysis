.class public Lcom/millennialmedia/internal/JSBridge$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;

.field public final synthetic val$mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$5;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$5;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$5;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$5;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$5;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v2, v1, Lcom/millennialmedia/internal/JSBridge;->ready:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    if-nez v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "currentPosition"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$5;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v2, "MmJsBridge.mraid.setPositions"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error creating json object in setCurrentPosition"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$5;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput-boolean v3, v0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    :cond_2
    :goto_0
    return-void
.end method
