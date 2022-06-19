.class final Lio/bidmachine/nativead/view/MediaView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    const-string p1, "MediaView video is loaded"

    .line 233
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {p1, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 235
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {p1, p3}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 236
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$600(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public final onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V
    .locals 1

    const-string p1, "MediaView video is not loaded"

    .line 241
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->IMAGE:Lio/bidmachine/nativead/view/NativeState;

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$700(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 243
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$4;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$802(Lio/bidmachine/nativead/view/MediaView;Z)Z

    return-void
.end method
