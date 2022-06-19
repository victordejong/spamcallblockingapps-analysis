.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->resize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

.field public final synthetic val$resizeParams:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->val$resizeParams:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "resize"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    const-string v2, "hidden"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    const-string v2, "loading"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v0}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->val$resizeParams:Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-interface {v0, v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v2, "Unable to resize"

    invoke-virtual {v0, v2, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Cannot resize in current state<%s>"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
