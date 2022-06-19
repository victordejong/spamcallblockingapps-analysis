.class public final Lcom/millennialmedia/internal/utils/MediaUtils$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onPhoto(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    const-string v0, "Unable to get image from camera"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$3;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void
.end method
