.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "SourceFile"


# instance fields
.field b:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field c:[F

.field d:Landroid/graphics/Matrix;

.field e:I

.field f:I

.field g:F

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 49
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    .line 50
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    const p3, -0xff01

    .line 52
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 53
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/e$b;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 75
    sget v2, Landroidx/constraintlayout/widget/e$b;->MotionTelltales_telltales_tailColor:I

    if-ne v1, v2, :cond_0

    .line 76
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    goto :goto_1

    .line 77
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/e$b;->MotionTelltales_telltales_velocityMode:I

    if-ne v1, v2, :cond_1

    .line 78
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    goto :goto_1

    .line 79
    :cond_1
    sget v2, Landroidx/constraintlayout/widget/e$b;->MotionTelltales_telltales_tailScale:I

    if-ne v1, v2, :cond_2

    .line 80
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->f:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroidx/constraintlayout/utils/widget/MockView;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    .line 107
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 109
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 110
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 112
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_0

    .line 113
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getWidth()I

    move-result v1

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getHeight()I

    move-result v2

    const/4 v3, 0x5

    new-array v4, v3, [F

    .line 119
    fill-array-data v4, :array_0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_15

    .line 121
    aget v13, v4, v6

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v3, :cond_14

    .line 123
    aget v15, v4, v14

    .line 124
    iget-object v7, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->b:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v12, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    iget v11, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->e:I

    .line 2962
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:F

    .line 2963
    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    .line 2964
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    if-eqz v10, :cond_2

    .line 2966
    iget v8, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->m:F

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    .line 2967
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    const v16, 0x3727c5ac    # 1.0E-5f

    add-float v10, v10, v16

    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 2968
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l:F

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v9, v3

    div-float v9, v9, v16

    mul-float v8, v8, v9

    .line 2971
    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->j:F

    div-float/2addr v8, v9

    move v9, v3

    .line 2974
    :cond_2
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    instance-of v3, v3, Landroidx/constraintlayout/motion/widget/n;

    if-eqz v3, :cond_3

    .line 2975
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->c:Landroid/view/animation/Interpolator;

    check-cast v3, Landroidx/constraintlayout/motion/widget/n;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/n;->a()F

    move-result v8

    :cond_3
    move v3, v8

    .line 2978
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->i:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/m;

    and-int/lit8 v8, v11, 0x1

    const/16 v16, 0x1

    if-nez v8, :cond_12

    .line 2981
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 3101
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/m;->o:[F

    invoke-virtual {v7, v9, v8}, Landroidx/constraintlayout/motion/widget/m;->a(F[F)F

    move-result v8

    .line 3103
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    const-string v5, "translationX"

    const/16 v18, 0x0

    if-nez v9, :cond_4

    move-object/from16 v19, v4

    move-object/from16 v9, v18

    goto :goto_2

    :cond_4
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/q;

    move-object/from16 v19, v4

    .line 3104
    :goto_2
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    move/from16 v20, v11

    const-string v11, "translationY"

    if-nez v4, :cond_5

    move/from16 v21, v6

    move-object/from16 v4, v18

    goto :goto_3

    :cond_5
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/q;

    move/from16 v21, v6

    .line 3105
    :goto_3
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    move/from16 v22, v14

    const-string v14, "rotation"

    if-nez v6, :cond_6

    move/from16 v23, v2

    move-object/from16 v6, v18

    goto :goto_4

    :cond_6
    iget-object v6, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/q;

    move/from16 v23, v2

    .line 3106
    :goto_4
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    move/from16 v24, v1

    const-string v1, "scaleX"

    if-nez v2, :cond_7

    move-object/from16 v2, v18

    goto :goto_5

    :cond_7
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/q;

    .line 3107
    :goto_5
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    move/from16 v25, v3

    const-string v3, "scaleY"

    if-nez v0, :cond_8

    move/from16 v26, v10

    move-object/from16 v0, v18

    goto :goto_6

    :cond_8
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/q;

    move/from16 v26, v10

    .line 3109
    :goto_6
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v10, :cond_9

    move-object/from16 v5, v18

    goto :goto_7

    :cond_9
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/f;

    .line 3110
    :goto_7
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v10, :cond_a

    move-object/from16 v10, v18

    goto :goto_8

    :cond_a
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/f;

    .line 3111
    :goto_8
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v11, :cond_b

    move-object/from16 v11, v18

    goto :goto_9

    :cond_b
    iget-object v11, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/f;

    .line 3112
    :goto_9
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v14, :cond_c

    move-object/from16 v1, v18

    goto :goto_a

    :cond_c
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/f;

    .line 3113
    :goto_a
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    if-nez v14, :cond_d

    goto :goto_b

    :cond_d
    iget-object v14, v7, Landroidx/constraintlayout/motion/widget/m;->r:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroidx/constraintlayout/motion/widget/f;

    :goto_b
    move-object/from16 v3, v18

    .line 3115
    new-instance v14, Landroidx/constraintlayout/motion/a/h;

    invoke-direct {v14}, Landroidx/constraintlayout/motion/a/h;-><init>()V

    .line 3116
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/a/h;->a()V

    .line 3117
    invoke-virtual {v14, v6, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3118
    invoke-virtual {v14, v9, v4, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/q;Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3119
    invoke-virtual {v14, v2, v0, v8}, Landroidx/constraintlayout/motion/a/h;->b(Landroidx/constraintlayout/motion/widget/q;Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3120
    invoke-virtual {v14, v11, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/f;F)V

    .line 3121
    invoke-virtual {v14, v5, v10, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/f;Landroidx/constraintlayout/motion/widget/f;F)V

    .line 3122
    invoke-virtual {v14, v1, v3, v8}, Landroidx/constraintlayout/motion/a/h;->b(Landroidx/constraintlayout/motion/widget/f;Landroidx/constraintlayout/motion/widget/f;F)V

    move-object/from16 v18, v1

    .line 3123
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    if-eqz v1, :cond_f

    .line 3124
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->m:[D

    array-length v0, v0

    if-lez v0, :cond_e

    .line 3125
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    float-to-double v1, v8

    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 3126
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->h:Landroidx/constraintlayout/motion/a/b;

    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 3127
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-static {v15, v13, v12, v0, v1}, Landroidx/constraintlayout/motion/widget/o;->a(FF[F[I[D)V

    :cond_e
    move-object v7, v14

    move v8, v15

    move v9, v13

    move/from16 v10, v26

    move/from16 v1, v20

    move/from16 v11, v17

    move-object v0, v12

    .line 3129
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/a/h;->a(FFII[F)V

    move-object v1, v0

    goto/16 :goto_d

    .line 3132
    :cond_f
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    if-eqz v1, :cond_11

    .line 3133
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->o:[F

    invoke-virtual {v7, v8, v0}, Landroidx/constraintlayout/motion/widget/m;->a(F[F)F

    move-result v0

    .line 3134
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    float-to-double v3, v0

    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-virtual {v1, v3, v4, v0}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 3135
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->g:[Landroidx/constraintlayout/motion/a/b;

    aget-object v0, v0, v2

    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->m:[D

    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    .line 3136
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->o:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    .line 3137
    :goto_c
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    array-length v2, v2

    if-ge v1, v2, :cond_10

    .line 3138
    iget-object v2, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    aget-wide v3, v2, v1

    float-to-double v5, v0

    mul-double v3, v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3140
    :cond_10
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/m;->l:[I

    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/m;->n:[D

    invoke-static {v15, v13, v12, v0, v1}, Landroidx/constraintlayout/motion/widget/o;->a(FF[F[I[D)V

    move-object v7, v14

    move v8, v15

    move v9, v13

    move/from16 v10, v26

    move/from16 v11, v17

    move-object v1, v12

    .line 3142
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/a/h;->a(FFII[F)V

    goto/16 :goto_d

    :cond_11
    move-object v1, v12

    .line 3147
    iget-object v12, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/o;->f:F

    move-object/from16 v27, v3

    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->f:F

    sub-float/2addr v12, v3

    .line 3148
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->g:F

    move-object/from16 v28, v5

    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->g:F

    sub-float/2addr v3, v5

    .line 3149
    iget-object v5, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/o;->h:F

    move-object/from16 v29, v10

    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v10, v10, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float/2addr v5, v10

    .line 3150
    iget-object v10, v7, Landroidx/constraintlayout/motion/widget/m;->e:Landroidx/constraintlayout/motion/widget/o;

    iget v10, v10, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/m;->d:Landroidx/constraintlayout/motion/widget/o;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float/2addr v10, v7

    add-float/2addr v5, v12

    add-float/2addr v10, v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v30, v7, v15

    mul-float v12, v12, v30

    mul-float v5, v5, v15

    add-float/2addr v12, v5

    const/4 v5, 0x0

    .line 3153
    aput v12, v1, v5

    sub-float/2addr v7, v13

    mul-float v3, v3, v7

    mul-float v10, v10, v13

    add-float/2addr v3, v10

    .line 3154
    aput v3, v1, v16

    .line 3156
    invoke-virtual {v14}, Landroidx/constraintlayout/motion/a/h;->a()V

    .line 3157
    invoke-virtual {v14, v6, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3158
    invoke-virtual {v14, v9, v4, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/q;Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3159
    invoke-virtual {v14, v2, v0, v8}, Landroidx/constraintlayout/motion/a/h;->b(Landroidx/constraintlayout/motion/widget/q;Landroidx/constraintlayout/motion/widget/q;F)V

    .line 3160
    invoke-virtual {v14, v11, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/f;F)V

    move-object/from16 v5, v28

    move-object/from16 v10, v29

    .line 3161
    invoke-virtual {v14, v5, v10, v8}, Landroidx/constraintlayout/motion/a/h;->a(Landroidx/constraintlayout/motion/widget/f;Landroidx/constraintlayout/motion/widget/f;F)V

    move-object/from16 v0, v18

    move-object/from16 v2, v27

    .line 3162
    invoke-virtual {v14, v0, v2, v8}, Landroidx/constraintlayout/motion/a/h;->b(Landroidx/constraintlayout/motion/widget/f;Landroidx/constraintlayout/motion/widget/f;F)V

    move-object v7, v14

    move v8, v15

    move v9, v13

    move/from16 v10, v26

    move/from16 v11, v17

    move-object v12, v1

    .line 3163
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/a/h;->a(FFII[F)V

    goto :goto_d

    :cond_12
    move/from16 v24, v1

    move/from16 v23, v2

    move/from16 v25, v3

    move-object/from16 v19, v4

    move/from16 v21, v6

    move/from16 v20, v11

    move-object v1, v12

    move/from16 v22, v14

    .line 2984
    invoke-virtual {v7, v9, v15, v13, v1}, Landroidx/constraintlayout/motion/widget/m;->a(FFF[F)V

    :goto_d
    const/4 v0, 0x2

    move/from16 v2, v20

    if-ge v2, v0, :cond_13

    const/4 v0, 0x0

    .line 2987
    aget v2, v1, v0

    mul-float v2, v2, v25

    aput v2, v1, v0

    .line 2988
    aget v0, v1, v16

    mul-float v0, v0, v25

    aput v0, v1, v16

    :cond_13
    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    move/from16 v1, v24

    int-to-float v2, v1

    mul-float v4, v2, v15

    move/from16 v2, v23

    int-to-float v3, v2

    mul-float v5, v3, v13

    .line 129
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->c:[F

    const/4 v9, 0x0

    aget v6, v3, v9

    iget v7, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->g:F

    mul-float v6, v6, v7

    sub-float v6, v4, v6

    .line 130
    aget v8, v3, v16

    mul-float v8, v8, v7

    sub-float v7, v5, v8

    .line 131
    iget-object v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->d:Landroid/graphics/Matrix;

    invoke-virtual {v8, v3}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 132
    iget-object v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->h:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v22, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v21

    const/4 v3, 0x5

    goto/16 :goto_1

    :cond_14
    move-object/from16 v19, v4

    move/from16 v21, v6

    const/4 v9, 0x0

    add-int/lit8 v6, v21, 0x1

    const/4 v3, 0x5

    goto/16 :goto_0

    :cond_15
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 101
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/utils/widget/MockView;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->requestLayout()V

    return-void
.end method
