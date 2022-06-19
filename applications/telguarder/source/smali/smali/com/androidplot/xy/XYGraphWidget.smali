.class public Lcom/androidplot/xy/XYGraphWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYGraphWidget$Edge;,
        Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;,
        Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;,
        Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

.field private static final FUDGE:F = 1.0E-5f

.field private static final ONE:I = 0x1

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# instance fields
.field private cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

.field private domainCursorPaint:Landroid/graphics/Paint;

.field private domainCursorPosition:Ljava/lang/Float;

.field private domainGridLinePaint:Landroid/graphics/Paint;

.field private domainOriginLinePaint:Landroid/graphics/Paint;

.field private domainSubGridLinePaint:Landroid/graphics/Paint;

.field private drawGridOnTop:Z

.field private drawMarkersEnabled:Z

.field private gridBackgroundPaint:Landroid/graphics/Paint;

.field private gridInsets:Lcom/androidplot/ui/Insets;

.field private gridRect:Landroid/graphics/RectF;

.field private isGridClippingEnabled:Z

.field private labelRect:Landroid/graphics/RectF;

.field private lineExtensionBottom:F

.field private lineExtensionLeft:F

.field private lineExtensionRight:F

.field private lineExtensionTop:F

.field private lineLabelEdges:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            ">;"
        }
    .end annotation
.end field

.field private lineLabelInsets:Lcom/androidplot/ui/Insets;

.field private lineLabelRenderers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private lineLabelStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;",
            ">;"
        }
    .end annotation
.end field

.field private linesPerDomainLabel:I

.field private linesPerRangeLabel:I

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private rangeCursorPaint:Landroid/graphics/Paint;

.field private rangeCursorPosition:Ljava/lang/Float;

.field private rangeGridLinePaint:Landroid/graphics/Paint;

.field private rangeOriginLinePaint:Landroid/graphics/Paint;

.field private rangeSubGridLinePaint:Landroid/graphics/Paint;

.field private renderStack:Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/RenderStack<",
            "+",
            "Lcom/androidplot/xy/XYSeries;",
            "+",
            "Lcom/androidplot/xy/XYSeriesFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    .line 63
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v0

    sput v0, Lcom/androidplot/xy/XYGraphWidget;->DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;)V
    .locals 1

    .line 275
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    const/4 p1, 0x1

    .line 68
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    .line 73
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    .line 75
    new-instance p3, Lcom/androidplot/ui/Insets;

    invoke-direct {p3}, Lcom/androidplot/ui/Insets;-><init>()V

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    .line 80
    new-instance p3, Lcom/androidplot/ui/Insets;

    invoke-direct {p3}, Lcom/androidplot/ui/Insets;-><init>()V

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    .line 119
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    .line 131
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    .line 137
    const-class p3, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/EnumSet;

    .line 143
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDefaultLineLabelStyles()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/Map;

    .line 144
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDefaultLineLabelRenderers()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/Map;

    .line 246
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    const/16 v0, 0x8c

    .line 247
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0xb4

    .line 251
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    .line 256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    .line 258
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    .line 259
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    .line 262
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    const/16 v0, -0x100

    .line 263
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    .line 266
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x40e00000    # 7.0f

    .line 268
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    const/high16 p3, 0x40800000    # 4.0f

    .line 269
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setMarginRight(F)V

    .line 270
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setClippingEnabled(Z)V

    .line 276
    iput-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 277
    new-instance p1, Lcom/androidplot/ui/RenderStack;

    invoke-direct {p1, p2}, Lcom/androidplot/ui/RenderStack;-><init>(Lcom/androidplot/Plot;)V

    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    return-void
.end method

