.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g$a;

.field b:Landroidx/appcompat/widget/ActionMenuView$e;

.field private c:Landroidx/appcompat/view/menu/g;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Landroidx/appcompat/widget/c;

.field private h:Landroidx/appcompat/view/menu/m$a;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 83
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    .line 84
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    .line 85
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    .line 86
    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    .line 87
    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 406
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 408
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 409
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 411
    instance-of v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 413
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 416
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 417
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 419
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 422
    div-int v1, v7, p1

    .line 423
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 424
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 427
    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 428
    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 430
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 431
    mul-int v0, v1, p1

    .line 432
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 434
    return v1

    .line 411
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 413
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private c(II)V
    .locals 32

    .prologue
    .line 178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 179
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 180
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    .line 185
    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    .line 188
    sub-int v25, v6, v7

    .line 191
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int v9, v25, v6

    .line 192
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    rem-int v6, v25, v6

    .line 194
    if-nez v9, :cond_0

    .line 196
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    .line 203
    const/16 v16, 0x0

    .line 204
    const/4 v15, 0x0

    .line 205
    const/4 v10, 0x0

    .line 206
    const/4 v7, 0x0

    .line 207
    const/4 v11, 0x0

    .line 210
    const-wide/16 v12, 0x0

    .line 212
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v27

    .line 213
    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 214
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 215
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-ne v6, v14, :cond_1

    move v6, v11

    move v14, v7

    move/from16 v17, v9

    .line 213
    :goto_2
    add-int/lit8 v8, v18, 0x1

    move/from16 v18, v8

    move v11, v6

    move v7, v14

    move/from16 v9, v17

    goto :goto_1

    .line 217
    :cond_1
    instance-of v0, v8, Landroidx/appcompat/view/menu/ActionMenuItemView;

    move/from16 v17, v0

    .line 218
    add-int/lit8 v14, v7, 0x1

    .line 220
    if-eqz v17, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 227
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 228
    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 229
    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 230
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 231
    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 232
    const/4 v7, 0x0

    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    .line 233
    if-eqz v17, :cond_3

    move-object v7, v8

    check-cast v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 236
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    .line 238
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v21

    .line 241
    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 242
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-eqz v7, :cond_23

    add-int/lit8 v7, v10, 0x1

    .line 243
    :goto_5
    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    .line 245
    :goto_6
    sub-int v17, v9, v21

    .line 246
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 247
    const/4 v8, 0x1

    move/from16 v0, v21

    if-ne v0, v8, :cond_21

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move-wide v12, v8

    move v10, v7

    move/from16 v16, v11

    goto/16 :goto_2

    .line 233
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    move v7, v9

    .line 236
    goto :goto_4

    .line 252
    :cond_5
    if-eqz v11, :cond_6

    const/4 v6, 0x2

    if-ne v7, v6, :cond_6

    const/4 v6, 0x1

    move v8, v6

    .line 257
    :goto_7
    const/16 v17, 0x0

    move-wide/from16 v18, v12

    move/from16 v21, v9

    .line 258
    :goto_8
    if-lez v10, :cond_20

    if-lez v21, :cond_20

    .line 259
    const v14, 0x7fffffff

    .line 260
    const-wide/16 v12, 0x0

    .line 261
    const/4 v9, 0x0

    .line 262
    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 263
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 264
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 267
    iget-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    move/from16 v28, v0

    if-nez v28, :cond_7

    move v6, v9

    .line 262
    :goto_a
    add-int/lit8 v22, v22, 0x1

    move v9, v6

    goto :goto_9

    .line 252
    :cond_6
    const/4 v6, 0x0

    move v8, v6

    goto :goto_7

    .line 270
    :cond_7
    iget v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_8

    .line 271
    iget v9, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 272
    const-wide/16 v12, 0x1

    shl-long v12, v12, v22

    .line 273
    const/4 v6, 0x1

    move v14, v9

    goto :goto_a

    .line 274
    :cond_8
    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v6, v14, :cond_1f

    .line 275
    const-wide/16 v28, 0x1

    shl-long v28, v28, v22

    or-long v12, v12, v28

    .line 276
    add-int/lit8 v6, v9, 0x1

    goto :goto_a

    .line 281
    :cond_9
    or-long v18, v18, v12

    .line 283
    move/from16 v0, v21

    if-le v9, v0, :cond_c

    move-wide/from16 v12, v18

    .line 312
    :goto_b
    if-nez v11, :cond_10

    const/4 v6, 0x1

    if-ne v7, v6, :cond_10

    const/4 v6, 0x1

    .line 313
    :goto_c
    if-lez v21, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v21

    if-lt v0, v7, :cond_a

    if-nez v6, :cond_a

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    .line 315
    :cond_a
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    .line 317
    if-nez v6, :cond_1d

    .line 319
    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_b

    .line 320
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 321
    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v6, :cond_b

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    .line 323
    :cond_b
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1d

    .line 324
    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 325
    iget-boolean v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v6, :cond_1d

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    .line 329
    :goto_d
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_11

    mul-int v7, v21, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    .line 332
    :goto_e
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v17

    :goto_f
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    .line 333
    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-nez v6, :cond_12

    move v6, v8

    .line 332
    :goto_10
    add-int/lit8 v9, v9, 0x1

    move v8, v6

    goto :goto_f

    .line 286
    :cond_c
    add-int/lit8 v17, v14, 0x1

    .line 288
    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v21

    :goto_11
    move/from16 v0, v27

    if-ge v14, v0, :cond_f

    .line 289
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 290
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 291
    const/16 v22, 0x1

    shl-int v22, v22, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v22, v28, v30

    if-nez v22, :cond_d

    .line 293
    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    move/from16 v0, v17

    if-ne v6, v0, :cond_1e

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v18, v18, v28

    move v6, v9

    .line 288
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move v9, v6

    goto :goto_11

    .line 297
    :cond_d
    if-eqz v8, :cond_e

    iget-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_e

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v22, v0

    add-int v22, v22, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_e
    iget v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 302
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 303
    add-int/lit8 v6, v9, -0x1

    goto :goto_12

    .line 306
    :cond_f
    const/16 v17, 0x1

    move/from16 v21, v9

    .line 307
    goto/16 :goto_8

    .line 312
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 329
    :cond_11
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_e

    .line 335
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 336
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 337
    instance-of v10, v10, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    .line 339
    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 340
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 341
    if-nez v9, :cond_13

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v8, :cond_13

    .line 344
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 346
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 347
    :cond_14
    iget-boolean v10, v6, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v10, :cond_15

    .line 348
    iput v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 349
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 350
    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    .line 351
    const/4 v6, 0x1

    goto/16 :goto_10

    .line 356
    :cond_15
    if-eqz v9, :cond_16

    .line 357
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 359
    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    .line 360
    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    :cond_17
    move v6, v8

    goto/16 :goto_10

    :cond_18
    move/from16 v8, v17

    .line 369
    :cond_19
    if-eqz v8, :cond_1b

    .line 370
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 372
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 374
    iget-boolean v9, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v9, :cond_1a

    .line 370
    :goto_14
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    .line 376
    :cond_1a
    iget v9, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int v9, v9, v26

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    add-int/2addr v6, v9

    .line 377
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_14

    .line 382
    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1c

    .line 386
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    :cond_1c
    move/from16 v16, v20

    goto :goto_15

    :cond_1d
    move v6, v7

    goto/16 :goto_d

    :cond_1e
    move v6, v9

    goto/16 :goto_12

    :cond_1f
    move v6, v9

    goto/16 :goto_a

    :cond_20
    move-wide/from16 v12, v18

    goto/16 :goto_b

    :cond_21
    move v10, v7

    move/from16 v16, v11

    goto/16 :goto_2

    :cond_22
    move v6, v11

    goto/16 :goto_6

    :cond_23
    move v7, v10

    goto/16 :goto_5
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 2

    .prologue
    .line 591
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 2

    .prologue
    .line 596
    if-eqz p1, :cond_2

    .line 597
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    .line 600
    :goto_0
    iget v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    if-gtz v1, :cond_0

    .line 601
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    .line 605
    :cond_0
    :goto_1
    return-object v0

    .line 597
    :cond_1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    .line 640
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    .line 673
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g$a;

    .line 674
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Z

    return v0
