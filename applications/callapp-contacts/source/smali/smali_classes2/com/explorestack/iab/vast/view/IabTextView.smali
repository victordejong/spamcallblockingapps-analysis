.class public Lcom/explorestack/iab/vast/view/IabTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/g;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/graphics/Paint;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/view/IabTextView;->d:Z

    .line 34
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/view/IabTextView;->d:Z

    .line 39
    invoke-direct {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 44
    sget v1, Lcom/explorestack/iab/utils/Assets;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 46
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 47
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setMaxLines(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 104
    iget-object v1, p0, Lcom/explorestack/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 76
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    .line 78
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getTextSize()F

    move-result v4

    int-to-float v1, v1

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {p0, v3, v1}, Lcom/explorestack/iab/vast/view/IabTextView;->setTextSize(IF)V

    :cond_0
    if-ne v0, v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 86
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 87
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    int-to-float v0, v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    div-float/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getTextSize()F

    move-result v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getTextSize()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0, v3, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setTextSize(IF)V

    .line 96
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 118
    iget-object p3, p0, Lcom/explorestack/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    int-to-float v0, p2

    div-float/2addr v0, p4

    .line 119
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 121
    :cond_0
    iget-boolean p3, p0, Lcom/explorestack/iab/vast/view/IabTextView;->d:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    if-eqz p3, :cond_1

    .line 122
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    div-float/2addr p3, p4

    .line 123
    iget-object p4, p0, Lcom/explorestack/iab/vast/view/IabTextView;->a:Landroid/graphics/RectF;

    const/4 v0, 0x0

    add-float/2addr v0, p3

    int-to-float p1, p1

    sub-float/2addr p1, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    invoke-virtual {p4, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->b:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setStyle(Lcom/explorestack/iab/utils/h;)V
    .locals 4

    .line 53
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->d:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    .line 56
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/explorestack/iab/vast/view/IabTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/h;->e(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setTextColor(I)V

    .line 61
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setBackgroundColor(I)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1422
    iget-object v2, p1, Lcom/explorestack/iab/utils/h;->o:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 1423
    iget-object v2, p1, Lcom/explorestack/iab/utils/h;->o:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41800000    # 16.0f

    .line 1425
    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/view/IabTextView;->setTextSize(IF)V

    .line 63
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->g()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/view/IabTextView;->setAlpha(F)V

    .line 65
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/explorestack/iab/utils/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/explorestack/iab/utils/h;->b(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 68
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/view/IabTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/explorestack/iab/utils/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 65
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/explorestack/iab/vast/view/IabTextView;->setPadding(IIII)V

    return-void
.end method
