.class public Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->storePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

.field public final synthetic val$mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v1, "storePicture"

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPictureSaved(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;->val$mmWebView:Lcom/millennialmedia/internal/MMWebView;

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

    return-void
.end method
