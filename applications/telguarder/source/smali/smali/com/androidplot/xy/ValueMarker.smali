.class public abstract Lcom/androidplot/xy/ValueMarker;
.super Ljava/lang/Object;
.source "ValueMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PositionMetricType:",
        "Lcom/androidplot/ui/PositionMetric;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MARKER_LABEL_SPACING:I = 0x2


# instance fields
.field private linePaint:Landroid/graphics/Paint;

.field private text:Ljava/lang/String;

.field private textMargin:I

.field private textOrientation:Lcom/androidplot/ui/TextOrientation;

.field private textPaint:Landroid/graphics/Paint;

.field private textPosition:Lcom/androidplot/ui/PositionMetric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPositionMetricType;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    .line 64
    iput-object p3, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    .line 65
    iput-object p2, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;II)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 84
    iget-object p1, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "TPositionMetricType;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/xy/ValueMarker;-><init>(Ljava/lang/Number;Ljava/lang/String;Lcom/androidplot/ui/PositionMetric;)V

    .line 78
    iput-object p4, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    .line 79
    iput-object p5, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYPlot;Landroid/graphics/RectF;)V
.end method

.method protected drawMarkerText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/RectF;FF)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/androidplot/xy/ValueMarker;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p4, v0

    sub-float/2addr p5, v0

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p5, v1

    invoke-virtual {v0, p4, p5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 163
    iget p4, v0, Landroid/graphics/RectF;->right:F

    iget p5, p3, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x0

    cmpl-float p4, p4, p5

    if-lez p4, :cond_0

    .line 164
    iget p4, v0, Landroid/graphics/RectF;->right:F

    iget p5, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p5

    neg-float p4, p4

    invoke-virtual {v0, p4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 167
    :cond_0
    iget p4, v0, Landroid/graphics/RectF;->top:F

    iget p5, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p4, p4, p5

    if-gez p4, :cond_1

    .line 168
    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget p4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p4

    invoke-virtual {v0, v1, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    :cond_1
    iget p3, v0, Landroid/graphics/RectF;->left:F

    iget p4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/androidplot/xy/ValueMarker;->getTextPaint()Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getLinePaint()Landroid/graphics/Paint;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMargin()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    return v0
.end method

.method public getTextOrientation()Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textOrientation:Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPosition()Lcom/androidplot/ui/PositionMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPositionMetricType;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->linePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextMargin(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/androidplot/xy/ValueMarker;->textMargin:I

    return-void
.end method

.method public setTextOrientation(Lcom/androidplot/ui/TextOrientation;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textOrientation:Lcom/androidplot/ui/TextOrientation;

    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextPosition(Lcom/androidplot/ui/PositionMetric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPositionMetricType;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->textPosition:Lcom/androidplot/ui/PositionMetric;

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/androidplot/xy/ValueMarker;->value:Ljava/lang/Number;

    return-void
.end method
