.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field final a:Lcom/google/android/material/bottomnavigation/c;

.field private final c:Landroidx/appcompat/view/menu/g;

.field private final d:Lcom/google/android/material/bottomnavigation/d;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/view/MenuInflater;

.field private g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

.field private h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_BottomNavigationView:I

    sput v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/google/android/material/a$b;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v2, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    sget v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    new-instance v0, Lcom/google/android/material/bottomnavigation/d;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/google/android/material/bottomnavigation/b;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    .line 145
    new-instance v1, Lcom/google/android/material/bottomnavigation/c;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    .line 146
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v1, 0x11

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v1, v6}, Lcom/google/android/material/bottomnavigation/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/d;->a(Lcom/google/android/material/bottomnavigation/c;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v1, v8}, Lcom/google/android/material/bottomnavigation/d;->a(I)V

    .line 154
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/c;->setPresenter(Lcom/google/android/material/bottomnavigation/d;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/bottomnavigation/d;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 159
    sget-object v2, Lcom/google/android/material/a$l;->BottomNavigationView:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_Design_BottomNavigationView:I

    const/4 v1, 0x2

    new-array v5, v1, [I

    sget v1, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    aput v1, v5, v7

    sget v1, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    aput v1, v5, v8

    move-object v1, p2

    move v3, p3

    .line 160
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ap;

    move-result-object v1

    .line 169
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    sget v3, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    :goto_0
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemIconSize:I

    .line 179
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/a$d;->design_bottom_navigation_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 177
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v2

    .line 176
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 180
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceInactive:I

    .line 182
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 181
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceInactive(I)V

    .line 184
    :cond_0
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextAppearanceActive:I

    .line 186
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 185
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextAppearanceActive(I)V

    .line 189
    :cond_1
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_4

    .line 195
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(Landroid/content/Context;)Lcom/google/android/material/q/g;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_4
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_elevation:I

    .line 200
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v2

    int-to-float v2, v2

    .line 199
    invoke-static {p0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;F)V

    .line 203
    :cond_5
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_backgroundTint:I

    .line 204
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 208
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_labelVisibilityMode:I

    const/4 v3, -0x1

    .line 209
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/ap;->c(II)I

    move-result v2

    .line 208
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    .line 212
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 213
    invoke-virtual {v1, v2, v8}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v2

    .line 212
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 215
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemBackground:I

    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 216
    if-eqz v2, :cond_9

    .line 217
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomnavigation/c;->setItemBackgroundRes(I)V

    .line 225
    :goto_1
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_menu:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_menu:I

    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a(I)V

    .line 228
    :cond_6
    invoke-virtual {v1}, Landroidx/appcompat/widget/ap;->a()V

    .line 230
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {p0, v1, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_7

    .line 232
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b(Landroid/content/Context;)V

    .line 235
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 250
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a()V

    .line 251
    return-void

    .line 172
    :cond_8
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    const v4, 0x1010038

    .line 173
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/c;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0

    .line 219
    :cond_9
    sget v2, Lcom/google/android/material/a$l;->BottomNavigationView_itemRippleColor:I

    .line 220
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 222
    invoke-virtual {p0, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/google/android/material/q/g;
    .locals 3

    .prologue
    .line 272
    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1}, Lcom/google/android/material/q/g;-><init>()V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_0

    .line 275
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 276
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 275
    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 278
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 279
    return-object v1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-static {p0, v0}, Lcom/google/android/material/internal/j;->a(Landroid/view/View;Lcom/google/android/material/internal/j$a;)V

    .line 268
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 714
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 715
    sget v1, Lcom/google/android/material/a$c;->design_bottom_navigation_shadow_color:I

    .line 716
    invoke-static {p1, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 717
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 720
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/a$d;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 721
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 723
    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 341
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 342
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/d;->b(Z)V

    .line 344
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomnavigation/d;->a(Z)V

    .line 345
    return-void
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 286
    invoke-static {p0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 743
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;

    if-nez v0, :cond_0

    .line 744
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 750
    :goto_0
    return-void

    .line 747
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;

    .line 748
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 749
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 734
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 735
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;-><init>(Landroid/os/Parcelable;)V

    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a:Landroid/os/Bundle;

    .line 737
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    .line 738
    return-object v1
.end method

.method public setElevation(F)V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 299
    invoke-static {p0, p1}, Lcom/google/android/material/q/h;->a(Landroid/view/View;F)V

    .line 300
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    .line 480
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemBackgroundRes(I)V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    .line 456
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemHorizontalTranslationEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/d;->a(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemIconSize(I)V

    .line 383
    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconSize(I)V

    .line 395
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 371
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_1

    .line 505
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    .line 512
    if-nez p1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, v3}, Lcom/google/android/material/bottomnavigation/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 517
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 518
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 520
    :cond_3
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 524
    const v2, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 525
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 526
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 527
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemTextAppearanceActive(I)V

    .line 615
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemTextAppearanceInactive(I)V

    .line 596
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 430
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/c;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a:Lcom/google/android/material/bottomnavigation/c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/c;->setLabelVisibilityMode(I)V

    .line 574
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/d;->a(Z)V

    .line 576
    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->h:Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    .line 325
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->g:Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;

    .line 313
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 555
    :cond_0
    return-void
.end method
