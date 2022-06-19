.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    const/4 v2, 0x0

    .line 118
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    const v3, 0x800033

    .line 122
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 162
    sget-object v3, Landroidx/appcompat/a$j;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/ab;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ab;

    move-result-object v3

    .line 164
    sget-object v6, Landroidx/appcompat/a$j;->LinearLayoutCompat:[I

    .line 2076
    iget-object v8, v3, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 164
    invoke-static/range {v4 .. v9}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 168
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 173
    :cond_0
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 178
    :cond_1
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 183
    :cond_2
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_weightSum:I

    .line 2166
    iget-object p2, v3, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 183
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    .line 185
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 186
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 188
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    .line 190
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    .line 192
    sget p1, Landroidx/appcompat/a$j;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    .line 2252
    iget-object p1, v3, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(II)V
    .locals 10

    .line 905
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 13515
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 909
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 912
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 915
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 916
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 919
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 920
    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, p2

    .line 373
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 0

    .line 1387
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method private b(II)V
    .locals 36

    move-object/from16 v6, p0

    move/from16 v7, p2

    const/4 v8, 0x0

    .line 938
    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 13528
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v9

    .line 948
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 949
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 954
    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    const/4 v12, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    if-nez v0, :cond_1

    :cond_0
    new-array v0, v12, [I

    .line 955
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    new-array v0, v12, [I

    .line 956
    iput-object v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 959
    :cond_1
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 960
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    const/4 v15, 0x3

    const/4 v5, -0x1

    .line 962
    aput v5, v13, v15

    const/16 v16, 0x2

    aput v5, v13, v16

    const/16 v17, 0x1

    aput v5, v13, v17

    aput v5, v13, v8

    .line 963
    aput v5, v14, v15

    aput v5, v14, v16

    aput v5, v14, v17

    aput v5, v14, v8

    .line 965
    iget-boolean v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 966
    iget-boolean v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v10, v2, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    :goto_0
    const/16 v19, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v9, :cond_15

    .line 14515
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    .line 977
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v2, v8

    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v35, v3

    move/from16 v28, v4

    goto/16 :goto_f

    .line 981
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v5, :cond_14

    .line 986
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 987
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v5, v8

    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 991
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 993
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    add-float v31, v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v10, v5, :cond_7

    .line 995
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_7

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v0, v0, v19

    if-lez v0, :cond_7

    if-eqz v18, :cond_5

    .line 1000
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v32, v1

    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v1

    add-int/2addr v0, v5

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_2

    :cond_5
    move/from16 v32, v1

    .line 1002
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1003
    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_2
    if-eqz v4, :cond_6

    const/4 v0, 0x0

    .line 1013
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1014
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    const/16 v27, -0x2

    goto/16 :goto_6

    :cond_6
    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v28, v4

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v22, 0x1

    const/16 v27, -0x2

    goto/16 :goto_7

    :cond_7
    move/from16 v32, v1

    .line 1021
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_8

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v0, v0, v19

    if-lez v0, :cond_8

    const/4 v5, -0x2

    .line 1027
    iput v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    const/4 v5, -0x2

    const/high16 v1, -0x80000000

    :goto_3
    cmpl-float v0, v31, v19

    if-nez v0, :cond_9

    .line 1035
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v28, v0

    goto :goto_4

    :cond_9
    const/16 v28, 0x0

    :goto_4
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v34, v1

    move-object v1, v2

    move-object/from16 v30, v2

    move/from16 v2, p1

    move/from16 v35, v3

    move/from16 v3, v28

    move/from16 v28, v4

    move/from16 v4, p2

    const/high16 v7, -0x80000000

    const/16 v27, -0x2

    move/from16 v5, v33

    .line 1034
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    move/from16 v0, v34

    if-eq v0, v7, :cond_a

    .line 1039
    iput v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1042
    :cond_a
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v18, :cond_b

    .line 1044
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1045
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 1047
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v2, v1, v0

    .line 1048
    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_5
    if-eqz v35, :cond_c

    .line 1053
    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_c
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    :goto_7
    if-eq v11, v1, :cond_d

    .line 1058
    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    const/16 v26, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    .line 1066
    :goto_8
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1067
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1068
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v5, v24

    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v28, :cond_f

    .line 1071
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_f

    .line 1075
    iget v7, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    if-gez v7, :cond_e

    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    goto :goto_9

    :cond_e
    iget v7, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    :goto_9
    and-int/lit8 v7, v7, 0x70

    const/16 v23, 0x4

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, -0x2

    shr-int/lit8 v7, v7, 0x1

    .line 1080
    aget v1, v13, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v13, v7

    .line 1081
    aget v1, v14, v7

    sub-int v5, v3, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v7

    .line 1085
    :cond_f
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v25, :cond_10

    .line 1087
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    .line 1088
    :goto_a
    iget v7, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v7, v7, v19

    if-lez v7, :cond_12

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v2, v3

    :goto_b
    move/from16 v8, v21

    .line 1093
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v21, v0

    move v15, v1

    move/from16 v24, v4

    move/from16 v25, v5

    goto :goto_d

    :cond_12
    move/from16 v8, v21

    if-eqz v0, :cond_13

    goto :goto_c

    :cond_13
    move v2, v3

    :goto_c
    move/from16 v3, v20

    .line 1096
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v20, v0

    move v15, v1

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v21, v8

    :goto_d
    move/from16 v0, v31

    goto :goto_e

    :cond_14
    move/from16 v32, v1

    move/from16 v35, v3

    move/from16 v28, v4

    move/from16 v3, v20

    move/from16 v8, v21

    move/from16 v5, v24

    :goto_e
    add-int/lit8 v1, v32, 0x0

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p2

    move/from16 v4, v28

    move/from16 v3, v35

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_15
    move/from16 v35, v3

    move/from16 v28, v4

    move/from16 v3, v20

    move/from16 v8, v21

    const/high16 v7, -0x80000000

    const/16 v27, -0x2

    .line 1103
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v1, :cond_16

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1104
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v1, v2

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1109
    :cond_16
    aget v1, v13, v17

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    const/4 v1, 0x0

    aget v4, v13, v1

    if-ne v4, v2, :cond_17

    aget v1, v13, v16

    if-ne v1, v2, :cond_17

    const/4 v1, 0x3

    aget v4, v13, v1

    if-eq v4, v2, :cond_18

    goto :goto_10

    :cond_17
    const/4 v1, 0x3

    .line 1113
    :goto_10
    aget v2, v13, v1

    const/4 v4, 0x0

    aget v5, v13, v4

    aget v7, v13, v17

    aget v4, v13, v16

    .line 1115
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1114
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1113
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1116
    aget v4, v14, v1

    const/4 v1, 0x0

    aget v5, v14, v1

    aget v1, v14, v17

    aget v7, v14, v16

    .line 1118
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1117
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1116
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 1119
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_18
    if-eqz v35, :cond_1d

    const/high16 v1, -0x80000000

    if-eq v10, v1, :cond_19

    if-nez v10, :cond_1d

    :cond_19
    const/4 v1, 0x0

    .line 1124
    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v9, :cond_1d

    .line 15515
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 1130
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v4, v1

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_12

    .line 1134
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_1b

    add-int/lit8 v2, v2, 0x0

    goto :goto_12

    .line 1140
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v18, :cond_1c

    .line 1142
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v12

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v1

    const/4 v7, 0x0

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    .line 1143
    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_12

    :cond_1c
    const/4 v7, 0x0

    .line 1145
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v5, v4, v12

    .line 1146
    iget v7, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v7

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v1

    const/4 v1, 0x0

    add-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_12
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_11

    .line 1153
    :cond_1d
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1158
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v7, p1

    const/4 v2, 0x0

    .line 1161
    invoke-static {v1, v7, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 1167
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v4

    if-nez v22, :cond_21

    if-eqz v2, :cond_1e

    cmpl-float v5, v0, v19

    if-lez v5, :cond_1e

    goto :goto_14

    .line 1279
    :cond_1e
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v35, :cond_20

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_20

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v9, :cond_20

    .line 17515
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1287
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_1f

    .line 1292
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1294
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v5, v5, v19

    if-lez v5, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    .line 1297
    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1298
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1296
    invoke-virtual {v3, v8, v10}, Landroid/view/View;->measure(II)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_20
    move/from16 v2, p2

    move/from16 v29, v1

    move/from16 v22, v9

    move/from16 v12, v24

    const/4 v4, 0x0

    goto/16 :goto_23

    .line 1169
    :cond_21
    :goto_14
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v8, v5, v19

    if-lez v8, :cond_22

    move v0, v5

    :cond_22
    const/4 v5, 0x3

    const/4 v8, -0x1

    .line 1171
    aput v8, v13, v5

    aput v8, v13, v16

    aput v8, v13, v17

    const/4 v12, 0x0

    aput v8, v13, v12

    .line 1172
    aput v8, v14, v5

    aput v8, v14, v16

    aput v8, v14, v17

    aput v8, v14, v12

    .line 1175
    iput v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v12, v24

    const/4 v5, -0x1

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v9, :cond_30

    .line 16515
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 1180
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v7, 0x8

    if-eq v4, v7, :cond_2f

    .line 1185
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1187
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v22, v7, v19

    if-lez v22, :cond_27

    move/from16 v22, v9

    int-to-float v9, v2

    mul-float v9, v9, v7

    div-float/2addr v9, v0

    float-to-int v9, v9

    sub-float/2addr v0, v7

    sub-int/2addr v2, v9

    .line 1196
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v24

    add-int v7, v7, v24

    move/from16 v24, v0

    iget v0, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v0

    iget v0, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v0

    iget v0, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v1, -0x1

    move/from16 v2, p2

    .line 1194
    invoke-static {v2, v7, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1201
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v7, :cond_25

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_23

    goto :goto_17

    :cond_23
    if-lez v9, :cond_24

    move v7, v9

    goto :goto_18

    :cond_24
    :goto_16
    const/4 v7, 0x0

    goto :goto_18

    .line 1204
    :cond_25
    :goto_17
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v9

    if-gez v7, :cond_26

    goto :goto_16

    :cond_26
    :goto_18
    const/high16 v9, 0x40000000    # 2.0f

    .line 1214
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v8, v7, v0}, Landroid/view/View;->measure(II)V

    .line 1221
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    const/high16 v7, -0x1000000

    and-int/2addr v0, v7

    .line 1220
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v0, v24

    goto :goto_19

    :cond_27
    move/from16 v29, v1

    move v7, v2

    move/from16 v22, v9

    const/4 v1, -0x1

    move/from16 v2, p2

    move/from16 v30, v7

    :goto_19
    if-eqz v18, :cond_28

    .line 1225
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    const/4 v1, 0x0

    add-int/2addr v9, v1

    add-int/2addr v7, v9

    .line 1226
    iput v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    .line 1228
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1229
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v7

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    const/4 v1, 0x0

    add-int/2addr v9, v1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_1a
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_29

    .line 1233
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_29

    const/4 v1, 0x1

    goto :goto_1b

    :cond_29
    const/4 v1, 0x0

    .line 1236
    :goto_1b
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    .line 1237
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 1238
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v1, :cond_2a

    goto :goto_1c

    :cond_2a
    move v7, v9

    .line 1239
    :goto_1c
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v25, :cond_2b

    .line 1242
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v3, v7, :cond_2c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v7, -0x1

    :cond_2c
    const/4 v3, 0x0

    :goto_1d
    if-eqz v28, :cond_2e

    .line 1245
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v8

    if-eq v8, v7, :cond_2e

    .line 1248
    iget v7, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    if-gez v7, :cond_2d

    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    goto :goto_1e

    :cond_2d
    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    :goto_1e
    and-int/lit8 v4, v4, 0x70

    const/16 v23, 0x4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, -0x2

    shr-int/lit8 v4, v4, 0x1

    .line 1253
    aget v7, v13, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v13, v4

    .line 1254
    aget v7, v14, v4

    sub-int/2addr v9, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v14, v4

    goto :goto_1f

    :cond_2e
    const/16 v23, 0x4

    :goto_1f
    move/from16 v25, v3

    move v3, v1

    goto :goto_20

    :cond_2f
    move/from16 v29, v1

    move v7, v2

    move/from16 v22, v9

    const/16 v23, 0x4

    move/from16 v2, p2

    move/from16 v30, v7

    :goto_20
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p1

    move/from16 v9, v22

    move/from16 v1, v29

    move/from16 v2, v30

    const/4 v8, -0x1

    goto/16 :goto_15

    :cond_30
    move/from16 v2, p2

    move/from16 v29, v1

    move/from16 v22, v9

    .line 1261
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 1266
    aget v0, v13, v17

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    const/4 v0, 0x0

    aget v4, v13, v0

    if-ne v4, v1, :cond_32

    aget v0, v13, v16

    if-ne v0, v1, :cond_32

    const/4 v0, 0x3

    aget v4, v13, v0

    if-eq v4, v1, :cond_31

    goto :goto_21

    :cond_31
    move v15, v5

    const/4 v4, 0x0

    goto :goto_22

    :cond_32
    const/4 v0, 0x3

    .line 1270
    :goto_21
    aget v1, v13, v0

    const/4 v4, 0x0

    aget v7, v13, v4

    aget v8, v13, v17

    aget v9, v13, v16

    .line 1272
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1271
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1270
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1273
    aget v0, v14, v0

    aget v7, v14, v4

    aget v8, v14, v17

    aget v9, v14, v16

    .line 1275
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1274
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1273
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1276
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    :goto_22
    move v0, v3

    :goto_23
    if-nez v25, :cond_33

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v11, v1, :cond_33

    goto :goto_24

    :cond_33
    move v0, v15

    .line 1309
    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v12

    or-int v1, v29, v1

    shl-int/lit8 v3, v12, 0x10

    .line 1315
    invoke-static {v0, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1314
    invoke-virtual {v6, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v26, :cond_35

    .line 18327
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move/from16 v9, v22

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v9, :cond_35

    .line 18515
    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 18331
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_34

    .line 18332
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 18334
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_34

    .line 18337
    iget v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 18338
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    const/4 v13, -0x1

    move/from16 v2, p1

    move v4, v7

    const/16 v14, 0x8

    move v5, v12

    .line 18341
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 18342
    iput v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_26

    :cond_34
    const/4 v13, -0x1

    const/16 v14, 0x8

    :goto_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method private b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int/2addr v2, p2

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    sub-int/2addr v3, v4

    .line 379
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static b(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 1655
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .line 1731
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 577
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 578
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 579
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 580
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 583
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 1754
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1761
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method protected d()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1744
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1747
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    return v0
.end method

.method public final g()I
    .locals 1

    .line 1710
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->d()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getBaseline()I
    .locals 5

    .line 433
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-gez v0, :cond_0

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-le v0, v1, :cond_6

    .line 442
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 446
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    if-nez v0, :cond_1

    return v2

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    .line 464
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 465
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 473
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 480
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 481
    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 438
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 293
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 2528
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3515
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2309
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 2310
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2311
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2312
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v4, v5

    .line 2313
    invoke-direct {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2318
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sub-int/2addr v0, v3

    .line 4515
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2322
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 2324
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 2325
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 2327
    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/graphics/Canvas;I)V

    :cond_4
    return-void

    .line 5528
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    .line 5333
    invoke-static {p0}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v4

    :goto_2
    if-ge v2, v0, :cond_8

    .line 6515
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5337
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 5338
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5339
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v4, :cond_6

    .line 5342
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 5344
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    sub-int/2addr v5, v6

    .line 5346
    :goto_3
    invoke-direct {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5351
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    sub-int/2addr v0, v3

    .line 7515
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    .line 5356
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_5

    .line 5358
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    goto :goto_4

    .line 5361
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v4, :cond_b

    .line 5363
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    :goto_4
    sub-int/2addr v0, v1

    goto :goto_5

    .line 5365
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 5368
    :goto_5
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/graphics/Canvas;I)V

    :cond_c
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1767
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1773
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 24

    move-object/from16 v0, p0

    .line 1416
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/16 v2, 0x8

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/4 v5, 0x5

    const v6, 0x800007

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v1, v8, :cond_9

    .line 19436
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    sub-int v10, p4, p2

    .line 19443
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v11

    sub-int v11, v10, v11

    sub-int/2addr v10, v1

    .line 19446
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v12

    sub-int/2addr v10, v12

    .line 19528
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v12

    .line 19450
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v14, v13, 0x70

    and-int/2addr v6, v13

    if-eq v14, v4, :cond_1

    if-eq v14, v3, :cond_0

    .line 19466
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    goto :goto_0

    .line 19456
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    add-int v3, v3, p5

    sub-int v3, v3, p3

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 19461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v4, v13

    div-int/2addr v4, v7

    add-int/2addr v3, v4

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_8

    .line 20515
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_2

    add-int/lit8 v3, v3, 0x0

    goto :goto_4

    .line 19474
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v2, :cond_7

    .line 19475
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 19476
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 19479
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 19481
    iget v9, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    if-gez v9, :cond_3

    move v9, v6

    .line 19485
    :cond_3
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v7

    .line 19486
    invoke-static {v9, v7}, Landroidx/core/view/e;->a(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    if-eq v7, v8, :cond_5

    if-eq v7, v5, :cond_4

    .line 19500
    iget v7, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    goto :goto_3

    :cond_4
    sub-int v7, v11, v14

    .line 19495
    iget v9, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_5
    sub-int v7, v10, v14

    const/4 v9, 0x2

    .line 19490
    div-int/2addr v7, v9

    add-int/2addr v7, v1

    iget v9, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v7, v9

    .line 19504
    :goto_3
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 19505
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v9

    .line 19508
    :cond_6
    iget v9, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v9

    add-int/lit8 v9, v3, 0x0

    .line 19509
    invoke-static {v13, v7, v9, v14, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;IIII)V

    .line 19511
    iget v2, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v2

    const/4 v2, 0x0

    add-int/2addr v15, v2

    add-int/2addr v3, v15

    add-int/lit8 v4, v4, 0x0

    :cond_7
    :goto_4
    add-int/2addr v4, v8

    const/16 v2, 0x8

    const/4 v7, 0x2

    goto :goto_1

    :cond_8
    return-void

    .line 20531
    :cond_9
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ah;->a(Landroid/view/View;)Z

    move-result v1

    .line 20532
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    sub-int v7, p5, p3

    .line 20539
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v9

    sub-int v9, v7, v9

    sub-int/2addr v7, v2

    .line 20542
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v7, v10

    .line 21528
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v10

    .line 20546
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v6, v11

    and-int/lit8 v11, v11, 0x70

    .line 20549
    iget-boolean v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    .line 20551
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->i:[I

    .line 20552
    iget-object v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->j:[I

    .line 20554
    invoke-static/range {p0 .. p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v15

    .line 20555
    invoke-static {v6, v15}, Landroidx/core/view/e;->a(II)I

    move-result v6

    if-eq v6, v8, :cond_b

    if-eq v6, v5, :cond_a

    .line 20568
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    goto :goto_5

    .line 20558
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    add-int v5, v5, p4

    sub-int v5, v5, p2

    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v5, v6

    goto :goto_5

    .line 20563
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    sub-int v6, p4, p2

    iget v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v6, v15

    const/4 v15, 0x2

    div-int/2addr v6, v15

    add-int/2addr v5, v6

    :goto_5
    if-eqz v1, :cond_c

    add-int/lit8 v1, v10, -0x1

    const/4 v15, -0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const/4 v15, 0x1

    :goto_6
    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v10, :cond_17

    mul-int v18, v15, v5

    add-int v8, v1, v18

    .line 22515
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_d

    add-int/lit8 v17, v17, 0x0

    move/from16 p3, v1

    move/from16 p5, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v12, -0x1

    goto/16 :goto_b

    .line 20586
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_16

    .line 20587
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 20588
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 20592
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 p3, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move/from16 p5, v10

    if-eqz v12, :cond_e

    .line 20594
    iget v10, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v20, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_f

    .line 20595
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v11

    goto :goto_8

    :cond_e
    move/from16 v20, v11

    :cond_f
    const/4 v11, -0x1

    .line 20598
    :goto_8
    iget v10, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->h:I

    if-gez v10, :cond_10

    move/from16 v10, v20

    :cond_10
    and-int/lit8 v10, v10, 0x70

    move/from16 v21, v12

    const/16 v12, 0x10

    if-eq v10, v12, :cond_13

    const/16 v12, 0x30

    if-eq v10, v12, :cond_12

    const/16 v12, 0x50

    if-eq v10, v12, :cond_11

    move v10, v2

    const/4 v12, -0x1

    goto :goto_9

    :cond_11
    sub-int v10, v9, v6

    .line 20628
    iget v12, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_14

    .line 20630
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v22, v22, v11

    const/4 v11, 0x2

    .line 20631
    aget v23, v14, v11

    sub-int v23, v23, v22

    sub-int v10, v10, v23

    goto :goto_9

    :cond_12
    const/4 v12, -0x1

    .line 20605
    iget v10, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v2

    if-eq v11, v12, :cond_14

    const/16 v19, 0x1

    .line 20607
    aget v22, v13, v19

    sub-int v22, v22, v11

    add-int v10, v10, v22

    goto :goto_9

    :cond_13
    const/4 v12, -0x1

    sub-int v10, v7, v6

    const/4 v11, 0x2

    .line 20623
    div-int/2addr v10, v11

    add-int/2addr v10, v2

    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    .line 20639
    :cond_14
    :goto_9
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 20640
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    add-int v17, v17, v8

    .line 20643
    :cond_15
    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v17, v17, v8

    add-int/lit8 v8, v17, 0x0

    .line 20644
    invoke-static {v3, v8, v10, v4, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(Landroid/view/View;IIII)V

    .line 20646
    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    const/4 v1, 0x0

    add-int/2addr v4, v1

    add-int v17, v17, v4

    add-int/lit8 v5, v5, 0x0

    goto :goto_a

    :cond_16
    move/from16 p3, v1

    move/from16 p5, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/4 v1, 0x0

    const/4 v12, -0x1

    :goto_a
    const/4 v3, 0x1

    :goto_b
    add-int/2addr v5, v3

    move/from16 v1, p3

    move/from16 v10, p5

    move/from16 v11, v20

    move/from16 v12, v21

    const/16 v3, 0x50

    const/16 v4, 0x10

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 30

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 560
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2b

    const/4 v10, 0x0

    .line 7605
    iput v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 8528
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v11

    .line 7615
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 7616
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 7621
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    .line 7622
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    const/16 v16, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v5, v11, :cond_12

    .line 9515
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    if-nez v23, :cond_0

    .line 7631
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v3, v10

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v21, v11

    move/from16 v3, v20

    const/4 v7, 0x1

    move/from16 v20, v13

    goto/16 :goto_b

    .line 7635
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v3, 0x8

    if-eq v10, v3, :cond_11

    .line 7640
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7641
    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v3, v10

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 7644
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 7646
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    add-float v22, v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v13, v3, :cond_2

    .line 7648
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_2

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_2

    .line 7652
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 7653
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v0

    move/from16 v24, v1

    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v21, v11

    move/from16 v8, v20

    move/from16 v27, v24

    const/16 v17, 0x1

    move/from16 v20, v13

    goto/16 :goto_3

    :cond_2
    move/from16 v24, v1

    .line 7658
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_3

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    const/4 v0, -0x2

    .line 7664
    iput v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/high16 v3, -0x80000000

    :goto_1
    const/16 v25, 0x0

    cmpl-float v0, v22, v16

    if-nez v0, :cond_4

    .line 7673
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v26, v0

    goto :goto_2

    :cond_4
    const/16 v26, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v27, v24

    move-object/from16 v1, v23

    move v7, v2

    move/from16 v2, p1

    move/from16 v21, v11

    move/from16 v8, v20

    const/high16 v11, -0x80000000

    move/from16 v20, v13

    move v13, v3

    move/from16 v3, v25

    move/from16 v28, v4

    move/from16 v4, p2

    move/from16 v29, v5

    move/from16 v5, v26

    .line 7671
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(Landroid/view/View;IIII)V

    if-eq v13, v11, :cond_5

    .line 7676
    iput v13, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 7679
    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 7680
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v2, v1, v0

    .line 7681
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-eqz v15, :cond_6

    .line 7685
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v7

    :goto_3
    if-ltz v14, :cond_7

    move/from16 v1, v29

    add-int/lit8 v5, v1, 0x1

    if-ne v14, v5, :cond_8

    .line 7694
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->c:I

    goto :goto_4

    :cond_7
    move/from16 v1, v29

    :cond_8
    :goto_4
    if-ge v1, v14, :cond_a

    .line 7700
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_9

    goto :goto_5

    .line 7701
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v12, v3, :cond_b

    .line 7708
    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, -0x1

    :cond_c
    const/4 v0, 0x0

    .line 7717
    :goto_6
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 7718
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    move/from16 v13, v27

    .line 7719
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7721
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    .line 7720
    invoke-static {v9, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    if-eqz v18, :cond_d

    .line 7723
    iget v11, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v11, v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    .line 7724
    :goto_7
    iget v10, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_f

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move v3, v5

    .line 7729
    :goto_8
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    move/from16 v18, v4

    move/from16 v0, v22

    move/from16 v4, v28

    goto :goto_a

    :cond_f
    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move v3, v5

    :goto_9
    move/from16 v10, v28

    .line 7732
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v18, v4

    move v3, v8

    move v4, v0

    move/from16 v0, v22

    goto :goto_a

    :cond_11
    move v7, v2

    move v10, v4

    move/from16 v21, v11

    move/from16 v8, v20

    move/from16 v20, v13

    move v13, v1

    move v1, v5

    move v3, v8

    move v7, v13

    :goto_a
    add-int/lit8 v5, v1, 0x0

    move v1, v7

    const/4 v7, 0x1

    :goto_b
    add-int/2addr v5, v7

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v13, v20

    move/from16 v11, v21

    const/4 v10, 0x0

    move/from16 v20, v3

    goto/16 :goto_0

    :cond_12
    move v7, v2

    move v10, v4

    move/from16 v21, v11

    move/from16 v8, v20

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/high16 v11, -0x80000000

    move/from16 v20, v13

    move v13, v1

    .line 7739
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    if-lez v1, :cond_13

    move/from16 v1, v21

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 7740
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    add-int/2addr v2, v5

    iput v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_c

    :cond_13
    move/from16 v1, v21

    :cond_14
    :goto_c
    move/from16 v2, v20

    if-eqz v15, :cond_18

    if-eq v2, v11, :cond_15

    if-nez v2, :cond_18

    :cond_15
    const/4 v5, 0x0

    .line 7745
    iput v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v1, :cond_18

    .line 10515
    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_16

    .line 7751
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int/2addr v14, v5

    iput v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    goto :goto_e

    .line 7755
    :cond_16
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_17

    add-int/lit8 v11, v11, 0x0

    goto :goto_e

    .line 7761
    :cond_17
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 7763
    iget v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    add-int v14, v5, v7

    .line 7764
    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v14, v3

    iget v3, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v3

    const/4 v3, 0x0

    add-int/2addr v14, v3

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    :goto_e
    const/4 v3, 0x1

    add-int/2addr v11, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_d

    :cond_18
    const/4 v3, 0x1

    .line 7770
    iget v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v11

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    iput v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 7775
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, p2

    const/4 v11, 0x0

    .line 7778
    invoke-static {v4, v5, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v11, 0xffffff

    and-int/2addr v11, v4

    .line 7784
    iget v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    sub-int/2addr v11, v14

    if-nez v17, :cond_1c

    if-eqz v11, :cond_19

    cmpl-float v14, v0, v16

    if-lez v14, :cond_19

    goto :goto_10

    .line 7857
    :cond_19
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1b

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1b

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v1, :cond_1b

    .line 12515
    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 7867
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-eq v3, v8, :cond_1a

    .line 7872
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 7874
    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v3, v3, v16

    if-lez v3, :cond_1a

    .line 7877
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 7879
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 7876
    invoke-virtual {v2, v3, v11}, Landroid/view/View;->measure(II)V

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_1b
    move/from16 v11, p1

    goto/16 :goto_1a

    .line 7786
    :cond_1c
    :goto_10
    iget v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    cmpl-float v8, v7, v16

    if-lez v8, :cond_1d

    move v0, v7

    :cond_1d
    const/4 v7, 0x0

    .line 7788
    iput v7, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v1, :cond_28

    .line 11515
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7793
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_27

    .line 7797
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 7799
    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->g:F

    cmpl-float v17, v3, v16

    if-lez v17, :cond_22

    int-to-float v15, v11

    mul-float v15, v15, v3

    div-float/2addr v15, v0

    float-to-int v15, v15

    sub-float/2addr v0, v3

    sub-int/2addr v11, v15

    .line 7807
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v17

    add-int v3, v3, v17

    move/from16 v17, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v20, v11

    move/from16 v11, p1

    .line 7806
    invoke-static {v11, v3, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 7812
    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_20

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_1e

    goto :goto_13

    :cond_1e
    if-lez v15, :cond_1f

    move v3, v15

    goto :goto_14

    :cond_1f
    :goto_12
    const/4 v3, 0x0

    goto :goto_14

    .line 7815
    :cond_20
    :goto_13
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v15

    if-gez v3, :cond_21

    goto :goto_12

    :cond_21
    :goto_14
    const/high16 v15, 0x40000000    # 2.0f

    .line 7826
    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 7825
    invoke-virtual {v8, v0, v3}, Landroid/view/View;->measure(II)V

    .line 7832
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    and-int/lit16 v0, v0, -0x100

    .line 7831
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v0, v17

    move/from16 v3, v20

    goto :goto_15

    :cond_22
    move v3, v11

    move/from16 v11, p1

    .line 7836
    :goto_15
    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    .line 7837
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v15

    .line 7838
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v20, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_23

    .line 7840
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v21, v2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_24

    const/4 v0, 0x1

    goto :goto_16

    :cond_23
    move/from16 v21, v2

    const/4 v2, -0x1

    :cond_24
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_25

    goto :goto_17

    :cond_25
    move/from16 v15, v20

    .line 7843
    :goto_17
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v18, :cond_26

    .line 7846
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v10, v2, :cond_26

    const/4 v10, 0x1

    goto :goto_18

    :cond_26
    const/4 v10, 0x0

    .line 7848
    :goto_18
    iget v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    .line 7849
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v15

    iget v2, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v8, v2

    iget v2, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v2

    const/4 v2, 0x0

    add-int/2addr v8, v2

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move/from16 v18, v10

    move v10, v0

    move/from16 v0, v17

    goto :goto_19

    :cond_27
    move/from16 v21, v2

    move v3, v11

    const/4 v2, 0x0

    move/from16 v11, p1

    :goto_19
    add-int/lit8 v7, v7, 0x1

    move v11, v3

    move/from16 v2, v21

    const/4 v3, 0x1

    goto/16 :goto_11

    :cond_28
    move/from16 v11, p1

    .line 7854
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->f:I

    move v0, v10

    :goto_1a
    if-nez v18, :cond_29

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_29

    goto :goto_1b

    :cond_29
    move v0, v13

    .line 7890
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 7893
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7895
    invoke-static {v0, v11, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v6, v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v19, :cond_2a

    .line 7899
    invoke-direct {v6, v1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->a(II)V

    :cond_2a
    return-void

    :cond_2b
    move v11, v7

    move v5, v8

    .line 563
    invoke-direct/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->b(II)V

    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 498
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 502
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->b:I

    return-void

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 245
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    goto :goto_0

    .line 250
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->l:I

    .line 251
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 253
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 267
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1689
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1698
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1699
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1715
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1716
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1664
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    if-eq v0, p1, :cond_0

    .line 1665
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->d:I

    .line 1666
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 205
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    if-eq p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 208
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    .line 1723
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1724
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->e:I

    .line 1725
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 555
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
