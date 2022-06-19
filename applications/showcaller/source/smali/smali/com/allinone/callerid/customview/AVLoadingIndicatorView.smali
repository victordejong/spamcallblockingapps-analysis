.class public Lcom/allinone/callerid/customview/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# instance fields
.field d:I

.field e:I

.field f:Landroid/graphics/Paint;

.field g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/allinone/callerid/indicator/a;

    invoke-direct {v0}, Lcom/allinone/callerid/indicator/a;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    invoke-virtual {v0, p0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->i(Landroid/view/View;)V

    return-void
.end method

.method private c(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method

.method private e(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/allinone/callerid/R$styleable;->AVLoadingIndicatorView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->d:I

    const/4 p2, 0x1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->e:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f:Landroid/graphics/Paint;

    .line 6
    iget v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->b()V

    return-void
.end method

.method private f(II)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    invoke-virtual {v0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->f()V

    return-void
.end method

.method d(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    iget-object v1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->h:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    sget-object v1, Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;->d:Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->h(Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    sget-object v1, Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;->f:Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->h(Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->h:Z

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->a()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/16 v0, 0x2d

    .line 1
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->c(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f(II)I

    move-result p1

    .line 2
    invoke-direct {p0, v0}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->c(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->f(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    sget-object v0, Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;->d:Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->h(Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->g:Lcom/allinone/callerid/indicator/BaseIndicatorController;

    sget-object v0, Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;->e:Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->h(Lcom/allinone/callerid/indicator/BaseIndicatorController$AnimStatus;)V

    :cond_2
    :goto_1
    return-void
.end method
