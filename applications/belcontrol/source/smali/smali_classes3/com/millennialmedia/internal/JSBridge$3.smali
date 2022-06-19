.class public Lcom/millennialmedia/internal/JSBridge$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;

.field public final synthetic val$state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$3;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->val$state:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "MmJsBridge.mraid.setState"

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
