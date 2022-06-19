.class public Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
.super Lcom/millennialmedia/internal/MMWebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VASTVideoWebView"
.end annotation


# instance fields
.field public volatile lastUpdateTime:I

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field public updateTimeInterval:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 2

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    new-instance p1, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, p3, v1, v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;-><init>(ZZZZ)V

    invoke-direct {p0, p2, p1, p4}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/MMWebView$MMWebViewOptions;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    iput v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$700(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 1

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seek(I)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setTimeInterval(I)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    return-void
.end method

.method public skip()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$802(Lcom/millennialmedia/internal/video/VASTVideoView;Z)Z

    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public triggerTimeUpdate()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MmJsBridge.vast.setCurrentTime"

    invoke-virtual {p0, v1, v0}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateTime(I)V
    .locals 2

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    iget v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "MmJsBridge.vast.setCurrentTime"

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/internal/MMWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
