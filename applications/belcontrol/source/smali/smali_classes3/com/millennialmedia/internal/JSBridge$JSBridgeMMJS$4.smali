.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->savePictureToPhotoLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

.field public final synthetic val$callbackId:Ljava/lang/String;

.field public final synthetic val$mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->val$callbackId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPictureSaved(Ljava/io/File;)V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " stored in gallery"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/utils/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$4;->val$callbackId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
