.class public final Lcom/millennialmedia/internal/utils/MediaUtils$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$deleteOnFailure:Z

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# direct methods
.method public constructor <init>(ZLjava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$deleteOnFailure:Z

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$deleteOnFailure:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to scan file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    iget-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$2;->val$file:Ljava/io/File;

    invoke-interface {p1, p2}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onPictureSaved(Ljava/io/File;)V

    :goto_0
    return-void
.end method
