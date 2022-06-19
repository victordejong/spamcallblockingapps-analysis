.class public Lcom/millennialmedia/internal/video/MMVideoView$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView$1;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/MMVideoView$1;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$2;->this$1:Lcom/millennialmedia/internal/video/MMVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$2;->this$1:Lcom/millennialmedia/internal/video/MMVideoView$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1$2;->this$1:Lcom/millennialmedia/internal/video/MMVideoView$1;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;->onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V

    return-void
.end method
