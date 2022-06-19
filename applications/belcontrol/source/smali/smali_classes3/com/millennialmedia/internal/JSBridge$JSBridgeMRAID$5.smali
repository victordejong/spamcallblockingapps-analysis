.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->setOrientationProperties(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v1, v0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget v1, v1, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->setOrientation(I)V

    :cond_1
    return-void
.end method
