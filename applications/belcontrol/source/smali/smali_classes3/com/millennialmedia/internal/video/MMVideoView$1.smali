.class public Lcom/millennialmedia/internal/video/MMVideoView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$402(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$502(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$1$1;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$800(Lcom/millennialmedia/internal/video/MMVideoView;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$402(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_3
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    if-eq p1, v0, :cond_4

    new-instance p1, Lcom/millennialmedia/internal/video/MMVideoView$1$2;

    invoke-direct {p1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1$2;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    :cond_5
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
