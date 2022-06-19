.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field final a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final c:Landroidx/appcompat/view/menu/g;

.field private final d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/view/MenuInflater;

.field private g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

.field private h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_BottomNavigationView:I

    sput v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 131
    sget v0, Lcom/google/android/material/a$b;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 136
    sget v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 141
    new-instance v7, Lcom/google/android/material/bottomnavigation/a;

    invoke-direct {v7, v6}, Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    .line 143
    new-instance v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v8, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 144
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v9, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 147
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    invoke-virtual {v8, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    iput-object v8, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 v10, 0x1

    .line 1100
    iput v10, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:I

    .line 152
    invoke-virtual {v8, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 153
    invoke-virtual {v7, p1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 157
    sget-object v2, Lcom/google/android/material/a$l;->BottomNavigationView:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_Design_BottomNavigationView:I

    const/4 v0, 0x2

    new-array v5, v0, [I

    sget v0, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    const/4 v11, 0x0

    aput v0, v5, v11

    sget v0, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    aput v0, v5, v10

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ab;

    move-result-object p2

    .line 167
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 168
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v8, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->a()Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 170
    invoke-virtual {v8, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 174
    :goto_0
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconSize:I

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result p3

    .line 174
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 178
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 179
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 180
    invoke-virtual {p2, p3, v11}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p3

    .line 179
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 182
    :cond_1
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 183
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    .line 184
    invoke-virtual {p2, p3, v11}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p3

    .line 183
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 187
    :cond_2
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 188
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_6

    .line 1277
    :cond_4
    new-instance p3, Lcom/google/android/material/k/h;

    invoke-direct {p3}, Lcom/google/android/material/k/h;-><init>()V

    .line 1278
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1279
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 1280
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 1281
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1280
    invoke-virtual {p3, v0}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 1283
    :cond_5
    invoke-virtual {p3, v6}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 193
    invoke-static {p0, p3}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_6
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 197
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_elevation:I

    invoke-virtual {p2, p3, v11}, Landroidx/appcompat/widget/ab;->e(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setElevation(F)V

    .line 200
    :cond_7
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_backgroundTint:I

    .line 201
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ab;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 205
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_labelVisibilityMode:I

    const/4 v0, -0x1

    .line 206
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/ab;->c(II)I

    move-result p3

    .line 205
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 209
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 210
    invoke-virtual {p2, p3, v10}, Landroidx/appcompat/widget/ab;->a(IZ)Z

    move-result p3

    .line 209
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 212
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemBackground:I

    invoke-virtual {p2, p3, v11}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p3

    if-eqz p3, :cond_8

    .line 214
    invoke-virtual {v8, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    goto :goto_1

    .line 216
    :cond_8
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_itemRippleColor:I

    .line 217
    invoke-static {v6, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ab;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 219
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 222
    :goto_1
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ab;->g(I)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 223
    sget p3, Lcom/google/android/material/a$l;->BottomNavigationView_menu:I

    invoke-virtual {p2, p3, v11}, Landroidx/appcompat/widget/ab;->g(II)I

    move-result p3

    .line 2130
    iput-boolean v10, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    .line 2750
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    if-nez v1, :cond_9

    .line 2751
    new-instance v1, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    .line 2753
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    .line 1347
    invoke-virtual {v1, p3, v7}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3130
    iput-boolean v11, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Z

    .line 1349
    invoke-virtual {p1, v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    .line 3252
    :cond_a
    iget-object p1, p2, Landroidx/appcompat/widget/ab;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-virtual {p0, v8, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3734
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_b

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/k/h;

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_c

    .line 3738
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3739
    sget p2, Lcom/google/android/material/a$c;->design_bottom_navigation_shadow_color:I

    .line 3740
    invoke-static {v6, p2}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p2

    .line 3739
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3741
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3744
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/google/android/material/a$d;->design_bottom_navigation_shadow_height:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-direct {p2, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3745
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3746
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 233
    :cond_c
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 4252
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/r;->a(Landroid/view/View;Lcom/google/android/material/internal/r$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 289
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 291
    invoke-static {p0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 767
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 768
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 771
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 772
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 773
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 758
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 759
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 761
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 2

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 304
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/k/i;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 486
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4489
    iget-boolean v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b:Z

    if-eq v0, p1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 644
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    if-nez p1, :cond_1

    .line 512
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4434
    iget-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 4437
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 4439
    :cond_0
    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    .line 518
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_3

    .line 520
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 523
    :cond_3
    invoke-static {p1}, Lcom/google/android/material/i/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 525
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 527
    :cond_4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x3727c5ac    # 1.0E-5f

    .line 531
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 532
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 534
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4466
    iget v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    if-eq v0, p1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLabelVisibilityMode(I)V

    .line 581
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 559
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
