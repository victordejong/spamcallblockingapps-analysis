.class public Lcom/rey/material/widget/CompoundButton;
.super Landroid/widget/CompoundButton;
.source ""

# interfaces
.implements Lcom/rey/material/app/b$c;


# instance fields
.field private b:Lcom/rey/material/widget/a;

.field protected c:Landroid/graphics/drawable/Drawable;

.field protected d:I

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/CompoundButton;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/CompoundButton;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/CompoundButton;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/rey/material/widget/CompoundButton;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/CompoundButton;->e:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/CompoundButton;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/CompoundButton;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-static {p0, p2, p3, p4}, Le/g/a/b/d;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/CompoundButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/CompoundButton;->d:I

    return-void

    :array_0
    .array-data 4
        0x10100d5
        0x10100d6
    .end array-data
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/CompoundButton;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/rey/material/widget/CompoundButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rey/material/widget/a;->c(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public d(Lcom/rey/material/app/b$b;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/CompoundButton;->d:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/CompoundButton;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/CompoundButton;->e:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/CompoundButton;->a(I)V

    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/rey/material/widget/CompoundButton;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method protected getRippleManager()Lcom/rey/material/widget/a;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/CompoundButton;->b:Lcom/rey/material/widget/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/widget/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rey/material/widget/CompoundButton;->b:Lcom/rey/material/widget/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/widget/a;

    invoke-direct {v1}, Lcom/rey/material/widget/a;-><init>()V

    iput-object v1, p0, Lcom/rey/material/widget/CompoundButton;->b:Lcom/rey/material/widget/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rey/material/widget/CompoundButton;->b:Lcom/rey/material/widget/a;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onAttachedToWindow()V

    iget v0, p0, Lcom/rey/material/widget/CompoundButton;->d:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/CompoundButton;->d(Lcom/rey/material/app/b$b;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/rey/material/widget/CompoundButton;->d:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->m(Lcom/rey/material/app/b$c;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/CompoundButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/rey/material/widget/a;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_0

    instance-of v1, p1, Le/g/a/a/f;

    if-nez v1, :cond_0

    check-cast v0, Le/g/a/a/f;

    invoke-virtual {v0, p1}, Le/g/a/a/f;->r(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/CompoundButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/CompoundButton;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->f(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
