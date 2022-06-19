.class public Landroidx/appcompat/view/menu/ActionMenuItemView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/appcompat/view/menu/n$a;
.implements Landroidx/appcompat/widget/ActionMenuView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ActionMenuItemView$b;,
        Landroidx/appcompat/view/menu/ActionMenuItemView$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/i;

.field b:Landroidx/appcompat/view/menu/g$b;

.field c:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroidx/appcompat/widget/ab;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->e()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    .line 75
    sget-object v1, Landroidx/appcompat/a$j;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    sget v2, Landroidx/appcompat/a$j;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    .line 79
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 82
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    .line 84
    invoke-virtual {p0, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    .line 87
    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 88
    return-void
.end method

.method private e()Z
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    .line 103
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 104
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 105
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 107
    if-ge v1, v4, :cond_1

    const/16 v3, 0x280

    if-lt v1, v3, :cond_0

    if-ge v2, v4, :cond_1

    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 189
    :goto_0
    iget-object v4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    .line 190
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int v1, v0, v2

    .line 192
    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    if-eqz v1, :cond_4

    move-object v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 207
    if-eqz v1, :cond_6

    :goto_4
    invoke-static {p0, v3}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 211
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 188
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 192
    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    .line 201
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 207
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    .line 209
    :cond_7
    invoke-static {p0, v0}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_5
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;I)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    .line 126
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/i;->a(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setId(I)V

    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/widget/ab;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroidx/appcompat/view/menu/ActionMenuItemView$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$a;-><init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/widget/ab;

    .line 137
    :cond_0
    return-void

    .line 130
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v0

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Landroidx/appcompat/view/menu/g$b;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Landroidx/appcompat/view/menu/g$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/g$b;->a(Landroidx/appcompat/view/menu/i;)Z

    .line 153
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->e()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Z

    .line 95
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->f()V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    if-ltz v0, :cond_0

    .line 271
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    .line 272
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    .line 271
    invoke-super {p0, v0, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 275
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 280
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_3

    iget v4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    :goto_0
    if-eq v2, v5, :cond_1

    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    if-lez v2, :cond_1

    if-ge v3, v0, :cond_1

    .line 285
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 289
    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 293
    iget-object v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 294
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 296
    :cond_2
    return-void

    .line 280
    :cond_3
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->j:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->g:Landroidx/appcompat/widget/ab;

    .line 142
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/ab;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Z

    if-eq v0, p1, :cond_0

    .line 180
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Z

    .line 181
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->h()V

    .line 185
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 215
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Landroid/graphics/drawable/Drawable;

    .line 216
    if-eqz p1, :cond_2

    .line 217
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 218
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 219
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    if-le v1, v2, :cond_0

    .line 220
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 221
    iget v1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    .line 222
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 224
    :cond_0
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    if-le v0, v2, :cond_1

    .line 225
    iget v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 226
    iget v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:I

    .line 227
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 229
    :cond_1
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    :cond_2
    invoke-virtual {p0, p1, v3, v3, v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->f()V

    .line 234
    return-void
.end method

.method public setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->b:Landroidx/appcompat/view/menu/g$b;

    .line 157
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:I

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 115
    return-void
.end method

.method public setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->c:Landroidx/appcompat/view/menu/ActionMenuItemView$b;

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->e:Ljava/lang/CharSequence;

    .line 249
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->f()V

    .line 250
    return-void
.end method
