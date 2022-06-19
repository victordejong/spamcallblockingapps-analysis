.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->getPictureFromPhotoLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

.field public final synthetic val$callbackId:Ljava/lang/String;

.field public final synthetic val$maintainAspectRatio:Z

.field public final synthetic val$maxHeight:I

.field public final synthetic val$maxWidth:I

.field public final synthetic val$mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;Lcom/millennialmedia/internal/MMWebView;IIZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxWidth:I

    iput p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxHeight:I

    iput-boolean p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maintainAspectRatio:Z

    iput-object p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoto(Landroid/net/Uri;)V
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils;->getMimeTypeFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxWidth:I

    iget v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxHeight:I

    iget-boolean v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maintainAspectRatio:Z

    const/4 v7, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/millennialmedia/internal/utils/MediaUtils;->getScaledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;IIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils;->base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object p1, p1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
