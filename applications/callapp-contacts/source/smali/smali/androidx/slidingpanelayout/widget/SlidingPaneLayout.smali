.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/view/View;

.field c:F

.field d:I

.field e:Z

.field f:I

.field final g:Landroidx/customview/a/c;

.field h:Z

.field final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private final m:I

.field private n:Z

.field private o:F

.field private p:F

.field private q:F

.field private r:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

.field private s:Z

.field private final t:Landroid/graphics/Rect;

.field private u:Ljava/lang/reflect/Method;

.field private v:Ljava/lang/reflect/Field;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    .line 113
    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    const/4 p2, 0x1

    .line 193
    iput-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    .line 195
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->t:Landroid/graphics/Rect;

    .line 197
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000    # 32.0f

    mul-float p3, p3, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 252
    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:I

    const/4 p3, 0x0

    .line 254
    invoke-virtual {p0, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 256
    new-instance p3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;

    invoke-direct {p3, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, p3}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    .line 257
    invoke-static {p0, p2}, Landroidx/core/view/v;->c(Landroid/view/View;I)V

    .line 259
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$c;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v0, p2}, Landroidx/customview/a/c;->a(Landroid/view/ViewGroup;FLandroidx/customview/a/c$a;)Landroidx/customview/a/c;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float p1, p1, p3

    .line 2411
    iput p1, p2, Landroidx/customview/a/c;->g:F

    return-void
.end method

