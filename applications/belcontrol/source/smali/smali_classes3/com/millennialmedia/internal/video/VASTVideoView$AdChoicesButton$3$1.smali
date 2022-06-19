.class public Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

.field public final synthetic val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;Lcom/millennialmedia/internal/utils/HttpUtils$Response;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->val$layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->access$500(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V

    return-void
.end method
