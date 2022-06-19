.class Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/VideoPlayerView;Landroid/content/Context;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->a:Lcom/verizon/ads/VideoPlayerView;

    .line 426
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 431
    iget-object v0, p0, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-static {v0}, Lcom/verizon/ads/VideoPlayerView;->e(Lcom/verizon/ads/VideoPlayerView;)Lcom/verizon/ads/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/VideoPlayer;->getVideoHeight()I

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->a:Lcom/verizon/ads/VideoPlayerView;

    invoke-static {v1}, Lcom/verizon/ads/VideoPlayerView;->e(Lcom/verizon/ads/VideoPlayerView;)Lcom/verizon/ads/VideoPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/verizon/ads/VideoPlayer;->getVideoWidth()I

    move-result v1

    .line 435
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 436
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 438
    invoke-static {}, Lcom/verizon/ads/VideoPlayerView;->a()Lcom/verizon/ads/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "widthSize = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", heightSize = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 440
    invoke-static {v1, p1}, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v2

    .line 441
    invoke-static {v0, p2}, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v3

    if-lez v1, :cond_b

    if-lez v0, :cond_b

    .line 444
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 445
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 446
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 447
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    if-ne v3, v4, :cond_1

    mul-int v2, v1, p2

    mul-int v3, p1, v0

    if-ge v2, v3, :cond_0

    .line 456
    div-int/2addr v2, v0

    goto :goto_2

    :cond_0
    if-le v2, v3, :cond_4

    .line 458
    div-int/2addr v3, v1

    :goto_0
    move v2, p1

    goto/16 :goto_5

    :cond_1
    const/high16 v5, -0x80000000

    if-ne v2, v4, :cond_3

    mul-int v0, v0, p1

    .line 464
    div-int/2addr v0, v1

    if-ne v3, v5, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p1

    move v3, v0

    goto :goto_5

    :cond_3
    if-ne v3, v4, :cond_6

    mul-int v1, v1, p2

    .line 474
    div-int v0, v1, v0

    if-ne v2, v5, :cond_5

    if-le v0, p1, :cond_5

    :cond_4
    :goto_1
    move v2, p1

    :goto_2
    move v3, p2

    goto :goto_5

    :cond_5
    move v3, p2

    move v2, v0

    goto :goto_5

    :cond_6
    if-ne v3, v5, :cond_7

    if-ge v0, p2, :cond_7

    mul-int v4, p2, v1

    .line 488
    div-int/2addr v4, v0

    if-gt v4, p1, :cond_7

    move v6, p2

    goto :goto_3

    :cond_7
    move v6, v0

    move v4, v1

    :goto_3
    if-ne v2, v5, :cond_8

    if-ge v4, p1, :cond_8

    mul-int v7, p1, v0

    .line 496
    div-int/2addr v7, v1

    if-gt v7, p2, :cond_8

    move v4, p1

    move v6, v7

    :cond_8
    if-ne v3, v5, :cond_9

    if-le v6, p2, :cond_9

    mul-int v3, p2, v1

    .line 506
    div-int/2addr v3, v0

    goto :goto_4

    :cond_9
    move v3, v4

    move p2, v6

    :goto_4
    if-ne v2, v5, :cond_a

    if-le v3, p1, :cond_a

    mul-int v0, v0, p1

    .line 512
    div-int v3, v0, v1

    goto :goto_0

    :cond_a
    move v2, v3

    goto :goto_2

    .line 517
    :cond_b
    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/verizon/ads/VideoPlayerView$VideoSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method
