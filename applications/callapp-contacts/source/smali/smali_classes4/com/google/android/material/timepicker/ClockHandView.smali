.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$a;,
        Lcom/google/android/material/timepicker/ClockHandView$b;
    }
.end annotation


# instance fields
.field a:Z

.field final b:I

.field final c:Landroid/graphics/RectF;

.field d:Lcom/google/android/material/timepicker/ClockHandView$a;

.field e:I

.field private f:Landroid/animation/ValueAnimator;

.field private g:F

.field private h:F

.field private i:Z

.field private j:I

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/timepicker/ClockHandView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:F

.field private final m:Landroid/graphics/Paint;

.field private final n:I

.field private o:F

.field private p:Z

.field private q:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 91
    sget v0, Lcom/google/android/material/a$b;->materialClockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    .line 74
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Landroid/graphics/RectF;

    .line 96
    sget-object v1, Lcom/google/android/material/a$l;->ClockHandView:[I

    sget v2, Lcom/google/android/material/a$k;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 97
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 103
    sget p3, Lcom/google/android/material/a$l;->ClockHandView_materialCircleRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    .line 104
    sget p3, Lcom/google/android/material/a$l;->ClockHandView_selectorSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 106
    sget v2, Lcom/google/android/material/a$d;->material_clock_hand_stroke_width:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:I

    .line 107
    sget v2, Lcom/google/android/material/a$d;->material_clock_hand_center_dot_radius:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:F

    .line 108
    sget p3, Lcom/google/android/material/a$l;->ClockHandView_clockHandColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x0

    .line 1126
    invoke-virtual {p0, p3, v1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FZ)V

    .line 113
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    const/4 p1, 0x2

    .line 114
    invoke-static {p0, p1}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 115
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(FF)I
    .locals 4

    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 335
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-double v2, p1

    int-to-float p1, v1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 338
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x5a

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    return p1
.end method

.method private a(F)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2218
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:F

    sub-float v1, v0, p1

    .line 166
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    add-float/2addr p1, v1

    :cond_0
    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    add-float/2addr v0, v1

    .line 176
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/android/material/timepicker/ClockHandView;F)V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    return-void
.end method

.method private b(FZ)V
    .locals 7

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 182
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 189
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    .line 190
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    .line 191
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    int-to-float v4, v3

    sub-float v4, v1, v4

    int-to-float v5, v3

    sub-float v5, v0, v5

    int-to-float v6, v3

    add-float/2addr v1, v6

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView$b;

    .line 198
    invoke-interface {v1, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$b;->a(FZ)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    return-void
.end method


# virtual methods
.method public final a(FZ)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    return-void

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(F)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 140
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, p2, v0

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$1;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/google/android/material/timepicker/ClockHandView$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/ClockHandView$2;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final a(Lcom/google/android/material/timepicker/ClockHandView$b;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2229
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2230
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 2233
    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v8

    int-to-float v9, v0

    .line 2234
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v3, v9

    .line 2237
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2238
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2242
    iget-wide v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 2243
    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 2244
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:I

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    float-to-double v6, v6

    mul-double v4, v4, v6

    double-to-int v4, v4

    add-int/2addr v1, v4

    int-to-float v5, v1

    mul-double v6, v6, v2

    double-to-int v1, v6

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 2249
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2250
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2251
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->l:F

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 120
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1218
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:F

    const/4 p2, 0x0

    .line 2126
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->a(FZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    goto :goto_2

    .line 293
    :cond_0
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:F

    sub-float v4, v1, v4

    float-to-int v4, v4

    .line 294
    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:F

    sub-float v5, p1, v5

    float-to-int v5, v5

    mul-int v4, v4, v4

    mul-int v5, v5, v5

    add-int/2addr v4, v5

    .line 296
    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->j:I

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:Z

    .line 299
    iget-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_3
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->g:F

    .line 285
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->h:F

    .line 286
    iput-boolean v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:Z

    .line 288
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 309
    :goto_2
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    .line 2319
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    move-result v7

    .line 3218
    iget v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->o:F

    int-to-float v7, v7

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v5, :cond_5

    if-eqz v8, :cond_5

    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    if-nez v8, :cond_6

    if-eqz v4, :cond_8

    :cond_6
    if-eqz v0, :cond_7

    .line 2326
    iget-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:Z

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p0, v7, v2}, Lcom/google/android/material/timepicker/ClockHandView;->a(FZ)V

    goto :goto_4

    :cond_8
    :goto_5
    or-int/2addr v2, v6

    .line 309
    iput-boolean v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Lcom/google/android/material/timepicker/ClockHandView$a;

    if-eqz v0, :cond_9

    .line 311
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->i:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView$a;->b(FZ)V

    :cond_9
    return v3
.end method
