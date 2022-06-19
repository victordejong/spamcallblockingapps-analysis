.class final Lcom/verizon/ads/webview/MediaUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/verizon/ads/webview/MediaUtils$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/verizon/ads/webview/MediaUtils$1;->b:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/verizon/ads/webview/MediaUtils$1;->b:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    const-string v0, "Unable to download file"

    invoke-interface {p1, v0}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public final onDownloadSucceeded(Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x3

    .line 98
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/verizon/ads/webview/MediaUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Picture downloaded to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/MediaUtils$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/verizon/ads/webview/MediaUtils$1;->b:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    invoke-static {v0, p1, v1}, Lcom/verizon/ads/webview/MediaUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V

    return-void
.end method
