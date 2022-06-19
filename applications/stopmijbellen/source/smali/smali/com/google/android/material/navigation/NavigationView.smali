.class public Lcom/google/android/material/navigation/NavigationView;
.super Lv3/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$b;,
        Lcom/google/android/material/navigation/NavigationView$a;
    }
.end annotation


# static fields
.field public static final s:[I

.field public static final t:[I


# instance fields
.field public final f:Lv3/g;

.field public final g:Lv3/h;

.field public h:Lcom/google/android/material/navigation/NavigationView$a;

.field public final i:I

.field public final j:[I

.field public k:Landroid/view/MenuInflater;

.field public l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Landroid/graphics/Path;

.field public final r:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->s:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->t:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const v8, 0x7f120328

    const v9, 0x7f040388

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1, v7, v9, v8}, Lg4/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v9}, Lv3/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v10, Lv3/h;

    invoke-direct {v10}, Lv3/h;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 3
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    const/4 v12, 0x1

    .line 4
    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 5
    iput-boolean v12, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    const/4 v13, 0x0

    .line 6
    iput v13, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 7
    iput v13, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 10
    new-instance v15, Lv3/g;

    invoke-direct {v15, v14}, Lv3/g;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    .line 11
    sget-object v6, Lj4/w0;->A:[I

    new-array v5, v13, [I

    .line 12
    invoke-static {v14, v7, v9, v8}, Lv3/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v16, 0x7f120328

    const v4, 0x7f040388

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v17, v5

    move/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v17

    .line 13
    invoke-static/range {v1 .. v6}, Lv3/p;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 14
    new-instance v1, Landroidx/appcompat/widget/z0;

    .line 15
    invoke-virtual {v14, v7, v11, v9, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Landroidx/appcompat/widget/z0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 16
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/z0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {v0, v3}, Lm0/v$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v3, 0x7

    .line 19
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->p:I

    .line 20
    invoke-virtual {v1, v13, v13}, Landroidx/appcompat/widget/z0;->j(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 22
    :cond_1
    invoke-static {v14, v7, v9, v8}, Lc4/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc4/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lc4/i$b;->a()Lc4/i;

    move-result-object v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 24
    new-instance v5, Lc4/f;

    invoke-direct {v5, v3}, Lc4/f;-><init>(Lc4/i;)V

    .line 25
    instance-of v3, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 26
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 28
    invoke-virtual {v5, v3}, Lc4/f;->q(Landroid/content/res/ColorStateList;)V

    .line 29
    :cond_2
    iget-object v3, v5, Lc4/f;->a:Lc4/f$b;

    new-instance v4, Ls3/a;

    invoke-direct {v4, v14}, Ls3/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lc4/f$b;->b:Ls3/a;

    .line 30
    invoke-virtual {v5}, Lc4/f;->x()V

    .line 31
    sget-object v3, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {v0, v5}, Lm0/v$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/16 v3, 0x8

    .line 33
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 34
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_4
    const/4 v3, 0x2

    .line 35
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/z0;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    const/4 v3, 0x3

    .line 36
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->i:I

    const/16 v3, 0x1d

    .line 37
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/z0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v5

    :goto_0
    const/16 v4, 0x20

    .line 39
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 40
    invoke-virtual {v1, v4, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v4

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    const v6, 0x1010038

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    .line 41
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_7
    const/16 v7, 0xe

    .line 42
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 43
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/z0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_2

    .line 44
    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_2
    const/16 v7, 0x17

    .line 45
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 46
    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v7

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    const/16 v8, 0xd

    .line 47
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 48
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_a
    const/16 v8, 0x18

    .line 49
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 50
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/z0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_b
    if-nez v7, :cond_c

    if-nez v5, :cond_c

    const v5, 0x1010036

    .line 51
    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_c
    const/16 v8, 0xa

    .line 52
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/z0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_f

    const/16 v9, 0x10

    .line 53
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v11

    const/16 v12, 0x11

    if-nez v11, :cond_e

    .line 54
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_4

    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v11, 0x1

    :goto_5
    if-eqz v11, :cond_f

    .line 55
    invoke-virtual {v1, v9, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v8

    .line 56
    invoke-virtual {v1, v12, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v9

    .line 57
    new-instance v11, Lc4/f;

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v22, v2

    .line 59
    new-instance v2, Lc4/a;

    move-object/from16 p2, v5

    int-to-float v5, v13

    invoke-direct {v2, v5}, Lc4/a;-><init>(F)V

    invoke-static {v12, v8, v9, v2}, Lc4/i;->a(Landroid/content/Context;IILc4/c;)Lc4/i$b;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lc4/i$b;->a()Lc4/i;

    move-result-object v2

    invoke-direct {v11, v2}, Lc4/f;-><init>(Lc4/i;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v5, 0x12

    .line 62
    invoke-static {v2, v1, v5}, Lz3/c;->b(Landroid/content/Context;Landroidx/appcompat/widget/z0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 63
    invoke-virtual {v11, v2}, Lc4/f;->q(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x15

    .line 64
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v18

    const/16 v2, 0x16

    .line 65
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v19

    const/16 v2, 0x14

    .line 66
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v20

    const/16 v2, 0x13

    .line 67
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v21

    .line 68
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v16, v8

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_f
    move-object/from16 v22, v2

    move-object/from16 p2, v5

    :goto_6
    const/16 v2, 0xb

    .line 69
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 70
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemHorizontalPadding(I)V

    :cond_10
    const/16 v2, 0x19

    .line 72
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 73
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemVerticalPadding(I)V

    :cond_11
    const/4 v2, 0x6

    .line 75
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetStart(I)V

    const/4 v2, 0x5

    .line 77
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 78
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setDividerInsetEnd(I)V

    const/16 v2, 0x1f

    .line 79
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 80
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetStart(I)V

    const/16 v2, 0x1e

    .line 81
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    .line 82
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setSubheaderInsetEnd(I)V

    const/16 v2, 0x21

    .line 83
    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    .line 84
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/z0;->a(IZ)Z

    move-result v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setTopInsetScrimEnabled(Z)V

    const/4 v2, 0x4

    .line 86
    iget-boolean v5, v0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    .line 87
    invoke-virtual {v1, v2, v5}, Landroidx/appcompat/widget/z0;->a(IZ)Z

    move-result v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setBottomInsetScrimEnabled(Z)V

    const/16 v2, 0xc

    .line 89
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->f(II)I

    move-result v2

    const/16 v5, 0xf

    const/4 v9, 0x1

    .line 90
    invoke-virtual {v1, v5, v9}, Landroidx/appcompat/widget/z0;->j(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 91
    new-instance v5, Lcom/google/android/material/navigation/a;

    invoke-direct {v5, v0}, Lcom/google/android/material/navigation/a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 92
    iput-object v5, v15, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    .line 93
    iput v9, v10, Lv3/h;->d:I

    .line 94
    invoke-virtual {v10, v14, v15}, Lv3/h;->c(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V

    if-eqz v4, :cond_12

    .line 95
    iput v4, v10, Lv3/h;->g:I

    .line 96
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    .line 97
    :cond_12
    iput-object v3, v10, Lv3/h;->h:Landroid/content/res/ColorStateList;

    .line 98
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    .line 99
    iput-object v6, v10, Lv3/h;->k:Landroid/content/res/ColorStateList;

    .line 100
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v3

    .line 102
    iput v3, v10, Lv3/h;->y:I

    .line 103
    iget-object v4, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v4, :cond_13

    .line 104
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_13
    if-eqz v7, :cond_14

    .line 105
    iput v7, v10, Lv3/h;->i:I

    .line 106
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    :cond_14
    move-object/from16 v5, p2

    .line 107
    iput-object v5, v10, Lv3/h;->j:Landroid/content/res/ColorStateList;

    .line 108
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    .line 109
    iput-object v8, v10, Lv3/h;->l:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    .line 111
    invoke-virtual {v10, v2}, Lv3/h;->b(I)V

    .line 112
    iget-object v2, v15, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-virtual {v15, v10, v2}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/i;Landroid/content/Context;)V

    .line 113
    iget-object v2, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_17

    .line 114
    iget-object v2, v10, Lv3/h;->f:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0046

    .line 115
    invoke-virtual {v2, v3, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 116
    new-instance v3, Lv3/h$h;

    iget-object v4, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Lv3/h$h;-><init>(Lv3/h;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/y;)V

    .line 117
    iget-object v2, v10, Lv3/h;->e:Lv3/h$c;

    if-nez v2, :cond_15

    .line 118
    new-instance v2, Lv3/h$c;

    invoke-direct {v2, v10}, Lv3/h$c;-><init>(Lv3/h;)V

    iput-object v2, v10, Lv3/h;->e:Lv3/h$c;

    .line 119
    :cond_15
    iget v2, v10, Lv3/h;->y:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 120
    iget-object v3, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 121
    :cond_16
    iget-object v2, v10, Lv3/h;->f:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0043

    iget-object v4, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 122
    invoke-virtual {v2, v3, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lv3/h;->b:Landroid/widget/LinearLayout;

    .line 123
    iget-object v2, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lv3/h;->e:Lv3/h$c;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 124
    :cond_17
    iget-object v2, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x1a

    .line 126
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 127
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v2

    const/4 v3, 0x1

    .line 128
    invoke-virtual {v10, v3}, Lv3/h;->f(Z)V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v15}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    invoke-virtual {v10, v13}, Lv3/h;->f(Z)V

    .line 131
    invoke-virtual {v10, v13}, Lv3/h;->g(Z)V

    :cond_18
    const/16 v2, 0x9

    .line 132
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/z0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 133
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/z0;->l(II)I

    move-result v1

    .line 134
    iget-object v2, v10, Lv3/h;->f:Landroid/view/LayoutInflater;

    iget-object v3, v10, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 135
    iget-object v2, v10, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    iget-object v1, v10, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v13, v13, v13, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 137
    :cond_19
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    new-instance v1, Lx3/a;

    invoke-direct {v1, v0}, Lx3/a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(Lm0/b0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lm0/b0;->e()I

    move-result v1

    .line 3
    iget v2, v0, Lv3/h;->w:I

    if-eq v2, v1, :cond_0

    .line 4
    iput v1, v0, Lv3/h;->w:I

    .line 5
    invoke-virtual {v0}, Lv3/h;->m()V

    .line 6
    :cond_0
    iget-object v1, v0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lm0/b0;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 7
    iget-object v0, v0, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lm0/v;->e(Landroid/view/View;Lm0/b0;)Lm0/b0;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lg/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040107

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->t:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->s:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget-object v0, v0, Lv3/h;->e:Lv3/h$c;

    .line 3
    iget-object v0, v0, Lv3/h$c;->d:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->r:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->q:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget-object v0, v0, Lv3/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget-object v0, v0, Lv3/h;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->m:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->o:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget-object v0, v0, Lv3/h;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->v:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget-object v0, v0, Lv3/h;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemVerticalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->n:I

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    return-object v0
.end method

.method public getSubheaderInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public getSubheaderInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v0, v0, Lv3/h;->s:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lv3/k;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lc4/f;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lc4/f;

    invoke-static {p0, v0}, Li4/d;->H(Landroid/view/View;Lc4/f;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lv3/k;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$b;

    .line 4
    iget-object v0, p1, Lr0/a;->a:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$b;->c:Landroid/os/Bundle;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android:menu:presenters"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    if-nez v3, :cond_3

    .line 11
    iget-object v3, v0, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v3}, Landroidx/appcompat/view/menu/i;->getId()I

    move-result v2

    if-lez v2, :cond_2

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    .line 14
    invoke-interface {v3, v2}, Landroidx/appcompat/view/menu/i;->d(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$b;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$b;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$b;->c:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    .line 5
    iget-object v3, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v4, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/i;

    if-nez v6, :cond_2

    .line 9
    iget-object v6, v2, Landroidx/appcompat/view/menu/e;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v6}, Landroidx/appcompat/view/menu/i;->getId()I

    move-result v5

    if-lez v5, :cond_1

    .line 11
    invoke-interface {v6}, Landroidx/appcompat/view/menu/i;->i()Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:presenters"

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :goto_1
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    if-lez p3, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Lc4/f;

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Lc4/f;

    .line 5
    iget-object p4, p3, Lc4/f;->a:Lc4/f$b;

    iget-object p4, p4, Lc4/f$b;->a:Lc4/i;

    .line 6
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lc4/i$b;

    invoke-direct {v0, p4}, Lc4/i$b;-><init>(Lc4/i;)V

    .line 8
    iget p4, p0, Lcom/google/android/material/navigation/NavigationView;->o:I

    .line 9
    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p0}, Lm0/v$e;->d(Landroid/view/View;)I

    move-result v1

    .line 11
    invoke-static {p4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p4

    const/4 v1, 0x3

    if-ne p4, v1, :cond_0

    .line 12
    iget p4, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lc4/i$b;->f(F)Lc4/i$b;

    .line 13
    iget p4, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lc4/i$b;->d(F)Lc4/i$b;

    goto :goto_0

    .line 14
    :cond_0
    iget p4, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lc4/i$b;->e(F)Lc4/i$b;

    .line 15
    iget p4, p0, Lcom/google/android/material/navigation/NavigationView;->p:I

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Lc4/i$b;->c(F)Lc4/i$b;

    .line 16
    :goto_0
    invoke-virtual {v0}, Lc4/i$b;->a()Lc4/i;

    move-result-object p4

    .line 17
    iget-object v0, p3, Lc4/f;->a:Lc4/f$b;

    iput-object p4, v0, Lc4/f$b;->a:Lc4/i;

    .line 18
    invoke-virtual {p3}, Lc4/f;->invalidateSelf()V

    .line 19
    iget-object p4, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    if-nez p4, :cond_1

    .line 20
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    .line 21
    :cond_1
    iget-object p4, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 22
    iget-object p4, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    sget-object p1, Lc4/j$a;->a:Lc4/j;

    .line 24
    iget-object p2, p3, Lc4/f;->a:Lc4/f$b;

    iget-object p3, p2, Lc4/f$b;->a:Lc4/i;

    .line 25
    iget p2, p2, Lc4/f$b;->k:F

    .line 26
    iget-object p4, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    .line 27
    invoke-virtual {p1, p3, p2, p4, v0}, Lc4/j;->a(Lc4/i;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->q:Landroid/graphics/Path;

    .line 30
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->r:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    :goto_1
    return-void
.end method

.method public setBottomInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->n:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 3
    iget-object v0, v0, Lv3/h;->e:Lv3/h$c;

    invoke-virtual {v0, p1}, Lv3/h$c;->h(Landroidx/appcompat/view/menu/g;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lv3/g;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 6
    iget-object v0, v0, Lv3/h;->e:Lv3/h$c;

    invoke-virtual {v0, p1}, Lv3/h$c;->h(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->r:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->q:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Li4/d;->G(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput-object p1, v0, Lv3/h;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ld0/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->m:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iput p1, v0, Lv3/h;->m:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->o:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lv3/h;->b(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iget v1, v0, Lv3/h;->p:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Lv3/h;->p:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lv3/h;->t:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput-object p1, v0, Lv3/h;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->v:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->i:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput-object p1, v0, Lv3/h;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemVerticalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->n:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setItemVerticalPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 2
    iput p1, v0, Lv3/h;->n:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/navigation/NavigationView$a;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lv3/h;->y:I

    .line 4
    iget-object v0, v0, Lv3/h;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSubheaderInsetEnd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->s:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setSubheaderInsetStart(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lv3/h;

    .line 2
    iput p1, v0, Lv3/h;->s:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lv3/h;->g(Z)V

    return-void
.end method

.method public setTopInsetScrimEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:Z

    return-void
.end method
