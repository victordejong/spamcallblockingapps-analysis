.class public Le/g/a/b/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Le/g/a/b/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f04053f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v3}, Le/g/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Le/g/a/b/d;->c(Landroid/view/View;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static c(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/callerid/block/R$styleable;->View:[I

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, -0x80000000

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/high16 v17, -0x80000000

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_0
    if-ge v9, v5, :cond_2b

    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v0, v6}, Le/g/a/b/d;->h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_0
    const/16 v8, 0x19

    const/16 v7, 0x15

    if-ne v6, v8, :cond_1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_9

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_1
    const/16 v8, 0x1a

    if-ne v6, v8, :cond_5

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v8, v7, :cond_9

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v7, :cond_4

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_3
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_4
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_5
    const/16 v7, 0x18

    if-ne v6, v7, :cond_6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setElevation(F)V

    goto :goto_3

    :cond_6
    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    move/from16 v21, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    :goto_2
    const/4 v13, 0x1

    goto/16 :goto_a

    :cond_7
    const/4 v7, 0x5

    const/4 v8, -0x1

    if-ne v6, v7, :cond_8

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v21, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_8
    const/4 v7, 0x6

    if-ne v6, v7, :cond_b

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    :cond_9
    :goto_3
    move/from16 v21, v5

    :cond_a
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_b
    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v21, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_c
    const/16 v7, 0x8

    if-ne v6, v7, :cond_d

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    goto :goto_3

    :cond_d
    const/16 v8, 0x16

    if-ne v6, v8, :cond_f

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_9

    const/high16 v7, -0x80000000

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    if-eq v14, v7, :cond_e

    const/4 v12, 0x1

    goto :goto_3

    :cond_e
    const/4 v12, 0x0

    goto :goto_3

    :cond_f
    const/16 v8, 0x11

    const/16 v7, 0x17

    if-ne v6, v7, :cond_11

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v8, :cond_9

    const/high16 v7, -0x80000000

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    if-eq v6, v7, :cond_10

    const/4 v15, 0x1

    goto :goto_5

    :cond_10
    const/4 v15, 0x0

    :goto_5
    move/from16 v21, v5

    move/from16 v17, v6

    goto :goto_4

    :cond_11
    const/high16 v7, -0x80000000

    if-ne v6, v8, :cond_12

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    goto :goto_3

    :cond_12
    const/16 v8, 0xb

    if-ne v6, v8, :cond_13

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setFadingEdgeLength(I)V

    goto :goto_3

    :cond_13
    const/4 v8, 0x0

    const/16 v7, 0xd

    if-ne v6, v7, :cond_14

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_3

    :cond_14
    const/16 v7, 0xc

    if-ne v6, v7, :cond_15

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_3

    :cond_15
    const/16 v7, 0x12

    if-ne v6, v7, :cond_16

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    goto/16 :goto_3

    :cond_16
    const/16 v7, 0x10

    if-ne v6, v7, :cond_17

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    goto/16 :goto_3

    :cond_17
    const/16 v8, 0xf

    if-ne v6, v8, :cond_18

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    goto/16 :goto_3

    :cond_18
    const/4 v8, 0x1

    if-ne v6, v8, :cond_19

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v7, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarSize(I)V

    goto/16 :goto_3

    :cond_19
    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    if-eqz v6, :cond_1b

    const/high16 v7, 0x1000000

    if-eq v6, v7, :cond_1a

    const/high16 v7, 0x2000000

    if-eq v6, v7, :cond_1a

    const/high16 v7, 0x3000000

    if-eq v6, v7, :cond_1a

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {v0, v7}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_3

    :cond_1b
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setScrollBarStyle(I)V

    goto/16 :goto_3

    :cond_1c
    const/16 v7, 0xe

    if-ne v6, v7, :cond_1d

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_3

    :cond_1d
    const/16 v7, 0x14

    if-ne v6, v7, :cond_1e

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_3

    :pswitch_3
    const/4 v6, 0x6

    goto :goto_7

    :pswitch_4
    const/4 v6, 0x5

    goto :goto_7

    :pswitch_5
    const/4 v6, 0x4

    goto :goto_7

    :pswitch_6
    const/4 v6, 0x3

    goto :goto_7

    :pswitch_7
    const/4 v6, 0x2

    goto :goto_7

    :pswitch_8
    const/4 v6, 0x1

    :goto_7
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_6

    :pswitch_9
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setTextAlignment(I)V

    goto/16 :goto_3

    :cond_1e
    const/4 v7, 0x0

    const/16 v8, 0x13

    if-ne v6, v8, :cond_23

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v21, v5

    const/16 v5, 0x11

    if-lt v8, v5, :cond_a

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    if-eqz v5, :cond_22

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    const/4 v6, 0x2

    if-eq v5, v6, :cond_20

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1f

    const/4 v6, 0x4

    if-eq v5, v6, :cond_20

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1f

    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1f
    invoke-virtual {v0, v7}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_8

    :cond_20
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_8

    :cond_21
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_8

    :cond_22
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setTextDirection(I)V

    goto/16 :goto_4

    :cond_23
    move/from16 v21, v5

    const/4 v5, 0x1

    const/16 v8, 0xa

    if-ne v6, v8, :cond_27

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    if-eqz v6, :cond_26

    if-eq v6, v5, :cond_25

    const/4 v5, 0x2

    if-eq v6, v5, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v5, 0x8

    goto :goto_9

    :cond_25
    const/4 v5, 0x4

    :goto_9
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_26
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_27
    const/16 v5, 0x15

    if-ne v6, v5, :cond_a

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v5, v8, :cond_a

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v6, 0x1

    if-eq v5, v6, :cond_29

    const/4 v7, 0x2

    if-eq v5, v7, :cond_28

    const/4 v6, 0x3

    if-eq v5, v6, :cond_29

    goto/16 :goto_4

    :cond_28
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_4

    :cond_29
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_4

    :cond_2a
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v21

    goto/16 :goto_0

    :cond_2b
    if-ltz v10, :cond_2c

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_19

    :cond_2c
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_33

    if-eqz v12, :cond_2d

    goto :goto_b

    :cond_2d
    move/from16 v14, v16

    :goto_b
    if-eqz v15, :cond_2e

    goto :goto_c

    :cond_2e
    move/from16 v17, v19

    :goto_c
    if-ltz v14, :cond_2f

    goto :goto_d

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    :goto_d
    if-ltz v18, :cond_30

    goto :goto_e

    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    :goto_e
    move/from16 v5, v18

    if-ltz v17, :cond_31

    goto :goto_f

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    :goto_f
    move/from16 v6, v17

    if-ltz v20, :cond_32

    goto :goto_10

    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    :goto_10
    move/from16 v7, v20

    invoke-virtual {v0, v14, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_19

    :cond_33
    if-nez v11, :cond_34

    if-eqz v13, :cond_39

    :cond_34
    if-eqz v11, :cond_35

    goto :goto_11

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    :goto_11
    move/from16 v5, v16

    if-ltz v18, :cond_36

    move/from16 v6, v18

    goto :goto_12

    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    :goto_12
    if-eqz v13, :cond_37

    goto :goto_13

    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    :goto_13
    move/from16 v7, v19

    if-ltz v20, :cond_38

    move/from16 v8, v20

    goto :goto_14

    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    :goto_14
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_39
    if-nez v12, :cond_3a

    if-eqz v15, :cond_3f

    :cond_3a
    if-eqz v12, :cond_3b

    goto :goto_15

    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    :goto_15
    if-ltz v18, :cond_3c

    goto :goto_16

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    :goto_16
    move/from16 v5, v18

    if-eqz v15, :cond_3d

    goto :goto_17

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v17

    :goto_17
    move/from16 v6, v17

    if-ltz v20, :cond_3e

    goto :goto_18

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    :goto_18
    move/from16 v7, v20

    invoke-virtual {v0, v14, v5, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3f
    :goto_19
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_40

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Le/g/a/b/d;->e(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    :cond_40
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static d(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    const/4 v3, -0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static e(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/callerid/block/R$styleable;->TextViewAppearance:[I

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v7, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/callerid/block/R$styleable;->TextAppearance:[I

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/16 v15, 0xc

    const/4 v4, 0x6

    const/4 v13, 0x5

    const/4 v8, 0x4

    const/4 v14, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    :goto_1
    if-ge v11, v12, :cond_12

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    if-ne v10, v8, :cond_1

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto/16 :goto_3

    :cond_1
    if-ne v10, v14, :cond_2

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_2
    if-ne v10, v13, :cond_3

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_3
    if-ne v10, v4, :cond_4

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_5
    if-ne v10, v9, :cond_6

    invoke-virtual {v7, v10, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    goto/16 :goto_3

    :cond_6
    if-ne v10, v15, :cond_7

    :goto_2
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_3

    :cond_7
    const/16 v4, 0x15

    if-ne v10, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    if-ne v10, v4, :cond_9

    invoke-virtual {v7, v10, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    goto/16 :goto_3

    :cond_9
    const/16 v4, 0xb

    if-ne v10, v4, :cond_a

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v4, v13, :cond_11

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_3

    :cond_a
    const/4 v4, 0x7

    if-ne v10, v4, :cond_b

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    goto :goto_3

    :cond_b
    const/16 v4, 0x8

    if-ne v10, v4, :cond_c

    const/4 v4, 0x0

    invoke-virtual {v7, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    const/16 v13, 0x9

    if-ne v10, v13, :cond_d

    invoke-virtual {v7, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    goto :goto_3

    :cond_d
    const/16 v13, 0xa

    if-ne v10, v13, :cond_e

    invoke-virtual {v7, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    goto :goto_3

    :cond_e
    const/16 v4, 0xd

    if-ne v10, v4, :cond_f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v4, v13, :cond_11

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto :goto_3

    :cond_f
    const/16 v4, 0xe

    const/16 v13, 0x15

    if-ne v10, v4, :cond_10

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_11

    const/4 v4, 0x0

    invoke-virtual {v7, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_3

    :cond_10
    const/16 v4, 0xf

    if-ne v10, v4, :cond_11

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v13, :cond_11

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_11
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x6

    const/4 v13, 0x5

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :cond_13
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v7, Lcom/callerid/block/R$styleable;->TextView:[I

    invoke-virtual {v4, v1, v7, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move-object/from16 v26, v23

    move/from16 v27, v24

    move/from16 v28, v25

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_5
    const/16 v8, 0x11

    if-ge v14, v7, :cond_3e

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    const/16 v9, 0x20

    if-ne v15, v9, :cond_14

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    :goto_6
    const/16 v6, 0x15

    const/4 v9, 0x6

    const/16 v20, 0x1

    goto/16 :goto_b

    :cond_14
    const/16 v9, 0x1e

    if-ne v15, v9, :cond_15

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    goto :goto_6

    :cond_15
    const/16 v9, 0x21

    if-ne v15, v9, :cond_16

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    goto :goto_6

    :cond_16
    const/16 v9, 0x1f

    if-ne v15, v9, :cond_17

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    goto :goto_6

    :cond_17
    const/16 v9, 0x26

    if-ne v15, v9, :cond_18

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    :goto_7
    const/16 v6, 0x15

    const/4 v9, 0x6

    const/16 v30, 0x1

    goto/16 :goto_b

    :cond_18
    const/16 v9, 0x27

    if-ne v15, v9, :cond_19

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    goto :goto_7

    :cond_19
    const/16 v9, 0x22

    if-ne v15, v9, :cond_1a

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_8

    :cond_1a
    const/16 v9, 0xe

    if-ne v15, v9, :cond_1b

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_8

    :cond_1b
    const/16 v9, 0x9

    if-ne v15, v9, :cond_1c

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_8

    :cond_1c
    const/16 v9, 0xf

    if-ne v15, v9, :cond_1d

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_8

    :cond_1d
    const/16 v9, 0x10

    if-ne v15, v9, :cond_1e

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_8

    :cond_1e
    if-ne v15, v8, :cond_1f

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_8

    :cond_1f
    const/16 v9, 0xb

    if-ne v15, v9, :cond_20

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_8

    :cond_20
    const/16 v8, 0x12

    if-ne v15, v8, :cond_21

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_8

    :cond_21
    const/16 v8, 0x8

    if-ne v15, v8, :cond_22

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_8

    :cond_22
    const/16 v8, 0x13

    if-ne v15, v8, :cond_23

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_8

    :cond_23
    const/16 v8, 0x14

    if-ne v15, v8, :cond_24

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_8

    :cond_24
    const/16 v8, 0x15

    if-ne v15, v8, :cond_25

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMinEms(I)V

    goto :goto_8

    :cond_25
    const/16 v8, 0xa

    if-ne v15, v8, :cond_26

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_8

    :cond_26
    const/4 v9, 0x7

    if-ne v15, v9, :cond_27

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_8

    :cond_27
    const/16 v8, 0x16

    if-ne v15, v8, :cond_28

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto :goto_8

    :cond_28
    const/16 v8, 0x18

    if-ne v15, v8, :cond_29

    const/4 v8, 0x1

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto :goto_8

    :cond_29
    const/4 v8, 0x1

    const/16 v9, 0xd

    if-ne v15, v9, :cond_2a

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_8

    :cond_2a
    const/16 v8, 0xc

    if-ne v15, v8, :cond_2b

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_8

    :cond_2b
    const/16 v8, 0x1a

    if-ne v15, v8, :cond_2c

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    move v13, v8

    :goto_8
    const/16 v6, 0x15

    const/4 v9, 0x6

    goto/16 :goto_b

    :cond_2c
    const/16 v8, 0x1b

    if-ne v15, v8, :cond_2d

    const/4 v8, 0x0

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    goto :goto_8

    :cond_2d
    const/4 v8, 0x0

    const/16 v9, 0x1c

    if-ne v15, v9, :cond_2e

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    move v11, v9

    goto :goto_8

    :cond_2e
    const/16 v9, 0x1d

    if-ne v15, v9, :cond_2f

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    move v12, v9

    goto :goto_8

    :cond_2f
    const/4 v9, 0x4

    if-ne v15, v9, :cond_30

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setHighlightColor(I)V

    goto :goto_8

    :cond_30
    const/4 v8, 0x3

    if-ne v15, v8, :cond_31

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_31
    const/4 v8, 0x5

    if-ne v15, v8, :cond_32

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_8

    :cond_32
    const/4 v9, 0x6

    if-ne v15, v9, :cond_33

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_9

    :cond_33
    if-nez v15, :cond_34

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v0, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_9

    :cond_34
    const/4 v8, 0x1

    if-ne v15, v8, :cond_36

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    move/from16 v27, v8

    :cond_35
    :goto_9
    const/16 v6, 0x15

    goto :goto_b

    :cond_36
    const/4 v8, 0x2

    if-ne v15, v8, :cond_37

    invoke-virtual {v4, v15, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    move/from16 v28, v8

    goto :goto_9

    :cond_37
    const/16 v8, 0x28

    if-ne v15, v8, :cond_38

    :goto_a
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v8

    goto :goto_9

    :cond_38
    const/16 v8, 0x2c

    if-ne v15, v8, :cond_39

    goto :goto_a

    :cond_39
    const/16 v8, 0x25

    if-ne v15, v8, :cond_3a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v8, v6, :cond_35

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_9

    :cond_3a
    const/16 v6, 0xe

    const/16 v8, 0x29

    if-ne v15, v8, :cond_3b

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v8, v6, :cond_3d

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    goto :goto_b

    :cond_3b
    const/16 v6, 0x15

    const/16 v8, 0x2a

    if-ne v15, v8, :cond_3c

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_3d

    const/4 v8, 0x0

    invoke-virtual {v4, v15, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_b

    :cond_3c
    const/16 v8, 0x2b

    if-ne v15, v8, :cond_3d

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_3d

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_3d
    :goto_b
    add-int/lit8 v14, v14, 0x1

    const/4 v6, -0x1

    const/4 v9, 0x1

    const/16 v15, 0xc

    goto/16 :goto_5

    :cond_3e
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v13, :cond_3f

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3f
    if-eqz v20, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v21, :cond_40

    aput-object v21, v4, v5

    goto :goto_c

    :cond_40
    if-eqz v22, :cond_41

    aput-object v22, v4, v5

    :cond_41
    :goto_c
    if-eqz v23, :cond_42

    const/4 v6, 0x1

    aput-object v23, v4, v6

    :cond_42
    const/4 v6, 0x2

    if-eqz v24, :cond_43

    aput-object v24, v4, v6

    goto :goto_d

    :cond_43
    if-eqz v25, :cond_44

    aput-object v25, v4, v6

    :cond_44
    :goto_d
    const/4 v7, 0x3

    if-eqz v29, :cond_45

    aput-object v29, v4, v7

    :cond_45
    aget-object v9, v4, v5

    const/4 v10, 0x1

    aget-object v11, v4, v10

    aget-object v10, v4, v6

    aget-object v4, v4, v7

    invoke-virtual {v0, v9, v11, v10, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_46
    if-eqz v30, :cond_49

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_49

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v21, :cond_47

    aput-object v21, v4, v5

    :cond_47
    const/4 v6, 0x2

    if-eqz v24, :cond_48

    aput-object v24, v4, v6

    :cond_48
    aget-object v5, v4, v5

    const/4 v7, 0x1

    aget-object v8, v4, v7

    aget-object v7, v4, v6

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v8, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_49
    move-object/from16 v4, v26

    if-eqz v4, :cond_4a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v6, v28

    invoke-static {v5, v4, v6}, Le/g/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_e

    :cond_4a
    move/from16 v6, v28

    const/4 v4, 0x0

    :cond_4b
    :goto_e
    if-eqz v4, :cond_4f

    move/from16 v5, v27

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4e

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4d

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4c

    goto :goto_f

    :cond_4c
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_f

    :cond_4d
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_f

    :cond_4e
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_f
    invoke-virtual {v0, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4f
    instance-of v4, v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_50

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-static {v0, v1, v2, v3}, Le/g/a/b/d;->d(Landroid/widget/AutoCompleteTextView;Landroid/util/AttributeSet;II)V

    :cond_50
    return-void
.end method

.method public static f()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    :cond_0
    sget-object v0, Le/g/a/b/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static g([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static h(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
