.class public Lcom/allinone/callerid/customview/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;,
        Lcom/allinone/callerid/customview/ProgressWheel$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Lcom/allinone/callerid/customview/ProgressWheel$b;

.field private C:Z

.field private final e:I

.field private final f:I

.field private final g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:D

.field private m:D

.field private n:F

.field private o:Z

.field private p:J

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/RectF;

.field private v:F

.field private w:J

.field private x:Z

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/allinone/callerid/customview/ProgressWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/customview/ProgressWheel;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 27
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->e:I

    const/16 p1, 0x10e

    .line 28
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->f:I

    const-wide/16 v0, 0xc8

    .line 29
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->g:J

    const/16 p1, 0x1c

    .line 30
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    const/4 p1, 0x4

    .line 31
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 32
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 35
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->m:D

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->o:Z

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->p:J

    const/high16 v3, -0x56000000

    .line 39
    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    const v3, 0xffffff

    .line 40
    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    .line 41
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    .line 42
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    .line 43
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    .line 44
    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    .line 45
    iput-wide v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    .line 46
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 47
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    .line 48
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    .line 49
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->e:I

    const/16 v0, 0x10e

    .line 3
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->f:I

    const-wide/16 v0, 0xc8

    .line 4
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->g:J

    const/16 v0, 0x1c

    .line 5
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 7
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 10
    iput-wide v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->m:D

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->o:Z

    const-wide/16 v2, 0x0

    .line 13
    iput-wide v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->p:J

    const/high16 v4, -0x56000000

    .line 14
    iput v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    const v4, 0xffffff

    .line 15
    iput v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    .line 16
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    .line 17
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    .line 18
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    const/high16 v4, 0x43660000    # 230.0f

    .line 19
    iput v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    .line 20
    iput-wide v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    .line 21
    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 22
    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    .line 23
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    .line 24
    sget-object v0, Lcom/allinone/callerid/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/ProgressWheel;->a(Landroid/content/res/TypedArray;)V

    .line 25
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->d()V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 3
    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    .line 4
    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    int-to-float v1, v1

    .line 5
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    int-to-float v0, v0

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    .line 8
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    int-to-float v0, v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 9
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    int-to-float v0, v0

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    .line 10
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    const/16 v4, 0x9

    .line 11
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    mul-float v0, v0, v3

    .line 12
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    .line 13
    iget-wide v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->m:D

    double-to-int v0, v3

    .line 14
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->m:D

    .line 15
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    .line 16
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    const/4 v0, 0x5

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->x:Z

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->g()V

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->B:Lcom/allinone/callerid/customview/ProgressWheel$b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->B:Lcom/allinone/callerid/customview/ProgressWheel$b;

    invoke-interface {v1, v0}, Lcom/allinone/callerid/customview/ProgressWheel$b;->a(F)V

    :cond_0
    return-void
.end method

