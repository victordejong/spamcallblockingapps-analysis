.class public Lcom/rey/material/widget/TextView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/rey/material/app/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/widget/TextView$a;
    }
.end annotation


# instance fields
.field private b:Lcom/rey/material/widget/a;

.field protected c:I

.field protected d:I

.field private e:Lcom/rey/material/widget/TextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TextView;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/rey/material/widget/TextView;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TextView;->d:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/rey/material/widget/TextView;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rey/material/widget/TextView;->d:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/rey/material/widget/TextView;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-static {p0, p2, p3, p4}, Le/g/a/b/d;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rey/material/widget/TextView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1, p2, p3, p4}, Lcom/rey/material/app/b;->f(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result p1

    iput p1, p0, Lcom/rey/material/widget/TextView;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {p0, p1}, Le/g/a/b/d;->b(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/rey/material/widget/TextView;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->getRippleManager()Lcom/rey/material/widget/a;

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

    iget v0, p0, Lcom/rey/material/widget/TextView;->c:I

    invoke-virtual {p1, v0}, Lcom/rey/material/app/b;->b(I)I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/TextView;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/rey/material/widget/TextView;->d:I

    invoke-virtual {p0, p1}, Lcom/rey/material/widget/TextView;->a(I)V

    :cond_0
    return-void
.end method

.method protected getRippleManager()Lcom/rey/material/widget/a;
    .locals 2

    iget-object v0, p0, Lcom/rey/material/widget/TextView;->b:Lcom/rey/material/widget/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/widget/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/rey/material/widget/TextView;->b:Lcom/rey/material/widget/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/widget/a;

    invoke-direct {v1}, Lcom/rey/material/widget/a;-><init>()V

    iput-object v1, p0, Lcom/rey/material/widget/TextView;->b:Lcom/rey/material/widget/a;

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
    iget-object v0, p0, Lcom/rey/material/widget/TextView;->b:Lcom/rey/material/widget/a;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget v0, p0, Lcom/rey/material/widget/TextView;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->j(Lcom/rey/material/app/b$c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TextView;->d(Lcom/rey/material/app/b$b;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/rey/material/widget/a;->a(Landroid/view/View;)V

    iget v0, p0, Lcom/rey/material/widget/TextView;->c:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/rey/material/app/b;->m(Lcom/rey/material/app/b$c;)V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    iget-object v0, p0, Lcom/rey/material/widget/TextView;->e:Lcom/rey/material/widget/TextView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/rey/material/widget/TextView$a;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->getRippleManager()Lcom/rey/material/widget/a;

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

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Le/g/a/a/f;

    if-eqz v1, :cond_0

    instance-of v1, p1, Le/g/a/a/f;

    if-nez v1, :cond_0

    check-cast v0, Le/g/a/a/f;

    invoke-virtual {v0, p1}, Le/g/a/a/f;->r(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/rey/material/widget/TextView;->getRippleManager()Lcom/rey/material/widget/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/material/widget/a;->f(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/rey/material/widget/TextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/TextView;->e:Lcom/rey/material/widget/TextView$a;

    return-void
.end method
