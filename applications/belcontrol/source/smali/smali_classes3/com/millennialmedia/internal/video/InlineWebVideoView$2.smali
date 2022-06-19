.class public Lcom/millennialmedia/internal/video/InlineWebVideoView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;-><init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {p2}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "click"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 p1, 0x3

    aput-object p2, v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method
