.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$a;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I

.field private static final f:I


# instance fields
.field c:Lcom/google/android/material/navigation/NavigationView$a;

.field private final g:Lcom/google/android/material/internal/d;

.field private final h:Lcom/google/android/material/internal/e;

.field private final i:I

.field private final j:[I

.field private k:Landroid/view/MenuInflater;

.field private l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 100
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->d:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 101
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->e:[I

    .line 103
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 122
    sget v0, Lcom/google/android/material/a$b;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 126
    sget v9, Lcom/google/android/material/navigation/NavigationView;->f:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v10, Lcom/google/android/material/internal/e;

    invoke-direct {v10}, Lcom/google/android/material/internal/e;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 112
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 131
    new-instance v12, Lcom/google/android/material/internal/d;

    invoke-direct {v12, v11}, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/d;

    .line 134
    sget-object v3, Lcom/google/android/material/a$l;->NavigationView:[I

    const/4 v13, 0x0

    new-array v6, v13, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ab;

    move-result-object v1

    .line 142
    sget v2, Lcom/google/android/material/a$l;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    sget v2, Lcom/google/android/material/a$l;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 150
    :cond_1
    invoke-static {v11, v7, v8, v9}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/k/m$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v2

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    new-instance v4, Lcom/google/android/material/k/h;

    invoke-direct {v4, v2}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    .line 153
    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 154
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 155
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 154
    invoke-virtual {v4, v2}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 157
    :cond_2
    invoke-virtual {v4, v11}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {v0, v4}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_3
    sget v2, Lcom/google/android/material/a$l;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    sget v2, Lcom/google/android/material/a$l;->NavigationView_elevation:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 164
    :cond_4
    sget v2, Lcom/google/android/material/a$l;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 166
    sget v2, Lcom/google/android/material/a$l;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->i:I

    .line 169
    sget v2, Lcom/google/android/material/a$l;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    sget v2, Lcom/google/android/material/a$l;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v2, 0x1010038

    .line 172
    invoke-direct {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 177
    :goto_0
    sget v3, Lcom/google/android/material/a$l;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 178
    sget v3, Lcom/google/android/material/a$l;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v3

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 182
    :goto_1
    sget v6, Lcom/google/android/material/a$l;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 183
    sget v6, Lcom/google/android/material/a$l;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v6, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_7
    const/4 v6, 0x0

    .line 187
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 188
    sget v6, Lcom/google/android/material/a$l;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    const v6, 0x1010036

    .line 193
    invoke-direct {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 196
    :cond_9
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemBackground:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/ab;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_c

    .line 1258
    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v8

    if-nez v8, :cond_b

    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemShapeAppearanceOverlay:I

    .line 1259
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_c

    .line 1285
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v7

    .line 1286
    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemShapeAppearanceOverlay:I

    .line 1287
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v8

    .line 1288
    new-instance v15, Lcom/google/android/material/k/h;

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1290
    invoke-static {v9, v7, v8}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;II)Lcom/google/android/material/k/m$a;

    move-result-object v7

    .line 1292
    invoke-virtual {v7}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v7

    invoke-direct {v15, v7}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemShapeFillColor:I

    .line 1294
    invoke-static {v7, v1, v8}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ab;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 1293
    invoke-virtual {v15, v7}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 1297
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v16

    .line 1298
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v17

    .line 1299
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v18

    .line 1300
    sget v7, Lcom/google/android/material/a$l;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v7, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v19

    .line 1301
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 203
    :cond_c
    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 204
    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemHorizontalPadding:I

    .line 205
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v8

    .line 206
    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/e;->b(I)V

    .line 208
    :cond_d
    sget v8, Lcom/google/android/material/a$l;->NavigationView_itemIconPadding:I

    .line 209
    invoke-virtual {v1, v8, v13}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result v8

    .line 211
    sget v9, Lcom/google/android/material/a$l;->NavigationView_itemMaxLines:I

    invoke-virtual {v1, v9, v4}, Landroidx/appcompat/widget/ab;->a(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 213
    new-instance v9, Lcom/google/android/material/navigation/NavigationView$1;

    invoke-direct {v9, v0}, Lcom/google/android/material/navigation/NavigationView$1;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v12, v9}, Lcom/google/android/material/internal/d;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 2170
    iput v4, v10, Lcom/google/android/material/internal/e;->d:I

    .line 224
    invoke-virtual {v10, v11, v12}, Lcom/google/android/material/internal/e;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 225
    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/e;->a(Landroid/content/res/ColorStateList;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getOverScrollMode()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/internal/e;->f(I)V

    if-eqz v5, :cond_e

    .line 228
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/e;->a(I)V

    .line 230
    :cond_e
    invoke-virtual {v10, v6}, Lcom/google/android/material/internal/e;->b(Landroid/content/res/ColorStateList;)V

    .line 231
    invoke-virtual {v10, v7}, Lcom/google/android/material/internal/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {v10, v8}, Lcom/google/android/material/internal/e;->c(I)V

    .line 233
    invoke-virtual {v12, v10}, Lcom/google/android/material/internal/d;->a(Landroidx/appcompat/view/menu/m;)V

    .line 3106
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_11

    .line 3107
    iget-object v2, v10, Lcom/google/android/material/internal/e;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/a$h;->design_navigation_menu:I

    .line 3108
    invoke-virtual {v2, v3, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 3109
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v3, Lcom/google/android/material/internal/e$g;

    iget-object v5, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v5}, Lcom/google/android/material/internal/e$g;-><init>(Lcom/google/android/material/internal/e;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/l;)V

    .line 3111
    iget-object v2, v10, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    if-nez v2, :cond_f

    .line 3112
    new-instance v2, Lcom/google/android/material/internal/e$b;

    invoke-direct {v2, v10}, Lcom/google/android/material/internal/e$b;-><init>(Lcom/google/android/material/internal/e;)V

    iput-object v2, v10, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    .line 3114
    :cond_f
    iget v2, v10, Lcom/google/android/material/internal/e;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 3115
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget v3, v10, Lcom/google/android/material/internal/e;->t:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setOverScrollMode(I)V

    .line 3117
    :cond_10
    iget-object v2, v10, Lcom/google/android/material/internal/e;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/a$h;->design_navigation_item_header:I

    iget-object v5, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 3119
    invoke-virtual {v2, v3, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    .line 3120
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 3122
    :cond_11
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 234
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->addView(Landroid/view/View;)V

    .line 236
    sget v2, Lcom/google/android/material/a$l;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 237
    sget v2, Lcom/google/android/material/a$l;->NavigationView_menu:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v2

    .line 3368
    invoke-virtual {v10, v4}, Lcom/google/android/material/internal/e;->b(Z)V

    .line 3635
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    if-nez v3, :cond_12

    .line 3636
    new-instance v3, Landroidx/appcompat/view/g;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 3638
    :cond_12
    iget-object v3, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 3369
    invoke-virtual {v3, v2, v12}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3370
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/e;->b(Z)V

    .line 3371
    invoke-virtual {v10, v13}, Lcom/google/android/material/internal/e;->a(Z)V

    .line 240
    :cond_13
    sget v2, Lcom/google/android/material/a$l;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 241
    sget v2, Lcom/google/android/material/a$l;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result v2

    .line 5222
    iget-object v3, v10, Lcom/google/android/material/internal/e;->f:Landroid/view/LayoutInflater;

    iget-object v4, v10, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 5228
    iget-object v3, v10, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5230
    iget-object v2, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v13, v13, v13, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 5252
    :cond_14
    iget-object v1, v1, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5678
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$2;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$2;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5698
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5699
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 643
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 648
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/a$a;->colorPrimary:I

    .line 650
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 653
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 654
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 655
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->e:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->d:[I

    aput-object v8, v5, v2

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 658
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method static synthetic a(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/e;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/core/view/ac;)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    .line 6349
    invoke-virtual {p1}, Landroidx/core/view/ac;->b()I

    move-result v1

    .line 6350
    iget v2, v0, Lcom/google/android/material/internal/e;->r:I

    if-eq v2, v1, :cond_0

    .line 6351
    iput v1, v0, Lcom/google/android/material/internal/e;->r:I

    .line 6353
    invoke-virtual {v0}, Lcom/google/android/material/internal/e;->c()V

    .line 6357
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v2, v0, Lcom/google/android/material/internal/e;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/view/ac;->d()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/google/android/material/internal/NavigationMenuView;->setPadding(IIII)V

    .line 6358
    iget-object v0, v0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/v;->b(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 264
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 266
    invoke-static {p0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 664
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 343
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 342
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 350
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 315
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 316
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 319
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 320
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/d;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 306
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 309
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/d;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/d;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->a(Landroidx/appcompat/view/menu/i;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/d;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->a(Landroidx/appcompat/view/menu/i;)V

    return-void

    .line 586
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 2

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 272
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setElevation(F)V

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/k/i;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->b(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->b(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->c(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->c(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->e(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->d(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->a(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->c:Lcom/google/android/material/navigation/NavigationView$a;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setOverScrollMode(I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/e;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/e;->f(I)V

    :cond_0
    return-void
.end method
