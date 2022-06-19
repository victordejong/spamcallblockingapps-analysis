.class public Lcom/telguarder/helpers/ui/UnderlinedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "UnderlinedTextView.java"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/telguarder/helpers/ui/UnderlinedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/helpers/ui/UnderlinedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 45
    sget-object v1, Lcom/telguarder/R$styleable;->UnderlinedTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, -0x10000

    .line 46
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mColor:I

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, v0, p2

    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mStrokeWidth:F

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mRect:Landroid/graphics/Rect;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mPaint:Landroid/graphics/Paint;

    .line 51
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getUnderLineColor()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mColor:I

    return v0
.end method

.method public getUnderlineWidth()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mStrokeWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 81
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->getLineCount()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 86
    iget-object v3, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v3

    .line 87
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 88
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 90
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    add-int/lit8 v4, v4, 0x1

    .line 91
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    sub-float/2addr v4, v7

    add-int/lit8 v5, v5, -0x1

    .line 92
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float v9, v5, v4

    int-to-float v3, v3

    .line 94
    iget v4, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mStrokeWidth:F

    add-float v8, v3, v4

    add-float v10, v3, v4

    iget-object v11, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setUnderLineColor(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mColor:I

    .line 64
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->invalidate()V

    return-void
.end method

.method public setUnderlineWidth(F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/telguarder/helpers/ui/UnderlinedTextView;->mStrokeWidth:F

    .line 75
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/UnderlinedTextView;->invalidate()V

    return-void
.end method
