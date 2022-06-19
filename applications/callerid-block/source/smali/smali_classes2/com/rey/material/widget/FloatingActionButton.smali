.class public Lcom/rey/material/widget/FloatingActionButton;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/rey/material/app/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/FloatingActionButton$b;,
        Lcom/rey/material/widget/FloatingActionButton$SavedState;
    }
.end annotation


# instance fields
.field private b:Le/g/a/a/d;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Landroid/view/animation/Interpolator;

.field private g:Lcom/rey/material/widget/FloatingActionButton$b;

.field private h:I

.field private i:Lcom/rey/material/widget/a;

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->e:I

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->k:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/FloatingActionButton;->l(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->e:I

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->k:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/rey/material/widget/FloatingActionButton;->l(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->e:I

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/FloatingActionButton;->k:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/FloatingActionButton;->l(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic b(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic c(Lcom/rey/material/widget/FloatingActionButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic e(Lcom/rey/material/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic f(Lcom/rey/material/widget/FloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    return p0
.end method

.method static synthetic g(Lcom/rey/material/widget/FloatingActionButton;)Le/g/a/a/d;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    return-object p0
.end method

.method static synthetic h(Lcom/rey/material/widget/FloatingActionButton;)I
    .locals 0

    iget p0, p0, Lcom/rey/material/widget/FloatingActionButton;->e:I

    return p0
.end method

.method static synthetic i(Lcom/rey/material/widget/FloatingActionButton;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/rey/material/widget/FloatingActionButton;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private l(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/rey/material/widget/FloatingActionButton$b;

    invoke-direct {v0, p0}, Lcom/rey/material/widget/FloatingActionButton$b;-><init>(Lcom/rey/material/widget/FloatingActionButton;)V

    iput-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->g:Lcom/rey/material/widget/FloatingActionButton$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/FloatingActionButton;->k(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/FloatingActionButton;->j:I

    return-void
.end method


# virtual methods
.method public d(Lcom/rey/material/app/b$b;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/FloatingActionButton;->j:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/FloatingActionButton;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/FloatingActionButton;->k:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/FloatingActionButton;->j(I)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, p1}, Le/g/a/a/d;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public getBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->e()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getElevation()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->k()F

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineMorphingState()I
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/g/a/a/c;

    if-eqz v1, :cond_0

    check-cast v0, Le/g/a/a/c;

    invoke-virtual {v0}, Le/g/a/a/c;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->j()I

    move-result v0

    return v0
.end method

.method protected getRippleManager()Lcom/rey/material/widget/a;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->i:Lcom/rey/material/widget/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/widget/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton;->i:Lcom/rey/material/widget/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/widget/a;

    invoke-direct {v1}, Lcom/rey/material/widget/a;-><init>()V

    iput-object v1, p0, Lcom/rey/material/widget/FloatingActionButton;->i:Lcom/rey/material/widget/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->i:Lcom/rey/material/widget/a;

    return-object v0
.end method

.method public j(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/FloatingActionButton;->k(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected k(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/callerid/block/R$styleable;->FloatingActionButton:[I

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v12, v1, :cond_9

    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    move/from16 v16, v1

    const/16 v1, 0x10

    if-ne v7, v1, :cond_0

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v8, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0xb

    if-ne v7, v1, :cond_1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    move v10, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    if-ne v7, v1, :cond_2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v7, v1, :cond_3

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    move v11, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0xe

    if-ne v7, v1, :cond_4

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    goto :goto_1

    :cond_4
    const/16 v1, 0xc

    if-ne v7, v1, :cond_5

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    goto :goto_1

    :cond_5
    const/16 v1, 0xd

    if-ne v7, v1, :cond_6

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v6, Lcom/rey/material/widget/FloatingActionButton;->h:I

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    if-ne v7, v1, :cond_7

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v6, Lcom/rey/material/widget/FloatingActionButton;->e:I

    goto :goto_1

    :cond_7
    const/16 v1, 0xf

    if-ne v7, v1, :cond_8

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v6, Lcom/rey/material/widget/FloatingActionButton;->f:Landroid/view/animation/Interpolator;

    :cond_8
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, v6, Lcom/rey/material/widget/FloatingActionButton;->h:I

    if-gez v0, :cond_a

    const/16 v0, 0x18

    invoke-static {v2, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/FloatingActionButton;->h:I

    :cond_a
    iget v0, v6, Lcom/rey/material/widget/FloatingActionButton;->e:I

    if-gez v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/rey/material/widget/FloatingActionButton;->e:I

    :cond_b
    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->f:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->f:Landroid/view/animation/Interpolator;

    :cond_c
    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    if-nez v0, :cond_11

    if-gez v8, :cond_d

    const/16 v0, 0x1c

    invoke-static {v2, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v8

    :cond_d
    move/from16 v17, v8

    if-gez v10, :cond_e

    const/4 v0, 0x4

    invoke-static {v2, v0}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v10

    :cond_e
    if-nez v13, :cond_f

    invoke-static {v2, v9}, Le/g/a/b/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :cond_f
    move-object/from16 v18, v13

    if-gez v11, :cond_10

    const/16 v21, 0x0

    goto :goto_2

    :cond_10
    move/from16 v21, v11

    :goto_2
    new-instance v0, Le/g/a/a/d;

    int-to-float v1, v10

    move-object/from16 v16, v0

    move/from16 v19, v1

    move/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Le/g/a/a/d;-><init>(ILandroid/content/res/ColorStateList;FFI)V

    iput-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Le/g/a/a/d;->q(Z)V

    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_3

    :cond_11
    if-ltz v8, :cond_12

    invoke-virtual {v0, v8}, Le/g/a/a/d;->r(I)Z

    :cond_12
    if-eqz v13, :cond_13

    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, v13}, Le/g/a/a/d;->p(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-ltz v10, :cond_14

    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    int-to-float v1, v10

    invoke-virtual {v0, v1, v1}, Le/g/a/a/d;->s(FF)Z

    :cond_14
    if-ltz v11, :cond_15

    iget-object v0, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, v11}, Le/g/a/a/d;->n(I)Z

    :cond_15
    :goto_3
    if-eqz v14, :cond_16

    new-instance v0, Le/g/a/a/c$b;

    invoke-direct {v0, v2, v14}, Le/g/a/a/c$b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Le/g/a/a/c$b;->b()Le/g/a/a/c;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0, v9}, Lcom/rey/material/widget/FloatingActionButton;->setIcon(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_5

    :cond_16
    if-eqz v15, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_17
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/rey/material/widget/FloatingActionButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/a;->c(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_18

    check-cast v0, Le/g/a/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/g/a/a/f;->r(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v1, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v1}, Le/g/a/a/d;->g()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v2}, Le/g/a/a/d;->i()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v3}, Le/g/a/a/d;->h()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v4}, Le/g/a/a/d;->f()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v16, v0

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-virtual/range {v16 .. v25}, Le/g/a/a/f;->t(IIIIIIIII)V

    :cond_18
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/rey/material/widget/FloatingActionButton;->j:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/FloatingActionButton;->d(Lcom/rey/material/app/b$b;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/rey/material/widget/FloatingActionButton;->j:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->m(Lcom/rey/material/app/b$c;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p1}, Le/g/a/a/d;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p2}, Le/g/a/a/d;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/rey/material/widget/FloatingActionButton$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/rey/material/widget/FloatingActionButton$SavedState;->b:I

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/rey/material/widget/FloatingActionButton;->setLineMorphingState(IZ)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/rey/material/widget/FloatingActionButton$SavedState;

    invoke-direct {v1, v0}, Lcom/rey/material/widget/FloatingActionButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton;->getLineMorphingState()I

    move-result v0

    iput v0, v1, Lcom/rey/material/widget/FloatingActionButton$SavedState;->b:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    iget-object p3, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    iget p3, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    iget-object p4, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p4}, Le/g/a/a/d;->c()F

    move-result p4

    sub-float/2addr p4, p3

    float-to-int p4, p4

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->d()F

    move-result v0

    sub-float/2addr v0, p3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v1}, Le/g/a/a/d;->c()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v2}, Le/g/a/a/d;->d()F

    move-result v2

    add-float/2addr v2, p3

    float-to-int p3, v2

    invoke-virtual {p1, p4, v0, v1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget p3, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    iget-object p2, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p2}, Le/g/a/a/d;->c()F

    move-result p2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p4, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p4}, Le/g/a/a/d;->d()F

    move-result p4

    sub-float/2addr p4, p3

    float-to-int p4, p4

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->c()F

    move-result v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v1}, Le/g/a/a/d;->d()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int p3, v1

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Le/g/a/a/d;->l(FF)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/rey/material/widget/a;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, p1}, Le/g/a/a/d;->o(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, p1}, Le/g/a/a/d;->p(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setElevation(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, p1, p1}, Le/g/a/a/d;->s(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/rey/material/widget/FloatingActionButton;->g:Lcom/rey/material/widget/FloatingActionButton$b;

    invoke-virtual {p2, p1}, Lcom/rey/material/widget/FloatingActionButton$b;->b(Landroid/graphics/drawable/Drawable;)Z

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p2, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    iget p2, p0, Lcom/rey/material/widget/FloatingActionButton;->h:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0}, Le/g/a/a/d;->c()F

    move-result v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iget-object v1, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v1}, Le/g/a/a/d;->d()F

    move-result v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v2}, Le/g/a/a/d;->c()F

    move-result v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v3}, Le/g/a/a/d;->d()F

    move-result v3

    add-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLineMorphingState(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/g/a/a/c;

    if-eqz v1, :cond_0

    check-cast v0, Le/g/a/a/c;

    invoke-virtual {v0, p1, p2}, Le/g/a/a/c;->g(IZ)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/FloatingActionButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->f(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    invoke-virtual {v0, p1}, Le/g/a/a/d;->r(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->b:Le/g/a/a/d;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/rey/material/widget/FloatingActionButton;->d:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
