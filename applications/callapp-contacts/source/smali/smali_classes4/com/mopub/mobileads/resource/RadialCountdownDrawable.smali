.class public Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
.super Lcom/mopub/mobileads/resource/BaseWidgetDrawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Rect;

.field private final f:I

.field private g:I

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/resource/BaseWidgetDrawable;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 31
    invoke-static {v0, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->f:I

    const/high16 v1, 0x41900000    # 18.0f

    .line 32
    invoke-static {v1, p1}, Lcom/mopub/common/util/Dips;->dipsToFloatPixels(FLandroid/content/Context;)F

    move-result p1

    .line 35
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    sget-object v2, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->BACKGROUND_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    const/4 v3, -0x1

    .line 42
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x80

    .line 43
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    sget-object v4, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->PROGRESS_CIRCLE_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, v0

    .line 45
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0xff

    .line 51
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    sget-object v4, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->PROGRESS_ARC_STYLE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v0

    .line 53
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->d:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    sget-object v1, Lcom/mopub/mobileads/resource/DrawableConstants$RadialCountdown;->TEXT_ALIGN:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 68
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 72
    iget v3, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->f:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v3, v3

    .line 74
    iget-object v4, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v2, v2

    .line 75
    iget-object v3, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 80
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 81
    iget v6, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->i:F

    iget-object v8, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->c:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getInitialCountdownMilliseconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:I

    return v0
.end method

.method public setInitialCountdown(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:I

    return-void
.end method

.method public updateCountdownProgress(I)V
    .locals 2

    .line 89
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:I

    sub-int/2addr v0, p1

    int-to-long v0, v0

    .line 90
    invoke-static {v0, v1}, Lcom/mopub/common/util/Numbers;->convertMillisecondsToSecondsRoundedUp(J)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->h:I

    int-to-float p1, p1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 91
    iget v0, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->i:F

    .line 92
    invoke-virtual {p0}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->invalidateSelf()V

    return-void
.end method
