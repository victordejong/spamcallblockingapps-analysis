.class public Lcom/venmo/view/TooltipView;
.super Landroid/widget/TextView;
.source "TooltipView.java"


# static fields
.field private static final NOT_PRESENT:I = -0x80000000


# instance fields
.field private alignmentOffset:I

.field private anchoredViewId:I

.field private arrowAlignment:Lcom/venmo/view/ArrowAlignment;

.field private arrowHeight:I

.field private arrowLocation:Lcom/venmo/view/ArrowLocation;

.field private arrowPositioning:I

.field private arrowWidth:I

.field private cornerRadius:I

.field private paint:Landroid/graphics/Paint;

.field private tooltipColor:I

.field private tooltipPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/venmo/view/TooltipView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p2, p1}, Lcom/venmo/view/TooltipView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/venmo/view/TooltipView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getDimension(Landroid/content/res/TypedArray;II)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 204
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/venmo/view/R$styleable;->TooltipView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    :try_start_0
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_anchoredView:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->anchoredViewId:I

    .line 55
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_tooltipColor:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->tooltipColor:I

    .line 56
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_cornerRadius:I

    sget v1, Lcom/venmo/view/R$dimen;->tooltip_default_corner_radius:I

    invoke-direct {p0, p1, p2, v1}, Lcom/venmo/view/TooltipView;->getDimension(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->cornerRadius:I

    .line 58
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_arrowHeight:I

    sget v1, Lcom/venmo/view/R$dimen;->tooltip_default_arrow_height:I

    invoke-direct {p0, p1, p2, v1}, Lcom/venmo/view/TooltipView;->getDimension(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->arrowHeight:I

    .line 60
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_arrowWidth:I

    sget v1, Lcom/venmo/view/R$dimen;->tooltip_default_arrow_width:I

    invoke-direct {p0, p1, p2, v1}, Lcom/venmo/view/TooltipView;->getDimension(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->arrowWidth:I

    .line 62
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_arrowLocation:I

    sget v1, Lcom/venmo/view/R$integer;->tooltip_default_arrow_location:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 62
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->arrowPositioning:I

    if-nez p2, :cond_0

    .line 64
    new-instance p2, Lcom/venmo/view/TopArrowLocation;

    invoke-direct {p2}, Lcom/venmo/view/TopArrowLocation;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/venmo/view/BottomArrowLocation;

    invoke-direct {p2}, Lcom/venmo/view/BottomArrowLocation;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/venmo/view/TooltipView;->arrowLocation:Lcom/venmo/view/ArrowLocation;

    .line 66
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_arrowAlignment:I

    sget v1, Lcom/venmo/view/R$integer;->tooltip_default_arrow_alignment:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 66
    invoke-static {p2}, Lcom/venmo/view/ArrowAlignment;->getAlignment(I)Lcom/venmo/view/ArrowAlignment;

    move-result-object p2

    iput-object p2, p0, Lcom/venmo/view/TooltipView;->arrowAlignment:Lcom/venmo/view/ArrowAlignment;

    .line 69
    sget p2, Lcom/venmo/view/R$styleable;->TooltipView_arrowAlignmentOffset:I

    sget v0, Lcom/venmo/view/R$dimen;->tooltip_default_offset:I

    invoke-direct {p0, p1, p2, v0}, Lcom/venmo/view/TooltipView;->getDimension(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/venmo/view/TooltipView;->alignmentOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getAlignmentOffset()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/venmo/view/TooltipView;->alignmentOffset:I

    return v0
.end method

.method public getAnchoredViewId()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/venmo/view/TooltipView;->anchoredViewId:I

    return v0
.end method

.method public getArrowAlignment()Lcom/venmo/view/ArrowAlignment;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->arrowAlignment:Lcom/venmo/view/ArrowAlignment;

    return-object v0
.end method

.method public getArrowHeight()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/venmo/view/TooltipView;->arrowHeight:I

    return v0
.end method

.method public getArrowWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/venmo/view/TooltipView;->arrowWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/venmo/view/TooltipView;->cornerRadius:I

    return v0
.end method

.method public getTooltipColor()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/venmo/view/TooltipView;->tooltipColor:I

    return v0
.end method

.method getTooltipPaint()Landroid/graphics/Paint;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method getTooltipPath()Landroid/graphics/Path;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->tooltipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/venmo/view/TooltipView;->tooltipPath:Landroid/graphics/Path;

    .line 86
    iput-object v0, p0, Lcom/venmo/view/TooltipView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->tooltipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/venmo/view/TooltipView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->arrowLocation:Lcom/venmo/view/ArrowLocation;

    invoke-interface {v0, p0, p1}, Lcom/venmo/view/ArrowLocation;->configureDraw(Lcom/venmo/view/TooltipView;Landroid/graphics/Canvas;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/venmo/view/TooltipView;->tooltipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/venmo/view/TooltipView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 79
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/venmo/view/TooltipView;->arrowHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/venmo/view/TooltipView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAlignmentOffset(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/venmo/view/TooltipView;->alignmentOffset:I

    .line 194
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setAlignmentOffsetResource(I)V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/venmo/view/TooltipView;->alignmentOffset:I

    .line 199
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setAnchoredViewId(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/venmo/view/TooltipView;->anchoredViewId:I

    .line 162
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowAlignment(Lcom/venmo/view/ArrowAlignment;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/venmo/view/TooltipView;->arrowAlignment:Lcom/venmo/view/ArrowAlignment;

    .line 185
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowHeight(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/venmo/view/TooltipView;->arrowHeight:I

    .line 120
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowHeightResource(I)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/venmo/view/TooltipView;->arrowHeight:I

    .line 125
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowPositioning(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/venmo/view/TooltipView;->arrowPositioning:I

    .line 176
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowWidth(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/venmo/view/TooltipView;->arrowWidth:I

    .line 134
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setArrowWidthResource(I)V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/venmo/view/TooltipView;->arrowWidth:I

    .line 139
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/venmo/view/TooltipView;->cornerRadius:I

    .line 148
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/venmo/view/TooltipView;->cornerRadius:I

    .line 153
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/venmo/view/TooltipView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTooltipColor(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/venmo/view/TooltipView;->tooltipColor:I

    .line 171
    invoke-virtual {p0}, Lcom/venmo/view/TooltipView;->invalidate()V

    return-void
.end method

.method setTooltipPath(Landroid/graphics/Path;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/venmo/view/TooltipView;->tooltipPath:Landroid/graphics/Path;

    return-void
.end method