.end method

.method protected a(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 733
    if-nez p1, :cond_0

    move v0, v2

    .line 745
    :goto_0
    return v0

    .line 736
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 737
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 739
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v3, :cond_1

    .line 740
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionMenuView$a;->d()Z

    move-result v0

    or-int/2addr v2, v0

    .line 742
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 743
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v0}, Landroidx/appcompat/widget/ActionMenuView$a;->c()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/i;)Z
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected b()Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 583
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(II)V

    .line 585
    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    .line 586
    return-object v0
.end method

.method public synthetic b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    .line 617
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    .line 618
    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 610
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    return v0
.end method

.method public d()Landroidx/appcompat/view/menu/g;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 653
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 655
    new-instance v1, Landroidx/appcompat/widget/c;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    .line 656
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->b(Z)V

    .line 657
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 659
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 663
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    return-object v0

    .line 657
    :cond_1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 566
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->h()Z

    .line 726
    :cond_0
    return-void
.end method

.method protected synthetic j()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->a(Z)V

    .line 133
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->g()Z

    .line 135
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->e()Z

    .line 138
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 544
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->i()V

    .line 546
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 439
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-nez v0, :cond_1

    .line 440
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    .line 445
    sub-int v0, p5, p3

    div-int/lit8 v8, v0, 0x2

    .line 446
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v9

    .line 448
    const/4 v5, 0x0

    .line 449
    const/4 v4, 0x0

    .line 450
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    .line 451
    const/4 v1, 0x0

    .line 452
    invoke-static {p0}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;)Z

    move-result v10

    .line 453
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_7

    .line 454
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 455
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    move v2, v3

    .line 453
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v3, v2

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 460
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v2, :cond_5

    .line 461
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 462
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    add-int/2addr v1, v9

    .line 465
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 468
    if-eqz v10, :cond_4

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v0, v2

    .line 470
    add-int v2, v0, v1

    .line 475
    :goto_3
    div-int/lit8 v13, v12, 0x2

    sub-int v13, v8, v13

    .line 476
    add-int/2addr v12, v13

    .line 477
    invoke-virtual {v11, v0, v13, v2, v12}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int v2, v3, v1

    .line 480
    const/4 v0, 0x1

    move v1, v0

    .line 481
    goto :goto_2

    .line 472
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v2, v13

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v2, v0

    .line 473
    sub-int v0, v2, v1

    goto :goto_3

    .line 482
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v11, v0, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v2, v11

    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v2, v0

    .line 483
    add-int v0, v5, v2

    .line 484
    sub-int v2, v3, v2

    .line 485
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 486
    add-int/2addr v0, v9

    .line 488
    :cond_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v0

    goto :goto_2

    .line 492
    :cond_7
    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    if-nez v1, :cond_8

    .line 494
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 497
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    .line 498
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 499
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v8, v4

    .line 500
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 504
    :cond_8
    if-eqz v1, :cond_9

    const/4 v0, 0x0

    :goto_4
    sub-int v0, v4, v0

    .line 505
    const/4 v1, 0x0

    if-lez v0, :cond_a

    div-int v0, v3, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 507
    if-eqz v10, :cond_c

    .line 508
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 509
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v7, :cond_0

    .line 510
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 511
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 512
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_f

    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v5, :cond_b

    move v0, v1

    .line 509
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_6

    .line 504
    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    .line 505
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 516
    :cond_b
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v1, v5

    .line 517
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 518
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 519
    div-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 520
    sub-int v10, v1, v5

    add-int/2addr v6, v9

    invoke-virtual {v4, v10, v9, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 521
    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    goto :goto_7

    .line 524
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 525
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v7, :cond_0

    .line 526
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 528
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_e

    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v5, :cond_d

    move v0, v1

    .line 525
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_8

    .line 532
    :cond_d
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v1, v5

    .line 533
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 534
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 535
    div-int/lit8 v9, v6, 0x2

    sub-int v9, v8, v9

    .line 536
    add-int v10, v1, v5

    add-int/2addr v6, v9

    invoke-virtual {v4, v1, v9, v10, v6}, Landroid/view/View;->layout(IIII)V

    .line 537
    iget v0, v0, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_9

    :cond_e
    move v0, v1

    goto :goto_9

    :cond_f
    move v0, v1

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 150
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eq v3, v0, :cond_0

    .line 151
    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 156
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 157
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    if-eq v0, v3, :cond_1

    .line 158
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 159
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v3

    .line 163
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v0, :cond_3

    if-lez v3, :cond_3

    .line 164
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->c(II)V

    .line 174
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 148
    goto :goto_0

    :cond_3
    move v1, v2

    .line 167
    :goto_2
    if-ge v1, v3, :cond_4

    .line 168
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 170
    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 172
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->c(Z)V

    .line 757
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 142
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->a(Landroid/graphics/drawable/Drawable;)V

    .line 556
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .prologue
    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Z

    .line 579
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    if-eq v0, p1, :cond_0

    .line 98
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    .line 99
    if-nez p1, :cond_1

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroidx/appcompat/widget/c;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    .line 123
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 124
    return-void
.end method
