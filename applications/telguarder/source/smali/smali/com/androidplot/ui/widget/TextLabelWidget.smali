.class public Lcom/androidplot/ui/widget/TextLabelWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "TextLabelWidget.java"


# instance fields
.field private autoPackEnabled:Z

.field private labelPaint:Landroid/graphics/Paint;

.field private orientation:Lcom/androidplot/ui/TextOrientation;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V
    .locals 4

    .line 47
    new-instance v0, Lcom/androidplot/ui/Size;

    sget-object v1, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    sget-object v2, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setClippingEnabled(Z)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    .line 49
    iput-object p3, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Ljava/lang/String;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p3, p4}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 100
    sget-object v1, Lcom/androidplot/ui/Anchor;->CENTER:Lcom/androidplot/ui/Anchor;

    invoke-static {p2, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->getAnchorCoordinates(Landroid/graphics/RectF;Lcom/androidplot/ui/Anchor;)Landroid/graphics/PointF;

    move-result-object p2

    .line 104
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    sget-object p2, Lcom/androidplot/ui/widget/TextLabelWidget$1;->$SwitchMap$com$androidplot$ui$TextOrientation:[I

    iget-object v1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v1}, Lcom/androidplot/ui/TextOrientation;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const/high16 p2, 0x42b40000    # 90.0f

    .line 113
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 117
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not yet implemented for TextLabelWidget."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 110
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 119
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    throw p2

    :cond_4
    :goto_1
    return-void
.end method

.method public getLabelPaint()Landroid/graphics/Paint;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOrientation()Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPackEnabled()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    return v0
.end method

.method protected onMetricsChanged(Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 54
    iget-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method

.method public onPostInit()V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method

.method public pack()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/util/FontUtils;->getStringDimensions(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    sget-object v1, Lcom/androidplot/ui/widget/TextLabelWidget$1;->$SwitchMap$com$androidplot$ui$TextOrientation:[I

    iget-object v2, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v2}, Lcom/androidplot/ui/TextOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v1, Lcom/androidplot/ui/Size;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-virtual {p0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setSize(Lcom/androidplot/ui/Size;)V

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->refreshLayout()V

    return-void
.end method

.method public setAutoPackEnabled(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method

.method public setLabelPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->labelPaint:Landroid/graphics/Paint;

    .line 134
    iget-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/androidplot/ui/TextOrientation;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->orientation:Lcom/androidplot/ui/TextOrientation;

    .line 145
    iget-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->text:Ljava/lang/String;

    .line 163
    iget-boolean p1, p0, Lcom/androidplot/ui/widget/TextLabelWidget;->autoPackEnabled:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    :cond_0
    return-void
.end method
