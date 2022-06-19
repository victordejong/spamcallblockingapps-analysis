.class public final Lcom/millennialmedia/internal/utils/MediaUtils$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onPhoto(Landroid/net/Uri;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    const-string v0, "Unable to get image from gallery"

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    return-void
.end method