.method private b(F)Z
    .locals 5

    .line 1069
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1074
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    .line 1075
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    iget v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    .line 1080
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1081
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:I

    int-to-float v4, v4

    mul-float p1, p1, v4

    add-float/2addr v0, p1

    int-to-float p1, v2

    add-float/2addr v0, p1

    sub-float/2addr v3, v0

    float-to-int p1, v3

    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    iget v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 1084
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:I

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 1087
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Landroidx/customview/a/c;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1088
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a()V

    .line 1089
    invoke-static {p0}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private c()Z
    .locals 2

    .line 853
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 854
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 391
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 392
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 393
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 394
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(F)V
    .locals 9

    .line 1209
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    .line 1210
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1211
    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1213
    :goto_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_5

    .line 1215
    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1216
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-eq v4, v5, :cond_4

    .line 1218
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:I

    int-to-float v8, v7

    mul-float v5, v5, v8

    float-to-int v5, v5

    .line 1219
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:F

    sub-float v8, v6, p1

    int-to-float v7, v7

    mul-float v8, v8, v7

    float-to-int v7, v8

    sub-int/2addr v5, v7

    if-eqz v0, :cond_2

    neg-int v5, v5

    .line 1223
    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_4

    .line 1226
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:F

    if-eqz v0, :cond_3

    sub-float/2addr v5, v6

    goto :goto_3

    :cond_3
    sub-float v5, v6, v5

    :goto_3
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    invoke-virtual {p0, v4, v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 348
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_4

    .line 3400
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    goto :goto_2

    .line 3407
    :cond_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-ge v7, v9, :cond_3

    .line 3411
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3413
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_4

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 363
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v13, p0

    if-ge v12, v11, :cond_9

    .line 364
    invoke-virtual {v13, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eq v14, v0, :cond_9

    .line 369
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-eq v15, v6, :cond_8

    if-eqz v1, :cond_5

    move v6, v3

    goto :goto_5

    :cond_5
    move v6, v2

    .line 374
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 373
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 375
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    .line 377
    :goto_6
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    .line 376
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 378
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_7

    if-lt v15, v9, :cond_7

    if-gt v0, v8, :cond_7

    if-gt v1, v10, :cond_7

    const/4 v0, 0x4

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 386
    :goto_7
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_8
    move/from16 v16, v1

    :goto_8
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_4

    :cond_9
    return-void
.end method

.method final a(Landroid/view/View;FI)V
    .locals 3

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int p2, v1

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 968
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    .line 969
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 971
    :cond_0
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    .line 973
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(Landroid/view/View;)V

    return-void

    .line 976
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_4

    .line 977
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    if-eqz p2, :cond_3

    .line 978
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 980
    :cond_3
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;

    invoke-direct {p2, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 981
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-static {p0, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 5

    .line 1015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void

    .line 1020
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1027
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SlidingPaneLayout"

    if-nez v0, :cond_1

    .line 1029
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v4, "getDisplayList"

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->u:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    .line 1032
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/View;

    const-string v4, "mRecreateDisplayList"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/lang/reflect/Field;

    .line 1037
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    .line 1039
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    :goto_1
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->w:Z

    .line 1044
    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->u:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->v:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1051
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1052
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->u:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Error refreshing display list state"

    .line 1054
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1046
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    .line 1058
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1058
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/core/view/v;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method final b()Z
    .locals 2

    .line 1617
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1270
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 1271
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1288
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 1

    .line 1097
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->b()V

    return-void

    .line 1103
    :cond_0
    invoke-static {p0}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Landroid/graphics/drawable/Drawable;

    .line 1184
    :goto_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 1190
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1191
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1193
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1196
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1197
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_2

    .line 1200
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    .line 1204
    :goto_2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 988
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 992
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 995
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->t:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 998
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->t:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1000
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1003
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1005
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1276
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1293
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1281
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    .line 429
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 430
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;

    .line 431
    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$b;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 757
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 759
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 761
    invoke-static {v1, v3, v4}, Landroidx/customview/a/c;->b(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    .line 766
    :cond_0
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 796
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 797
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 798
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    .line 4503
    iget v4, v4, Landroidx/customview/a/c;->b:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 800
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {p1}, Landroidx/customview/a/c;->a()V

    .line 801
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    return v3

    .line 780
    :cond_4
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 783
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:F

    .line 784
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:F

    .line 786
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {v4, v0, v1}, Landroidx/customview/a/c;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    .line 787
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    .line 807
    :goto_1
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v1, p1}, Landroidx/customview/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2

    .line 772
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {p1}, Landroidx/customview/a/c;->a()V

    return v3

    .line 767
    :cond_9
    :goto_4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->a()V

    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 652
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    const/4 v4, 0x2

    .line 3447
    iput v4, v3, Landroidx/customview/a/c;->i:I

    goto :goto_0

    .line 654
    :cond_0
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    .line 4447
    iput v2, v3, Landroidx/customview/a/c;->i:I

    :goto_0
    sub-int v3, p4, p2

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    :goto_1
    if-eqz v1, :cond_2

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 659
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    .line 665
    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    if-eqz v8, :cond_4

    .line 666
    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    :cond_4
    move v11, v4

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v7, :cond_b

    .line 670
    invoke-virtual {v0, v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 672
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_a

    .line 676
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 678
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 681
    iget-boolean v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-eqz v2, :cond_7

    .line 682
    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v8, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v8

    sub-int v8, v3, v5

    .line 683
    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:I

    sub-int v10, v8, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    .line 685
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:I

    if-eqz v1, :cond_5

    .line 686
    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    :cond_5
    iget v2, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_5
    add-int v16, v11, v2

    add-int v16, v16, v10

    .line 687
    div-int/lit8 v17, v15, 0x2

    add-int v9, v16, v17

    if-le v9, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    iput-boolean v8, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    int-to-float v8, v10

    .line 688
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    add-int/2addr v2, v8

    add-int/2addr v11, v2

    int-to-float v2, v8

    .line 690
    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    iput v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    const/4 v2, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_8

    .line 691
    :cond_7
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:I

    if-eqz v2, :cond_8

    .line 692
    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    int-to-float v2, v2

    mul-float v8, v8, v2

    float-to-int v2, v8

    goto :goto_7

    :cond_8
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_7
    move v11, v4

    :goto_8
    if-eqz v1, :cond_9

    sub-int v8, v3, v11

    add-int/2addr v8, v2

    sub-int v2, v8, v15

    goto :goto_9

    :cond_9
    sub-int v2, v11, v2

    add-int v8, v2, v15

    .line 709
    :goto_9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    .line 710
    invoke-virtual {v13, v2, v6, v8, v10}, Landroid/view/View;->layout(IIII)V

    .line 712
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_a

    :cond_a
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 715
    :cond_b
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    if-eqz v1, :cond_f

    .line 716
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v1, :cond_d

    .line 717
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:I

    if-eqz v1, :cond_c

    .line 718
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(F)V

    .line 720
    :cond_c
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz v1, :cond_e

    .line 721
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v7, :cond_e

    .line 726
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 729
    :cond_e
    :goto_c
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;)V

    :cond_f
    const/4 v1, 0x0

    .line 732
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 439
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 440
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 441
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_1

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eq v1, v6, :cond_3

    if-nez v1, :cond_3

    const/16 v2, 0x12c

    goto :goto_0

    .line 456
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez v3, :cond_3

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_3

    const/high16 v3, -0x80000000

    const/16 v4, 0x12c

    goto :goto_0

    .line 468
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5

    if-eq v3, v7, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1

    .line 476
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    goto :goto_1

    .line 479
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    const/4 v4, 0x0

    .line 485
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    const-string v10, "SlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    .line 490
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v10, 0x0

    .line 494
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    move v14, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/16 v15, 0x8

    const/16 v16, 0x1

    if-ge v11, v9, :cond_10

    .line 499
    invoke-virtual {v0, v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 500
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 502
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_7

    .line 503
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    goto/16 :goto_6

    .line 507
    :cond_7
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_8

    .line 508
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    add-float/2addr v13, v10

    .line 512
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-eqz v10, :cond_f

    .line 516
    :cond_8
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    .line 517
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_9

    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    .line 518
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_3

    .line 520
    :cond_9
    iget v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_a

    sub-int v1, v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    .line 521
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_3

    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    .line 524
    iget v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 528
    :goto_3
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v15, v10, :cond_b

    const/high16 v10, -0x80000000

    .line 529
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_4

    .line 530
    :cond_b
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 531
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_4

    :cond_c
    const/high16 v10, 0x40000000    # 2.0f

    .line 533
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 536
    :goto_4
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    .line 537
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 538
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_d

    if-le v10, v4, :cond_d

    .line 541
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_d
    sub-int/2addr v14, v1

    if-gez v14, :cond_e

    const/4 v1, 0x1

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    .line 545
    :goto_5
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    or-int/2addr v12, v1

    .line 546
    iget-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-eqz v1, :cond_f

    .line 547
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    :cond_f
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_10
    if-nez v12, :cond_11

    const/4 v1, 0x0

    cmpl-float v3, v13, v1

    if-lez v3, :cond_1f

    .line 553
    :cond_11
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:I

    sub-int v1, v8, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v9, :cond_1f

    .line 556
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 558
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v15, :cond_1d

    .line 562
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 564
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v15, :cond_1d

    .line 568
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_12

    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12

    const/4 v10, 0x1

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_13

    const/4 v11, 0x0

    goto :goto_9

    .line 569
    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    :goto_9
    if-eqz v12, :cond_18

    .line 570
    iget-object v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-eq v6, v15, :cond_18

    .line 571
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-gez v15, :cond_1d

    if-gt v11, v1, :cond_14

    iget v11, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v15, 0x0

    cmpl-float v11, v11, v15

    if-lez v11, :cond_1d

    :cond_14
    if-eqz v10, :cond_17

    .line 578
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_15

    const/high16 v10, -0x80000000

    .line 579
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_a

    .line 581
    :cond_15
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_16

    const/high16 v10, 0x40000000    # 2.0f

    .line 582
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    :cond_16
    const/high16 v10, 0x40000000    # 2.0f

    .line 585
    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    :cond_17
    const/high16 v10, 0x40000000    # 2.0f

    .line 590
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 589
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 592
    :goto_a
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 594
    invoke-virtual {v6, v11, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_c

    .line 596
    :cond_18
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_1d

    .line 598
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v10, :cond_1b

    .line 600
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_19

    const/high16 v10, -0x80000000

    .line 601
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v15, v17

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_b

    .line 603
    :cond_19
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_1a

    const/high16 v10, 0x40000000    # 2.0f

    .line 604
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v15, v19

    goto :goto_b

    :cond_1a
    const/high16 v10, 0x40000000    # 2.0f

    .line 607
    iget v15, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_b

    :cond_1b
    const/high16 v10, 0x40000000    # 2.0f

    .line 612
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 611
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    :goto_b
    if-eqz v12, :cond_1c

    .line 617
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v7

    sub-int v7, v8, v10

    move/from16 v19, v1

    const/high16 v10, 0x40000000    # 2.0f

    .line 619
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-eq v11, v7, :cond_1e

    .line 622
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_1c
    move/from16 v19, v1

    const/4 v1, 0x0

    .line 626
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 627
    iget v7, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    int-to-float v10, v10

    mul-float v7, v7, v10

    div-float/2addr v7, v13

    float-to-int v7, v7

    add-int/2addr v11, v7

    const/high16 v7, 0x40000000    # 2.0f

    .line 628
    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 630
    invoke-virtual {v6, v10, v15}, Landroid/view/View;->measure(II)V

    goto :goto_e

    :cond_1d
    :goto_c
    move/from16 v19, v1

    :cond_1e
    :goto_d
    const/4 v1, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    goto/16 :goto_7

    .line 637
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    .line 639
    invoke-virtual {v0, v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 640
    iput-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    .line 642
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    .line 3431
    iget v1, v1, Landroidx/customview/a/c;->a:I

    if-eqz v1, :cond_20

    if-nez v12, :cond_20

    .line 644
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v1}, Landroidx/customview/a/c;->b()V

    :cond_20
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1308
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1309
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1313
    :cond_0
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 1314
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1316
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_2

    .line 8861
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 8862
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    goto :goto_0

    .line 8901
    :cond_2
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 1321
    :cond_3
    :goto_0
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1298
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1300
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5930
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 6911
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1301
    :cond_2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    :goto_1
    iput-boolean v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    .line 740
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 814
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 818
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    invoke-virtual {v0, p1}, Landroidx/customview/a/c;->b(Landroid/view/MotionEvent;)V

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 832
    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 835
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:F

    sub-float v2, v0, v2

    .line 836
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:F

    sub-float v3, p1, v3

    .line 837
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroidx/customview/a/c;

    .line 5503
    iget v4, v4, Landroidx/customview/a/c;->b:I

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    mul-int v4, v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 838
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 839
    invoke-static {v2, v0, p1}, Landroidx/customview/a/c;->b(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 841
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 826
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:F

    .line 827
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:F

    :cond_3
    :goto_0
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 746
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 747
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:Z

    if-nez p2, :cond_1

    .line 748
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:Z

    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 309
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;)V
    .locals 0

    .line 321
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$d;

    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    .line 271
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:I

    .line 272
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1126
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1

    .line 1160
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1

    .line 1170
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0

    .line 291
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    return-void
.end method
