.class public Lcom/millennialmedia/internal/video/VASTVideoView$9$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

.field public final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$9;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$9$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "mmVastVideoView_companionImageView"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2400(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v4

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    invoke-static {v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2300(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2400(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
