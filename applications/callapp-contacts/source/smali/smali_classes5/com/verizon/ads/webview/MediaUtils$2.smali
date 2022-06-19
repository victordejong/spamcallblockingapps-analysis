.class final Lcom/verizon/ads/webview/MediaUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/MediaUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;


# direct methods
.method constructor <init>(ZLjava/io/File;Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/verizon/ads/webview/MediaUtils$2;->a:Z

    iput-object p2, p0, Lcom/verizon/ads/webview/MediaUtils$2;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/verizon/ads/webview/MediaUtils$2;->c:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_1

    .line 167
    iget-boolean p2, p0, Lcom/verizon/ads/webview/MediaUtils$2;->a:Z

    if-eqz p2, :cond_0

    .line 168
    iget-object p2, p0, Lcom/verizon/ads/webview/MediaUtils$2;->b:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/verizon/ads/webview/MediaUtils$2;->c:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to scan file "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/verizon/ads/webview/MediaUtils$2;->c:Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;

    iget-object p2, p0, Lcom/verizon/ads/webview/MediaUtils$2;->b:Ljava/io/File;

    invoke-interface {p1, p2}, Lcom/verizon/ads/webview/MediaUtils$SavePictureListener;->onPictureSaved(Ljava/io/File;)V

    return-void
.end method
