.class final Lio/bidmachine/nativead/view/MediaView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


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

    .line 209
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$3;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V
    .locals 0

    const-string p1, "MediaView video is loaded"

    .line 212
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$3;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {p1, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 214
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$3;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$600(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method

.method public final onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V
    .locals 1

    const-string p1, "MediaView video is not loaded"

    .line 219
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$3;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->IMAGE:Lio/bidmachine/nativead/view/NativeState;

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$700(Lio/bidmachine/nativead/view/MediaView;Lio/bidmachine/nativead/view/NativeState;)V

    .line 221
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$3;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$802(Lio/bidmachine/nativead/view/MediaView;Z)Z

    return-void
.end method