.method static synthetic access$100()F
    .locals 1

    .line 52
    sget v0, Lcom/androidplot/xy/XYGraphWidget;->DEFAULT_LINE_LABEL_TEXT_SIZE_PX:F

    return v0
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 545
    iget-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 546
    iget-object p2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p2}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p2

    .line 547
    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 551
    iget-boolean p2, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-eqz p2, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawData(Landroid/graphics/Canvas;)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGrid(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGrid(Landroid/graphics/Canvas;)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawData(Landroid/graphics/Canvas;)V

    .line 558
    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawCursors(Landroid/graphics/Canvas;)V

    .line 559
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->isDrawMarkersEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 560
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawMarkers(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawCursorLabel(Landroid/graphics/Canvas;)V
    .locals 5

    .line 737
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v0

    .line 738
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorVal()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorVal()Ljava/lang/Number;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getLabelText(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 741
    new-instance v1, Landroid/graphics/RectF;

    .line 742
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 741
    invoke-static {v0, v2}, Lcom/androidplot/util/FontUtils;->getPackedStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 743
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 744
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    .line 743
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 748
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    .line 750
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 749
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 757
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 758
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 761
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    invoke-interface {v2}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 765
    :cond_2
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 766
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v3

    invoke-interface {v3}, Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 765
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawCursors(Landroid/graphics/Canvas;)V
    .locals 9

    .line 708
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    .line 711
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    .line 714
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 713
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 721
    :goto_0
    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 723
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    .line 724
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 726
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    .line 727
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 726
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 731
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawCursorLabel(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected drawData(Landroid/graphics/Canvas;)V
    .locals 5

    .line 782
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 786
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 788
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack;->sync()V

    .line 793
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/RenderStack$StackElement;

    .line 794
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v2

    .line 797
    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3, v2}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRenderer;

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 798
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v1

    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    .line 797
    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/androidplot/xy/XYSeriesRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 803
    :cond_3
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v0, :cond_4

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 803
    iget-boolean v1, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    if-eqz v1, :cond_5

    .line 804
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 806
    :cond_5
    throw v0
.end method

.method protected drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V
    .locals 7

    if-eqz p4, :cond_0

    .line 571
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    sub-float v2, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    add-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 577
    :cond_0
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 578
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    return-void
.end method

.method protected drawGrid(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v6, p0

    .line 612
    iget-boolean v0, v6, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    if-nez v0, :cond_0

    .line 613
    invoke-virtual/range {p0 .. p1}, Lcom/androidplot/xy/XYGraphWidget;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 617
    :cond_0
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v7

    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 621
    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v10, v1

    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-double v12, v1

    const/4 v14, 0x0

    .line 620
    invoke-virtual/range {v7 .. v14}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v1

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v0

    .line 625
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    :goto_0
    move-object v7, v0

    move-wide v8, v1

    .line 628
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/Axis;->DOMAIN:Lcom/androidplot/xy/Axis;

    iget-object v2, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;

    move-result-object v10

    .line 632
    invoke-virtual {v10}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v11

    .line 633
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    sub-double/2addr v0, v8

    const-wide v13, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    sub-double/2addr v0, v13

    div-double/2addr v0, v11

    .line 634
    iget-object v2, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    sub-double/2addr v2, v8

    add-double/2addr v2, v13

    div-double v15, v2, v11

    .line 636
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v5, v0

    :goto_1
    int-to-double v0, v5

    const/16 v17, 0x0

    const/16 v18, 0x1

    cmpg-double v2, v0, v15

    if-gtz v2, :cond_6

    .line 637
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v10}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v19

    mul-double v19, v19, v0

    add-double v2, v2, v19

    mul-double v0, v0, v11

    add-double/2addr v0, v8

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerDomainLabel()I

    move-result v4

    rem-int v4, v5, v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v5, :cond_3

    const/16 v17, 0x1

    :cond_3
    if-eqz v17, :cond_4

    .line 643
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 645
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 647
    :cond_5
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    :goto_3
    double-to-float v1, v0

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYGraphWidget;->drawDomainLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    add-int/lit8 v5, v18, 0x1

    goto :goto_1

    .line 652
    :cond_6
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 655
    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v19

    .line 656
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    iget-object v1, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    iget-object v3, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    const/16 v26, 0x1

    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    .line 655
    invoke-virtual/range {v19 .. v26}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v1

    goto :goto_4

    .line 659
    :cond_7
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v0

    .line 660
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    :goto_4
    move-object v7, v0

    move-wide v8, v1

    .line 663
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/Axis;->RANGE:Lcom/androidplot/xy/Axis;

    iget-object v2, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcom/androidplot/xy/XYStepCalculator;->getStep(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/Axis;Landroid/graphics/RectF;)Lcom/androidplot/xy/Step;

    move-result-object v10

    .line 667
    invoke-virtual {v10}, Lcom/androidplot/xy/Step;->getStepPix()D

    move-result-wide v11

    .line 668
    iget-object v0, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    sub-double/2addr v0, v8

    sub-double/2addr v0, v13

    div-double/2addr v0, v11

    .line 669
    iget-object v2, v6, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, v2

    sub-double/2addr v2, v8

    add-double/2addr v2, v13

    div-double v13, v2, v11

    .line 671
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v15, v0

    :goto_5
    int-to-double v0, v15

    cmpg-double v2, v0, v13

    if-gtz v2, :cond_c

    .line 675
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v10}, Lcom/androidplot/xy/Step;->getStepVal()D

    move-result-wide v4

    mul-double v4, v4, v0

    sub-double/2addr v2, v4

    mul-double v0, v0, v11

    add-double/2addr v0, v8

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerRangeLabel()I

    move-result v4

    rem-int v4, v15, v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v15, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_a

    .line 681
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    .line 683
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    goto :goto_8

    .line 685
    :cond_b
    iget-object v4, v6, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    :goto_8
    double-to-float v1, v0

    .line 687
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, p0

    move v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/XYGraphWidget;->drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method protected drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V
    .locals 8

    .line 601
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->isLineLabelEnabled(Lcom/androidplot/xy/XYGraphWidget$Edge;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;->drawLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;Ljava/lang/Number;FFZ)V

    :cond_0
    return-void
.end method

.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 4

    .line 692
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/YValueMarker;

    .line 694
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2, v3}, Lcom/androidplot/xy/YValueMarker;->draw(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYPlot;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XValueMarker;

    .line 700
    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v3, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2, v3}, Lcom/androidplot/xy/XValueMarker;->draw(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYPlot;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected drawPoint(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/Paint;)V
    .locals 1

    .line 810
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawRangeLine(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Z)V
    .locals 7

    if-eqz p4, :cond_0

    .line 585
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    add-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 591
    :cond_0
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    .line 592
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/XYGraphWidget;->drawLineLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$Edge;Ljava/lang/Number;FFZ)V

    return-void
.end method

.method public getCursorLabelFormatter()Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    return-object v0
.end method

.method protected getDefaultLineLabelRenderers()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;",
            ">;"
        }
    .end annotation

    .line 1053
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1054
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getDefaultLineLabelStyles()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            "Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1045
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    new-instance v2, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    invoke-direct {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getDomainCursorPaint()Landroid/graphics/Paint;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainCursorPosition()Ljava/lang/Float;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    return-object v0
.end method

.method public getDomainCursorVal()Ljava/lang/Number;
    .locals 1

    .line 942
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainCursorPosition()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesX(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getDomainGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDomainSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getGridInsets()Lcom/androidplot/ui/Insets;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    return-object v0
.end method

.method public getGridRect()Landroid/graphics/RectF;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLabelRect()Landroid/graphics/RectF;
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLineExtensionBottom()F
    .locals 1

    .line 1020
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    return v0
.end method

.method public getLineExtensionLeft()F
    .locals 1

    .line 1028
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    return v0
.end method

.method public getLineExtensionRight()F
    .locals 1

    .line 1036
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    return v0
.end method

.method public getLineExtensionTop()F
    .locals 1

    .line 1012
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    return v0
.end method

.method public getLineLabelInsets()Lcom/androidplot/ui/Insets;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    return-object v0
.end method

.method public getLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;

    return-object p1
.end method

.method public getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    return-object p1
.end method

.method public getLinesPerDomainLabel()I
    .locals 1

    .line 894
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    return v0
.end method

.method public getLinesPerRangeLabel()I
    .locals 1

    .line 886
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    return v0
.end method

.method public getRangeCursorPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeCursorPosition()Ljava/lang/Float;
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    return-object v0
.end method

.method public getRangeCursorVal()Ljava/lang/Number;
    .locals 1

    .line 959
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeCursorPosition()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesY(F)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getRangeGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeOriginLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRangeSubGridLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawGridOnTop()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    return v0
.end method

.method public isDrawMarkersEnabled()Z
    .locals 1

    .line 980
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    return v0
.end method

.method public isGridClippingEnabled()Z
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    return v0
.end method

.method public isLineLabelEnabled(Lcom/androidplot/xy/XYGraphWidget$Edge;)Z
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onResize(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 530
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->recalculateSizes(Landroid/graphics/RectF;)V

    return-void
.end method

.method public processAttrs(Landroid/content/res/TypedArray;)V
    .locals 12

    .line 287
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_drawGridOnTop:I

    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->isDrawGridOnTop()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setDrawGridOnTop(Z)V

    .line 288
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabels:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setLineLabelEdges(I)V

    .line 293
    :cond_0
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_gridClippingEnabled:I

    .line 295
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled()Z

    move-result v1

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->setGridClippingEnabled(Z)V

    .line 298
    sget-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v0

    .line 299
    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {p0, v1}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v1

    .line 300
    sget-object v2, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {p0, v2}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v2

    .line 301
    sget-object v3, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {p0, v3}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v3

    .line 303
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationTop:I

    .line 305
    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v5

    .line 303
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 308
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationBottom:I

    .line 310
    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v5

    .line 308
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 313
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationLeft:I

    .line 315
    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v5

    .line 313
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 318
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelRotationRight:I

    .line 320
    invoke-virtual {v3}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result v5

    .line 318
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 323
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionTop:I

    .line 324
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionTop()F

    move-result v5

    .line 323
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionTop(F)V

    .line 325
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionBottom:I

    .line 326
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionBottom()F

    move-result v5

    .line 325
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionBottom(F)V

    .line 327
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionLeft:I

    .line 328
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionLeft()F

    move-result v5

    .line 327
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionLeft(F)V

    .line 329
    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineExtensionRight:I

    .line 330
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineExtensionRight()F

    move-result v5

    .line 329
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/androidplot/xy/XYGraphWidget;->setLineExtensionRight(F)V

    .line 332
    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorTop:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeTop:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignTop:I

    .line 335
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 332
    invoke-static {p1, v0, v4, v5, v6}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 338
    invoke-virtual {v1}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorBottom:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeBottom:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignBottom:I

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 338
    invoke-static {p1, v0, v1, v4, v5}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 344
    invoke-virtual {v2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorLeft:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeLeft:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignLeft:I

    .line 347
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 344
    invoke-static {p1, v0, v1, v2, v4}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 350
    invoke-virtual {v3}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextColorRight:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelTextSizeRight:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelAlignRight:I

    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 350
    invoke-static {p1, v0, v1, v2, v3}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;IILjava/lang/Integer;)V

    .line 356
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getGridInsets()Lcom/androidplot/ui/Insets;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetTop:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetBottom:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetLeft:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_gridInsetRight:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/androidplot/util/AttrUtils;->configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V

    .line 363
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelInsets()Lcom/androidplot/ui/Insets;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetTop:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetBottom:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetLeft:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_lineLabelInsetRight:I

    invoke-static/range {v0 .. v5}, Lcom/androidplot/util/AttrUtils;->configureInsets(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Insets;IIII)V

    .line 371
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_graphWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_graphWidth:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHorizontalPositioning:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_graphHorizontalPosition:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVerticalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVerticalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_graphAnchor:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_graphVisible:I

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 380
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleWidth:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHorizontalPositioning:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleHorizontalPosition:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVerticalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVerticalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleAnchor:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleVisible:I

    invoke-static/range {v0 .. v11}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 389
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleWidth:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHorizontalPositioning:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleHorizontalPosition:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVerticalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVerticalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleAnchor:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleVisible:I

    invoke-static/range {v0 .. v11}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 398
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_graphRotation:I

    invoke-static {p1, p0, v0}, Lcom/androidplot/util/AttrUtils;->configureWidgetRotation(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;I)V

    .line 401
    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginTop:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginBottom:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginLeft:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_graphMarginRight:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingTop:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingBottom:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingLeft:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_graphPaddingRight:I

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/androidplot/util/AttrUtils;->configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V

    .line 409
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainOriginLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainOriginLineColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainOriginLineThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 415
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeOriginLineColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeOriginLineThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 420
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getDomainGridLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainLineColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainLineThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 425
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getRangeGridLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeLineColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeLineThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 430
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_graphBackgroundColor:I

    invoke-static {p1, v0, v1}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    .line 434
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_gridBackgroundColor:I

    invoke-static {p1, v0, v1}, Lcom/androidplot/util/AttrUtils;->setColor(Landroid/content/res/TypedArray;Landroid/graphics/Paint;I)V

    return-void
.end method

.method protected recalculateSizes(Landroid/graphics/RectF;)V
    .locals 1

    if-nez p1, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/androidplot/xy/XYGraphWidget;->getWidgetDimensions()Lcom/androidplot/util/DisplayDimensions;

    move-result-object p1

    iget-object p1, p1, Lcom/androidplot/util/DisplayDimensions;->paddedRect:Landroid/graphics/RectF;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    invoke-static {p1, v0}, Lcom/androidplot/util/RectFUtils;->applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    .line 538
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    invoke-static {p1, v0}, Lcom/androidplot/util/RectFUtils;->applyInsets(Landroid/graphics/RectF;Lcom/androidplot/ui/Insets;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    return-void
.end method

.method protected screenToSeries(Landroid/graphics/PointF;)Lcom/androidplot/xy/XYCoords;
    .locals 6

    .line 448
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 451
    :cond_0
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lcom/androidplot/xy/RectRegion;-><init>(Landroid/graphics/RectF;)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 452
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object p1

    return-object p1
.end method

.method protected screenToSeriesX(F)Ljava/lang/Number;
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 491
    :cond_0
    new-instance v0, Lcom/androidplot/Region;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    float-to-double v1, p1

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 492
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected screenToSeriesX(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 0

    .line 464
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesX(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected screenToSeriesY(F)Ljava/lang/Number;
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_0
    new-instance v0, Lcom/androidplot/Region;

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    float-to-double v1, p1

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    .line 508
    invoke-virtual {p1}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected screenToSeriesY(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 0

    .line 476
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesY(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected seriesToScreen(Lcom/androidplot/xy/XYCoords;)Landroid/graphics/PointF;
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iget-object v1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/androidplot/xy/RectRegion;->transform(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected seriesToScreenX(Ljava/lang/Number;)F
    .locals 9

    .line 519
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v4, p1

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v6, p1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected seriesToScreenY(Ljava/lang/Number;)F
    .locals 9

    .line 524
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getBounds()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object v1

    .line 525
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p1

    iget-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setCursorLabelFormatter(Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->cursorLabelFormatter:Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;

    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 934
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public setCursorPosition(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 924
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setDomainCursorPosition(Ljava/lang/Float;)V

    .line 925
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYGraphWidget;->setRangeCursorPosition(Ljava/lang/Float;)V

    return-void
.end method

.method public setDomainCursorPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setDomainCursorPosition(Ljava/lang/Float;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainCursorPosition:Ljava/lang/Float;

    return-void
.end method

.method public setDomainGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainGridLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setDomainOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 906
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainOriginLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setDomainSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->domainSubGridLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setDrawGridOnTop(Z)V
    .locals 0

    .line 976
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawGridOnTop:Z

    return-void
.end method

.method public setDrawMarkersEnabled(Z)V
    .locals 0

    .line 984
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->drawMarkersEnabled:Z

    return-void
.end method

.method public setGridBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setGridClippingEnabled(Z)V
    .locals 0

    .line 1131
    iput-boolean p1, p0, Lcom/androidplot/xy/XYGraphWidget;->isGridClippingEnabled:Z

    return-void
.end method

.method public setGridInsets(Lcom/androidplot/ui/Insets;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridInsets:Lcom/androidplot/ui/Insets;

    const/4 p1, 0x0

    .line 1095
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->recalculateSizes(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setGridRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->gridRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setLabelRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->labelRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setLineExtensionBottom(F)V
    .locals 0

    .line 1024
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionBottom:F

    return-void
.end method

.method public setLineExtensionLeft(F)V
    .locals 0

    .line 1032
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionLeft:F

    return-void
.end method

.method public setLineExtensionRight(F)V
    .locals 0

    .line 1040
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionRight:F

    return-void
.end method

.method public setLineExtensionTop(F)V
    .locals 0

    .line 1016
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineExtensionTop:F

    return-void
.end method

.method protected setLineLabelEdges(I)V
    .locals 6

    .line 1151
    invoke-static {}, Lcom/androidplot/xy/XYGraphWidget$Edge;->values()[Lcom/androidplot/xy/XYGraphWidget$Edge;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1152
    invoke-static {v3}, Lcom/androidplot/xy/XYGraphWidget$Edge;->access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I

    move-result v4

    and-int/2addr v4, p1

    invoke-static {v3}, Lcom/androidplot/xy/XYGraphWidget$Edge;->access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1153
    iget-object v4, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLineLabelEdges(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/androidplot/xy/XYGraphWidget$Edge;",
            ">;)V"
        }
    .end annotation

    .line 1147
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/EnumSet;

    return-void
.end method

.method public varargs setLineLabelEdges([Lcom/androidplot/xy/XYGraphWidget$Edge;)V
    .locals 1

    .line 1139
    const-class v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1141
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1143
    :cond_0
    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelEdges:Ljava/util/EnumSet;

    return-void
.end method

.method public setLineLabelInsets(Lcom/androidplot/ui/Insets;)V
    .locals 0

    .line 1106
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelInsets:Lcom/androidplot/ui/Insets;

    const/4 p1, 0x0

    .line 1107
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYGraphWidget;->recalculateSizes(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setLineLabelRenderer(Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;)V
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelRenderers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget;->lineLabelStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLinesPerDomainLabel(I)V
    .locals 0

    .line 898
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerDomainLabel:I

    return-void
.end method

.method public setLinesPerRangeLabel(I)V
    .locals 0

    .line 890
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget;->linesPerRangeLabel:I

    return-void
.end method

.method public setRangeCursorPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRangeCursorPosition(Ljava/lang/Float;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeCursorPosition:Ljava/lang/Float;

    return-void
.end method

.method public setRangeGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeGridLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRangeOriginLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeOriginLinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRangeSubGridLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget;->rangeSubGridLinePaint:Landroid/graphics/Paint;

    return-void
.end method
