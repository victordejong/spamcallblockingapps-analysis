.class public abstract Lcom/facebook/g;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/facebook/internal/n;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/facebook/g;->getDefaultStyleResource()I

    move-result v0

    .line 66
    :goto_0
    if-nez v0, :cond_0

    sget v0, Lcom/facebook/common/a$f;->com_facebook_button:I

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/g;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    iput-object p5, p0, Lcom/facebook/g;->a:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/facebook/g;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v1}, Lcom/facebook/g;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/facebook/g;->setFocusable(Z)V

    .line 72
    return-void

    :cond_1
    move v0, p4

    .line 65
    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/g;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/g;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/facebook/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/g$1;-><init>(Lcom/facebook/g;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0, p1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 224
    iget-object v1, p0, Lcom/facebook/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/facebook/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/g;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/g;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/facebook/a/m;

    invoke-direct {v0, p1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 229
    iget-object v1, p0, Lcom/facebook/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/facebook/g;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 251
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 253
    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0, v0}, Lcom/facebook/g;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setBackgroundColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    throw v0

    .line 260
    :cond_2
    :try_start_2
    sget v0, Lcom/facebook/common/a$a;->com_facebook_blue:I

    invoke-static {p1, v0}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 286
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 287
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 289
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 290
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 286
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/g;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 291
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    throw v0

    .line 273
    nop

    :array_0
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    .line 304
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 316
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 317
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 318
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 320
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 316
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/g;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    return-void

    .line 322
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    throw v0

    .line 304
    :array_0
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 341
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    new-array v0, v3, [I

    const v1, 0x10100af

    aput v1, v0, v2

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 354
    const/4 v0, 0x0

    const/16 v2, 0x11

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 369
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/g;->setTextSize(IF)V

    .line 370
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/g;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 373
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    throw v0

    .line 356
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    throw v0

    .line 373
    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 374
    throw v0

    .line 358
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/facebook/g;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/g;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/g;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/g;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/g;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    invoke-direct {p0}, Lcom/facebook/g;->a()V

    .line 210
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/facebook/g;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/facebook/g;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/facebook/g;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 187
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/facebook/g;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/g;->f:I

    :goto_0
    return v0

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/facebook/g;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/g;->g:I

    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    invoke-virtual {v0}, Lcom/facebook/internal/n;->b()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    invoke-virtual {v0}, Lcom/facebook/internal/n;->a()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/facebook/g;->getDefaultRequestCode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 133
    invoke-virtual {p0}, Lcom/facebook/g;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/facebook/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/g;->a(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/facebook/g;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 141
    :goto_0
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/g;->getCompoundPaddingLeft()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/facebook/g;->getCompoundPaddingRight()I

    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/facebook/g;->getCompoundDrawablePadding()I

    move-result v4

    .line 152
    add-int/2addr v4, v0

    .line 153
    invoke-virtual {p0}, Lcom/facebook/g;->getWidth()I

    move-result v5

    sub-int v4, v5, v4

    sub-int/2addr v4, v3

    .line 154
    invoke-virtual {p0}, Lcom/facebook/g;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/g;->a(Ljava/lang/String;)I

    move-result v5

    .line 155
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 156
    invoke-virtual {p0}, Lcom/facebook/g;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 158
    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/g;->f:I

    .line 159
    add-int v0, v3, v4

    iput v0, p0, Lcom/facebook/g;->g:I

    .line 160
    iput-boolean v1, p0, Lcom/facebook/g;->e:Z

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    iput-boolean v2, p0, Lcom/facebook/g;->e:Z

    .line 164
    return-void

    :cond_1
    move v0, v2

    .line 140
    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    .line 98
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/g;->h:Lcom/facebook/internal/n;

    .line 86
    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/g;->d:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/g;->c:Landroid/view/View$OnClickListener;

    .line 119
    return-void
.end method
