.class public Lcom/callapp/contacts/widget/CircleTextBadgeView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/RectF;

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    .line 36
    invoke-direct {p0, p2}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    .line 41
    invoke-direct {p0, p2}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    const v0, 0x7f070105

    const-string v1, ""

    const v2, 0x7f06010a

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/R$styleable;->CircleTextBadgeView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v4, 0x0

    .line 48
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->c:I

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    const/4 v2, 0x2

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->g:F

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    iput-object v1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->c:I

    .line 57
    iput-object v1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->g:F

    .line 62
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a:Landroid/graphics/Paint;

    .line 63
    iget v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->c:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    iget v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->g:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->f:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object p2, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 82
    iget-object p2, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->f:F

    return-void
.end method

.method public setCircleColor(I)V
    .locals 1

    .line 95
    iput p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->c:I

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->invalidate()V

    return-void
.end method

.method public setCircleLetter(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->d:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/callapp/contacts/widget/CircleTextBadgeView;->g:F

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/CircleTextBadgeView;->invalidate()V

    return-void
.end method
