.class public Lcom/mopub/mobileads/resource/ProgressBarDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x80

    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->BACKGROUND_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    .line 39
    sget v2, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->PROGRESS_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xff

    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$ProgressBar;->PROGRESS_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 44
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->h:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 50
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 53
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    .line 55
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v5, v1, v0

    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    move-object v2, p1

    .line 54
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    if-ge v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    mul-float v3, v0, v1

    .line 65
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->h:I

    int-to-float v0, v0

    add-float v5, v3, v0

    .line 67
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->b:Landroid/graphics/Paint;

    move-object v2, p1

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public forceCompletion()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    return-void
.end method

.method public getCurrentProgress()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    return v0
.end method

.method public getSkipRatio()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    return-void
.end method

.method public setDurationAndSkipOffset(II)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->c:I

    .line 78
    iput p2, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->d:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 79
    iput p2, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->g:F

    return-void
.end method

.method public setProgress(I)V
    .locals 6

    .line 92
    iget v0, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    if-lt p1, v0, :cond_0

    .line 93
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->e:I

    .line 94
    iput p1, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 96
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->f:I

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Progress not monotonically increasing: last = %d, current = %d"

    .line 96
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->forceCompletion()V

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/ProgressBarDrawable;->invalidateSelf()V

    return-void
.end method
