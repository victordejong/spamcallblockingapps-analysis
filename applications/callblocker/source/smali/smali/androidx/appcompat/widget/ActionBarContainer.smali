.class public Landroidx/appcompat/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v2, Landroidx/appcompat/widget/b;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/b;-><init>(Landroidx/appcompat/widget/ActionBarContainer;)V

    .line 63
    invoke-static {p0, v2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v2, Landroidx/appcompat/a$j;->ActionBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 67
    sget v3, Landroidx/appcompat/a$j;->ActionBar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 68
    sget v3, Landroidx/appcompat/a$j;->ActionBar_backgroundStacked:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v3, Landroidx/appcompat/a$j;->ActionBar_height:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:I

    .line 72
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Landroidx/appcompat/a$f;->split_action_bar:I

    if-ne v3, v4, :cond_0

    .line 73
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    .line 74
    sget v3, Landroidx/appcompat/a$j;->ActionBar_backgroundSplit:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 76
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 80
    return-void

    :cond_2
    move v0, v1

    .line 78
    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 169
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 175
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 178
    :cond_2
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 183
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 186
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 189
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 192
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 85
    sget v0, Landroidx/appcompat/a$f;->action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    .line 86
    sget v0, Landroidx/appcompat/a$f;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    .line 87
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 305
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 306
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_2

    move v3, v1

    .line 308
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 309
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    .line 310
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 311
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 312
    sub-int v6, v5, v6

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v5, v0

    invoke-virtual {v4, p2, v6, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 317
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 319
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    :goto_1
    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 347
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 306
    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 324
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 325
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    .line 326
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 325
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move v0, v1

    .line 336
    :goto_3
    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Z

    .line 337
    if-eqz v3, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 339
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 338
    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 327
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 329
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    .line 330
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 329
    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 332
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 273
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:I

    if-ltz v0, :cond_0

    .line 275
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->j:I

    .line 276
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 278
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 280
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_2

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 283
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1

    .line 286
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    .line 293
    :goto_1
    if-ne v2, v3, :cond_5

    .line 294
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 295
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 296
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 295
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->i:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->b(Landroid/view/View;)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 291
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 294
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 92
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 95
    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 97
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    .line 99
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 98
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 104
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 106
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidateOutline()V

    .line 108
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 102
    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 139
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidateOutline()V

    .line 149
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 143
    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 116
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 118
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 120
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 119
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidate()V

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->invalidateOutline()V

    .line 129
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 123
    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Landroidx/appcompat/widget/ai;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 232
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 233
    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 235
    invoke-virtual {p1}, Landroidx/appcompat/widget/ai;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ai;->setAllowCollapse(Z)V

    .line 240
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1

    .prologue
    .line 202
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContainer;->f:Z

    .line 203
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 205
    return-void

    .line 203
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 155
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 156
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 157
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 158
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 256
    if-eqz p3, :cond_0

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->e:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    if-nez v0, :cond_3

    .line 163
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 163
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
