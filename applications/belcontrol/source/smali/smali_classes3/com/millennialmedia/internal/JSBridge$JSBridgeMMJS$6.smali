.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->httpGet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

.field public final synthetic val$callbackId:Ljava/lang/String;

.field public final synthetic val$timeout:I

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$timeout:I

    iput-object p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$url:Ljava/lang/String;

    iget v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$timeout:I

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$callbackId:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$6;->val$callbackId:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http request failed with response code: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v1, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
