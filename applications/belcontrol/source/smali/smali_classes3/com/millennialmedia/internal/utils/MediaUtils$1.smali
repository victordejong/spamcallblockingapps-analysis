.class public final Lcom/millennialmedia/internal/utils/MediaUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const-string v0, "Unable to download file"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture downloaded to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->access$100(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    return-void
.end method
