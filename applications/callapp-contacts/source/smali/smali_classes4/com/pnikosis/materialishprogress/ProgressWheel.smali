.class public Lcom/pnikosis/materialishprogress/ProgressWheel;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;,
        Lcom/pnikosis/materialishprogress/ProgressWheel$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ProgressWheel"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:D

.field private j:D

.field private k:F

.field private l:Z

.field private m:J

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/RectF;

.field private s:F

.field private t:J

.field private u:Z

.field private v:F

.field private w:F

.field private x:Z

.field private y:Lcom/pnikosis/materialishprogress/ProgressWheel$a;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 31
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->b:I

    const/16 p1, 0x10e

    .line 32
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->c:I

    const-wide/16 v0, 0xc8

    .line 33
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->d:J

    const/16 p1, 0x1c

    .line 40
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 42
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide v0, 0x407cc00000000000L    # 460.0

    .line 45
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const/high16 v3, -0x56000000

    .line 50
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    const v3, 0xffffff

    .line 51
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    .line 55
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    .line 58
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/high16 v3, 0x43660000    # 230.0f

    .line 62
    iput v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 65
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 69
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 70
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 71
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 93
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x10

    .line 31
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->b:I

    const/16 v0, 0x10e

    .line 32
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->c:I

    const-wide/16 v0, 0xc8

    .line 33
    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->d:J

    const/16 v0, 0x1c

    .line 40
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    const/4 v0, 0x4

    .line 41
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 42
    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide v1, 0x407cc00000000000L    # 460.0

    .line 45
    iput-wide v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    const/4 v2, 0x1

    .line 47
    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const-wide/16 v3, 0x0

    .line 48
    iput-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const/high16 v5, -0x56000000

    .line 50
    iput v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    const v5, 0xffffff

    .line 51
    iput v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 54
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    .line 55
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    .line 58
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/high16 v5, 0x43660000    # 230.0f

    .line 62
    iput v5, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 65
    iput-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 69
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 70
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 71
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 83
    sget-object v1, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1221
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 1222
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v1, v1

    invoke-static {v2, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 1223
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v1, v1

    invoke-static {v2, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    .line 1224
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    int-to-float v1, v1

    .line 1225
    invoke-static {v2, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    .line 1227
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_circleRadius:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    int-to-float v1, v1

    .line 1228
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    .line 1230
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_fillRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    .line 1232
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_barWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 1234
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_rimWidth:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    .line 1236
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_spinSpeed:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v1, v3

    .line 1237
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    mul-float p2, p2, v3

    .line 1238
    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 1240
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_barSpinCycleTime:I

    iget-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    double-to-int v1, v3

    .line 1241
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-double v3, p2

    iput-wide v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    .line 1243
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_barColor:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    .line 1245
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_rimColor:I

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 1247
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_linearProgress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    .line 1249
    sget p2, Lcom/pnikosis/materialishprogress/a$a;->ProgressWheel_matProg_progressIndeterminate:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 1417
    iput-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 1418
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    .line 1254
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getContext()Landroid/content/Context;

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

    .line 108
    :goto_1
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->z:Z

    return-void
.end method

.method private b()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$a;

    if-eqz v0, :cond_0

    .line 429
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 270
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v2, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->q:Landroid/graphics/Paint;

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 276
    iget-boolean v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->z:Z

    if-nez v1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-boolean v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x1

    const/high16 v9, 0x43b40000    # 360.0f

    if-eqz v1, :cond_6

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    sub-long/2addr v10, v12

    long-to-float v1, v10

    .line 285
    iget v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    mul-float v1, v1, v12

    div-float/2addr v1, v4

    .line 2356
    iget-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    const-wide/16 v14, 0xc8

    cmp-long v4, v12, v14

    if-ltz v4, :cond_3

    .line 2357
    iget-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    long-to-double v10, v10

    add-double/2addr v12, v10

    iput-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    .line 2359
    iget-wide v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->j:D

    cmpl-double v4, v12, v10

    if-lez v4, :cond_1

    sub-double/2addr v12, v10

    .line 2362
    iput-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    const-wide/16 v12, 0x0

    .line 2364
    iput-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    .line 2366
    iget-boolean v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    xor-int/2addr v4, v8

    iput-boolean v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    .line 2369
    :cond_1
    iget-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->i:D

    div-double/2addr v12, v10

    add-double/2addr v12, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v12, v12, v6

    .line 2370
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    .line 2373
    iget-boolean v6, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->l:Z

    const/high16 v7, 0x437e0000    # 254.0f

    if-eqz v6, :cond_2

    mul-float v4, v4, v7

    .line 2374
    iput v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    goto :goto_0

    :cond_2
    sub-float/2addr v5, v4

    mul-float v5, v5, v7

    .line 2377
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iget v6, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    sub-float/2addr v6, v5

    add-float/2addr v4, v6

    iput v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 2378
    iput v5, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    goto :goto_0

    :cond_3
    add-long/2addr v12, v10

    .line 2381
    iput-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->m:J

    .line 289
    :goto_0
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    add-float/2addr v4, v1

    iput v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v1, v4, v9

    if-lez v1, :cond_4

    sub-float/2addr v4, v9

    .line 291
    iput v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 298
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 300
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    .line 301
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->k:F

    add-float/2addr v4, v2

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v4, 0x43070000    # 135.0f

    const/4 v11, 0x0

    const/high16 v12, 0x43070000    # 135.0f

    goto :goto_1

    :cond_5
    move v11, v1

    move v12, v4

    .line 308
    :goto_1
    iget-object v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_4

    .line 310
    :cond_6
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 312
    iget v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v10, v1, v10

    if-eqz v10, :cond_7

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    div-float/2addr v10, v4

    .line 317
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    mul-float v10, v10, v4

    .line 319
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    add-float/2addr v4, v10

    iget v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 323
    :goto_2
    iget v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 324
    invoke-direct/range {p0 .. p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->c()V

    .line 328
    :cond_8
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 329
    iget-boolean v4, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    if-nez v4, :cond_9

    div-float/2addr v1, v9

    sub-float v1, v5, v1

    float-to-double v3, v1

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 331
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double v3, v6, v3

    double-to-float v1, v3

    mul-float v3, v1, v9

    .line 332
    iget v1, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    div-float/2addr v1, v9

    sub-float/2addr v5, v1

    float-to-double v4, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v6, v4

    double-to-float v1, v6

    mul-float v1, v1, v9

    .line 335
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v13, 0x43b40000    # 360.0f

    goto :goto_3

    :cond_a
    move v13, v1

    .line 339
    :goto_3
    iget-object v11, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    sub-float v12, v3, v2

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/pnikosis/materialishprogress/ProgressWheel;->p:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_4
    if-eqz v8, :cond_b

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 116
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 118
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 123
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 124
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    .line 135
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-eq v3, v5, :cond_3

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_4

    .line 147
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    move v1, p2

    .line 153
    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 485
    instance-of v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    if-nez v0, :cond_0

    .line 486
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 490
    :cond_0
    check-cast p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    .line 491
    invoke-virtual {p1}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 493
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 494
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 495
    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 496
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    .line 497
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 498
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    .line 499
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    .line 500
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 501
    iget v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    .line 502
    iget-boolean v0, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    .line 503
    iget-boolean p1, p1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 464
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 466
    new-instance v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 469
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mProgress:F

    .line 470
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 471
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 472
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 473
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barWidth:I

    .line 474
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->barColor:I

    .line 475
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 476
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->rimColor:I

    .line 477
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    iput v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 478
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 479
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    iput-boolean v0, v1, Lcom/pnikosis/materialishprogress/ProgressWheel$WheelSavedState;->fillRadius:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2189
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingTop()I

    move-result p3

    .line 2190
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingBottom()I

    move-result p4

    .line 2191
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingLeft()I

    move-result v0

    .line 2192
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->getPaddingRight()I

    move-result v1

    .line 2194
    iget-boolean v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->h:Z

    if-nez v2, :cond_0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int v1, p2, p4

    sub-int/2addr v1, p3

    .line 2196
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2199
    iget v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p1, v1

    .line 2202
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    sub-int/2addr p2, v1

    .line 2203
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    .line 2205
    new-instance p3, Landroid/graphics/RectF;

    iget p4, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    add-int v0, p1, p4

    int-to-float v0, v0

    add-int v2, p2, p4

    int-to-float v2, v2

    add-int/2addr p1, v1

    sub-int/2addr p1, p4

    int-to-float p1, p1

    add-int/2addr p2, v1

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {p3, v0, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    goto :goto_0

    .line 2209
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    add-int/2addr p3, v3

    int-to-float p3, p3

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    int-to-float p1, p1

    sub-int/2addr p2, p4

    sub-int/2addr p2, v3

    int-to-float p2, p2

    invoke-direct {v2, v0, p3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->r:Landroid/graphics/RectF;

    .line 165
    :goto_0
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->b()V

    .line 166
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 348
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 0

    .line 619
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->n:I

    .line 620
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->b()V

    .line 621
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0

    .line 600
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->f:I

    .line 601
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/pnikosis/materialishprogress/ProgressWheel$a;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->y:Lcom/pnikosis/materialishprogress/ProgressWheel$a;

    .line 260
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->c()V

    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0

    .line 581
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->e:I

    .line 582
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 3

    .line 441
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

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

    .line 452
    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 456
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 457
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    .line 459
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setLinearProgress(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->u:Z

    .line 563
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3

    .line 527
    iget-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    iput v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    const/4 v0, 0x0

    .line 529
    iput-boolean v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    .line 531
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->c()V

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

    .line 540
    :cond_2
    :goto_0
    iget v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_3

    return-void

    .line 547
    :cond_3
    iget v1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->v:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->t:J

    :cond_4
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 551
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->w:F

    .line 553
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    return-void
.end method

.method public setRimColor(I)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->o:I

    .line 640
    invoke-direct {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->b()V

    .line 641
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0

    .line 679
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->g:I

    .line 680
    iget-boolean p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->x:Z

    if-nez p1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/pnikosis/materialishprogress/ProgressWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 663
    iput p1, p0, Lcom/pnikosis/materialishprogress/ProgressWheel;->s:F

    return-void
.end method