.method private c(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->B:Lcom/allinone/callerid/customview/ProgressWheel$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/allinone/callerid/customview/ProgressWheel$b;->a(F)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    :goto_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->C:Z

    return-void
.end method

.method private e(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    iget-boolean v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    if-nez v4, :cond_0

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int v3, p2, v1

    sub-int/2addr v3, v0

    .line 6
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    iget v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    .line 8
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    sub-int/2addr p2, v3

    .line 9
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    add-int v2, p1, v1

    int-to-float v2, v2

    add-int v4, p2, v1

    int-to-float v4, v4

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    add-int/2addr p2, v3

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v0, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int/2addr p1, v3

    sub-int/2addr p1, v5

    int-to-float p1, p1

    sub-int/2addr p2, v1

    sub-int/2addr p2, v5

    int-to-float p2, p2

    invoke-direct {v4, v2, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    iget v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    iget v2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private h(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->p:J

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    long-to-double p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    .line 3
    iget-wide p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->m:D

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sub-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->p:J

    .line 6
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->o:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->o:Z

    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->l:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p1

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/high16 p2, 0x437e0000    # 254.0f

    .line 9
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->o:Z

    if-eqz v0, :cond_1

    mul-float p1, p1, p2

    .line 10
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    .line 11
    iget p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    iget p2, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    sub-float/2addr p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 12
    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    goto :goto_0

    :cond_2
    add-long/2addr v0, p1

    .line 13
    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->p:J

    :goto_0
    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getRimColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/allinone/callerid/customview/ProgressWheel;->t:Landroid/graphics/Paint;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 3
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v0, :cond_3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    sub-long/2addr v6, v8

    long-to-float v0, v6

    .line 6
    iget v8, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    mul-float v0, v0, v8

    div-float/2addr v0, v3

    .line 7
    invoke-direct {p0, v6, v7}, Lcom/allinone/callerid/customview/ProgressWheel;->h(J)V

    .line 8
    iget v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    cmpl-float v0, v3, v5

    if-lez v0, :cond_1

    sub-float/2addr v3, v5

    .line 9
    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/ProgressWheel;->c(F)V

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    .line 12
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    .line 13
    iget v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->n:F

    add-float/2addr v3, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v3, 0x43070000    # 135.0f

    const/4 v7, 0x0

    const/high16 v8, 0x43070000    # 135.0f

    goto :goto_0

    :cond_2
    move v7, v0

    move v8, v3

    .line 15
    :goto_0
    iget-object v6, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 16
    :cond_3
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 17
    iget v6, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_4

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v6, v3

    .line 19
    iget v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    mul-float v6, v6, v3

    .line 20
    iget v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 22
    :goto_1
    iget v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    .line 23
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->b()V

    .line 24
    :cond_5
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 25
    iget-boolean v3, p0, Lcom/allinone/callerid/customview/ProgressWheel;->x:Z

    if-nez v3, :cond_6

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    float-to-double v6, v0

    const/high16 v0, 0x40800000    # 4.0f

    float-to-double v8, v0

    .line 26
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    double-to-float v0, v6

    mul-float v0, v0, v5

    .line 27
    iget v6, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    float-to-double v6, v3

    float-to-double v10, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v8, v6

    double-to-float v1, v8

    mul-float v1, v1, v5

    move v12, v1

    move v1, v0

    move v0, v12

    .line 28
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v9, 0x43b40000    # 360.0f

    goto :goto_2

    :cond_7
    move v9, v0

    .line 29
    :goto_2
    iget-object v7, p0, Lcom/allinone/callerid/customview/ProgressWheel;->u:Landroid/graphics/RectF;

    sub-float v8, v1, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/allinone/callerid/customview/ProgressWheel;->s:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_3
    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    .line 9
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 10
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->d:F

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 6
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->e:F

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    .line 7
    iget-boolean v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->f:Z

    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    .line 8
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->g:F

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    .line 9
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->h:I

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 10
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->i:I

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    .line 11
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->j:I

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    .line 12
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->k:I

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    .line 13
    iget v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->l:I

    iput v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    .line 14
    iget-boolean v0, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->m:Z

    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->x:Z

    .line 15
    iget-boolean p1, p1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->n:Z

    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->d:F

    .line 4
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->e:F

    .line 5
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    iput-boolean v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->f:Z

    .line 6
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->g:F

    .line 7
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->h:I

    .line 8
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->i:I

    .line 9
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->j:I

    .line 10
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->k:I

    .line 11
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    iput v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->l:I

    .line 12
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->x:Z

    iput-boolean v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->m:Z

    .line 13
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->k:Z

    iput-boolean v0, v1, Lcom/allinone/callerid/customview/ProgressWheel$WheelSavedState;->n:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/customview/ProgressWheel;->e(II)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->f()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->q:I

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->f()V

    .line 3
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->i:I

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/allinone/callerid/customview/ProgressWheel$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->B:Lcom/allinone/callerid/customview/ProgressWheel$b;

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->b()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->h:I

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 4
    :cond_2
    :goto_0
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    .line 6
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->x:Z

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->b()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 p1, 0x0

    .line 5
    :cond_2
    :goto_0
    iget v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    .line 6
    :cond_3
    iget v1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->y:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allinone/callerid/customview/ProgressWheel;->w:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->z:F

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->r:I

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/customview/ProgressWheel;->f()V

    .line 3
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->j:I

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->A:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/customview/ProgressWheel;->v:F

    return-void
.end method
