.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSBridgeCommon"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileLoaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {p1}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onInjectedScriptsLoaded()V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    :cond_2
    return-void
.end method

.method public getActionsQueue()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3, v2}, Lcom/millennialmedia/internal/JSBridge;->access$202(Lcom/millennialmedia/internal/JSBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useActionsQueue()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-boolean v0, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
