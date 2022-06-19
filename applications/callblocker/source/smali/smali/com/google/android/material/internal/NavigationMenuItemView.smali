.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lcom/google/android/material/internal/d;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# static fields
.field private static final d:[I


# instance fields
.field c:Z

.field private e:I

.field private f:Z

.field private final g:Landroid/widget/CheckedTextView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroidx/appcompat/view/menu/i;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private final m:Landroidx/core/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Lcom/google/android/material/internal/NavigationMenuItemView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/NavigationMenuItemView$1;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->m:Landroidx/core/h/a;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setOrientation(I)V

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$h;->design_navigation_menu_item:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->design_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 100
    sget v0, Lcom/google/android/material/a$f;->design_menu_item_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    .line 101
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->m:Landroidx/core/h/a;

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 103
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    .line 128
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 138
    const/4 v1, -0x1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 139
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 145
    const/4 v1, -0x2

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->width:I

    .line 146
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private d()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    .line 172
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroidx/appcompat/a$a;->colorControlHighlight:I

    const/4 v3, 0x1

    .line 175
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 177
    sget-object v2, Lcom/google/android/material/internal/NavigationMenuItemView;->d:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 178
    sget-object v1, Lcom/google/android/material/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActionView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 161
    sget v0, Lcom/google/android/material/a$f;->design_menu_item_action_area_stub:I

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 168
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;I)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    .line 109
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->d()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 116
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 117
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setActionView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->c()V

    .line 124
    return-void

    .line 109
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 252
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/google/android/material/internal/d;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    sget-object v1, Lcom/google/android/material/internal/NavigationMenuItemView;->d:[I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 256
    :cond_0
    return-object v0
.end method

.method public setCheckable(Z)V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 197
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    if-eq v0, p1, :cond_0

    .line 198
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    .line 199
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->m:Landroidx/core/h/a;

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroidx/core/h/a;->a(Landroid/view/View;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 208
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setPadding(IIII)V

    .line 282
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 215
    if-eqz p1, :cond_3

    .line 216
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 218
    if-nez v0, :cond_2

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 221
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:I

    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1, v4, v4, v4}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void

    .line 218
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 222
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->f:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$e;->navigation_empty_icon:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 225
    invoke-static {v0, v1, v2}, Landroidx/core/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    .line 227
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:I

    iget v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setIconPadding(I)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 286
    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:I

    .line 238
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/content/res/ColorStateList;

    .line 261
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Z

    .line 262
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_0
    return-void

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 290
    return-void
.end method

.method public setNeedsEmptyIcon(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->f:Z

    .line 278
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 270
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->g:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method
