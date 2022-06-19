.class public abstract Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/animation/ValueAnimator;

.field protected final c:Ljava/lang/String;

.field protected final d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

.field protected e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field protected f:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:Landroid/graphics/RectF;

.field protected l:Landroid/graphics/RectF;

.field protected m:I

.field protected n:I

.field protected o:Landroid/graphics/Paint;

.field private p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

.field private q:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

.field private r:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;II)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    const/16 v0, 0xb4

    .line 68
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    const/16 v0, 0x168

    .line 72
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->n:I

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    .line 113
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInitialVisibility()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->setupView(II)V

    .line 115
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(F)F
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    neg-float p1, p1

    return p1
.end method

.method protected final a(FFFFF)F
    .locals 4

    sub-float/2addr p1, p3

    sub-float/2addr p2, p3

    sub-float/2addr p4, p3

    sub-float p3, p1, p2

    .line 612
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p3, v0, v2

    if-gez p3, :cond_0

    div-float/2addr p1, p4

    return p1

    .line 616
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq p3, v0, :cond_1

    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq p3, v0, :cond_1

    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne p3, v0, :cond_2

    :cond_1
    const/high16 p5, 0x3f800000    # 1.0f

    .line 624
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v0, p3

    cmpg-double p3, v0, v2

    if-gez p3, :cond_3

    div-float p2, p1, p4

    mul-float p5, p5, p1

    sub-float p3, p1, p5

    mul-float p2, p2, p3

    div-float/2addr p2, p1

    return p2

    :cond_3
    div-float p3, p2, p4

    sub-float p4, p2, p1

    mul-float p5, p5, p4

    add-float/2addr p1, p5

    mul-float p3, p3, p1

    div-float/2addr p3, p2

    return p3
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 8

    .line 469
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_9

    .line 473
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSeriesLabel()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 477
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSeriesLabel()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getPositionPercent()F

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    .line 1112
    iget-boolean v4, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->g:Z

    if-nez v4, :cond_1

    return-object v1

    .line 1116
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float p3, p3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr p3, v4

    const v4, 0x3c8efa35

    mul-float p3, p3, v4

    float-to-double v4, p3

    .line 1119
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p3, v6

    mul-float p3, p3, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    add-float/2addr p3, v6

    .line 1120
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    add-float/2addr v4, p2

    .line 1122
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr p2, v1

    .line 1123
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    sub-float v1, p3, p2

    const/4 v6, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_2

    move p3, p2

    .line 1127
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v7, p3, p2

    cmpg-float v1, v1, v7

    if-gez v1, :cond_3

    .line 1128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p2

    :cond_3
    sub-float v1, v4, v5

    cmpl-float v1, v6, v1

    if-lez v1, :cond_4

    move v4, v5

    .line 1133
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v4, v5

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    .line 1134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v5

    .line 1137
    :cond_5
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->e:Landroid/graphics/RectF;

    sub-float v6, p3, p2

    sub-float v7, v4, v5

    add-float/2addr p2, p3

    add-float/2addr v5, v4

    invoke-virtual {v1, v6, v7, p2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1143
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->e:Landroid/graphics/RectF;

    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->b:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1147
    iget p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->f:F

    sub-float/2addr v4, p2

    .line 2094
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    const-string v1, "%%"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_6

    .line 2096
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 2097
    :cond_6
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2098
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 2101
    :cond_7
    iget-object p2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->a:Ljava/lang/String;

    .line 1148
    :goto_0
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1150
    iget-object p1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesLabel;->e:Landroid/graphics/RectF;

    return-object p1

    :cond_8
    return-object v1

    .line 474
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drawing bounds can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract a()V
.end method

.method public final a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 154
    iput-boolean v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->r:Z

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v3

    iput-object v3, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v3, 0x1

    .line 156
    iput-boolean v3, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    .line 159
    iput-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->isColorSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    new-instance v5, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    iget-object v6, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getColor()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;-><init>(II)V

    iput-object v5, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    .line 164
    iget-object v5, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->setColor(I)V

    .line 166
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEndPosition()F

    move-result v5

    .line 171
    iget v6, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    iput v6, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    .line 172
    iput v5, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectDuration()J

    move-result-wide v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_7

    .line 176
    iget v13, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    iget v14, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v17, v13, v15

    if-gez v17, :cond_1

    goto/16 :goto_2

    :cond_1
    if-gez v12, :cond_2

    .line 194
    iget-object v6, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinDuration()J

    move-result-wide v6

    long-to-float v6, v6

    iget v7, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    iget v12, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    sub-float/2addr v7, v12

    iget-object v12, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    .line 195
    invoke-virtual {v12}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMaxValue()F

    move-result v12

    div-float/2addr v7, v12

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 194
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-long v6, v6

    :cond_2
    cmp-long v12, v6, v10

    if-gez v12, :cond_4

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    .line 202
    iget v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    .line 203
    iput-object v9, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    .line 204
    iput v8, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 205
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    .line 206
    iget v3, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;->a(F)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/4 v8, 0x2

    new-array v8, v8, [F

    .line 212
    iget v9, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    aput v9, v8, v2

    aput v5, v8, v3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    .line 213
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 223
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 225
    :cond_5
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 226
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    :cond_6
    :goto_1
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$1;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;

    invoke-direct {v3, v0, v4, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$2;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;ZLcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 177
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    .line 178
    iget v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    iput v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    .line 179
    iput-object v9, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->q:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    .line 180
    iput v8, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 181
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    .line 182
    iget v3, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    invoke-interface {v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;->a(F)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V
    .locals 3

    .line 287
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    .line 291
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 296
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    .line 298
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;

    invoke-direct {v1, p0, p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$3;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$4;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 10

    .line 490
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_f

    .line 494
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2573
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->k:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2574
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->k:Landroid/graphics/RectF;

    .line 2575
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->l:Landroid/graphics/RectF;

    .line 2576
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2577
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInset()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 2579
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a()V

    .line 500
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne p2, v0, :cond_9

    .line 502
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->f:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

    if-eqz v4, :cond_8

    .line 503
    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->l:Landroid/graphics/RectF;

    iget v7, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    iget p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    int-to-float v8, p2

    iget p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->n:I

    int-to-float v9, p2

    .line 3157
    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$1;->a:[I

    iget-object v0, v4, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_6

    if-eq p2, v3, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    if-eq p2, v2, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v5, p1

    .line 3176
    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    goto :goto_0

    .line 3170
    :cond_5
    invoke-virtual {v4, p1, v6, v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 3171
    invoke-virtual {v4, p1, v6, v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto :goto_0

    :cond_6
    const p2, 0x3f19999a    # 0.6f

    cmpg-float v0, v7, p2

    if-gtz v0, :cond_7

    const p2, 0x3fd55555

    mul-float v7, v7, p2

    move-object v5, p1

    .line 3161
    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    goto :goto_0

    :cond_7
    sub-float/2addr v7, p2

    const p2, 0x3ecccccc    # 0.39999998f

    div-float/2addr v7, p2

    .line 3164
    invoke-virtual {v4, p1, v6, v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 3165
    invoke-virtual {v4, p1, v6, v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :cond_8
    :goto_0
    return v1

    .line 3547
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq p1, p2, :cond_a

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    sget-object p2, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq p1, p2, :cond_a

    .line 3549
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_c

    .line 3550
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    .line 3555
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result p1

    .line 3556
    iget p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    mul-float p1, p1, p2

    .line 3558
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    sub-float/2addr v0, v5

    mul-float v4, v4, v0

    float-to-int v0, v4

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 3560
    :cond_b
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3563
    :goto_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 510
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    if-eqz p1, :cond_d

    .line 511
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 4064
    iget v4, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a:I

    .line 4065
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iget v5, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->b:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {p1, v1, v4, v5, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a(IIIF)I

    move-result v1

    iget v4, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a:I

    .line 4066
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->b:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a(IIIF)I

    move-result v3

    iget v4, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a:I

    .line 4067
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->b:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-virtual {p1, v2, v4, v5, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a(IIIF)I

    move-result v2

    const/16 v4, 0x8

    iget v5, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a:I

    .line 4068
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iget v6, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->b:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6, v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->a(IIIF)I

    move-result v0

    .line 4064
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->c:I

    .line 4070
    iget p1, p1, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;->c:I

    .line 511
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 512
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result p2

    if-eq p1, p2, :cond_e

    .line 513
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    :goto_3
    const/4 p1, 0x0

    return p1

    .line 495
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Drawing bounds can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final b(F)F
    .locals 2

    .line 537
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getMinSweepAngle()F

    move-result v1

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    return v0
.end method

.method public final b()V
    .locals 4

    .line 436
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 437
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInitialVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    .line 439
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMinValue()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->g:F

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInitialValue()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->h:F

    .line 443
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getInitialValue()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 444
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 446
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    .line 447
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_DONUT:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 450
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getRoundCap()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getShadowSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getShadowSize()F

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getShadowColor()I

    move-result v3

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->k:Landroid/graphics/RectF;

    .line 461
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    .line 462
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;->a(F)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    .line 336
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    .line 339
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->isColorSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getColor()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;-><init>(II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->p:Lcom/callapp/contacts/activity/analytics/graph/charts/ColorAnimate;

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 349
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    .line 351
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 352
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$5;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 369
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$6;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$6;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 376
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c:Ljava/lang/String;

    const-string v0, "Must set new color to start CHANGE_COLOR event"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final c(F)F
    .locals 2

    .line 596
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getMinSweepAngle()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v0

    .line 4211
    iget-boolean v0, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a:Z

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getMinSweepAngle()F

    move-result p1

    :cond_0
    return p1
.end method

.method public final c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->c()V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    .line 398
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->e:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 399
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;Landroid/graphics/Paint;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->f:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;

    .line 400
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectRotations()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;->setRotationCount(I)V

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->j:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 404
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    .line 405
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$7;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries$8;-><init>(Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 388
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to execute null effect type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected getMinSweepAngle()F
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    .line 5211
    iget-boolean v0, v0, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;->STYLE_PIE:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    if-ne v0, v2, :cond_1

    return v1

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const v2, 0x3dcccccd    # 0.1f

    if-ne v0, v1, :cond_2

    :cond_2
    return v2
.end method

.method public getPositionPercent()F
    .locals 3

    .line 665
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->i:F

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMaxValue()F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getMinValue()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->a:Z

    return v0
.end method

.method public setupView(II)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0x168

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 133
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    .line 134
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->n:I

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->d:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getSpinClockwise()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    iget p2, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->n:I

    add-int/2addr p1, p2

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->m:I

    :cond_0
    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->k:Landroid/graphics/RectF;

    return-void

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Rotate angle of view must be in the range 0..360"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Total angle of view must be in the range 0..360"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
