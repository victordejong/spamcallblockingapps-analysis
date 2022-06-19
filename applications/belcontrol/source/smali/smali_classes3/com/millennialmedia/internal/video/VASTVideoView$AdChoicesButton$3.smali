.class public Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->loadStaticResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;->icon:Lcom/millennialmedia/internal/video/VASTParser$Icon;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Icon;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/millennialmedia/R$dimen;->mmadsdk_adchoices_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid icon height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v1

    div-int/2addr v3, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v1, -0x80000000

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$AdChoicesButton$3;Lcom/millennialmedia/internal/utils/HttpUtils$Response;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
