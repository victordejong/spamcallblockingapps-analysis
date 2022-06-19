.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

.field public final synthetic val$videoView:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->val$videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "stateChange"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "loading"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "updateVideoURL"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$2000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "durationChange"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->val$videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1700(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/MMWebView;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot attach the inline video; it will not fit within the anchor view."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
