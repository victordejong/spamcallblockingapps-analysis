.class public Lcom/millennialmedia/internal/video/VASTVideoView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->loadInlineAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error occurred downloading the video file."

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1700(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$4;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1700(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    :cond_0
    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$4$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$4$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$4;Ljava/io/File;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
