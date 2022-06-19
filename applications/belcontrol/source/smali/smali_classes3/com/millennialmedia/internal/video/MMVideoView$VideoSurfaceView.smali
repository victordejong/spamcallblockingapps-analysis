.class public Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    mul-int v1, v1, p1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p1

    mul-int p1, p1, p2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    div-int v0, p1, v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    mul-int v0, v0, p2

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    mul-int v1, v1, p1

    if-le v0, v1, :cond_4

    :goto_0
    iget-object p2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result p2

    mul-int p2, p2, p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    div-int v1, p2, v0

    goto :goto_1

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    mul-int v0, v0, p1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_1
    move v0, p1

    goto :goto_5

    :cond_3
    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_2
    move v0, p1

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    move v1, p2

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v4

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    mul-int v1, v1, p2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    move p2, v4

    :goto_4
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    goto :goto_0

    :cond_8
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method
