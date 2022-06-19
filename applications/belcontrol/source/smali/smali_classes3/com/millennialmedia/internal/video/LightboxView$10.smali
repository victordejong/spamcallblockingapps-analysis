.class public Lcom/millennialmedia/internal/video/LightboxView$10;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public heightDelta:I

.field public originalHeight:I

.field public originalWidth:I

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public final synthetic val$defaultPosition:Landroid/graphics/Point;

.field public final synthetic val$displaySize:Landroid/graphics/Point;

.field public widthDelta:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$displaySize:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->originalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->heightDelta:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    float-to-int p1, v0

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v1

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v1, v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->widthDelta:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    const/4 v2, 0x0

    if-nez p2, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    :goto_2
    iget-object v4, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v5}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    sub-int/2addr v4, v5

    :goto_3
    if-nez p2, :cond_5

    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v1

    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/LightboxView;->access$1800(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v6

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/LightboxView;->access$1800(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v0

    float-to-int v7, v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_4
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p1

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/LightboxView;->access$1900(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v7

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1900(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v0

    float-to-int v0, v8

    sub-int/2addr v7, v0

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_5
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v6

    if-le v1, v6, :cond_7

    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v6

    if-le p1, v6, :cond_7

    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    if-ge v5, v7, :cond_7

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-lt v0, v6, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result p1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$2000(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v3

    const/4 v3, 0x0

    :cond_8
    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->val$defaultPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/LightboxView;->access$2000(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2, p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$2100(Lcom/millennialmedia/internal/video/LightboxView;I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/LightboxView;->access$2000(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2, p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$2100(Lcom/millennialmedia/internal/video/LightboxView;I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    int-to-float p2, v5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    :goto_6
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->originalHeight:I

    iget-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p3}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->heightDelta:I

    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->originalWidth:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p2}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$10;->widthDelta:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
