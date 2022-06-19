.class public abstract Lcom/androidplot/ui/widget/LegendWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "LegendWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemT::",
        "Lcom/androidplot/ui/widget/LegendItem;",
        ">",
        "Lcom/androidplot/ui/widget/Widget;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE_DP:F = 20.0f


# instance fields
.field private drawIconBackgroundEnabled:Z

.field private drawIconBorderEnabled:Z

.field private iconBackgroundPaint:Landroid/graphics/Paint;

.field private iconBorderPaint:Landroid/graphics/Paint;

.field private iconSize:Lcom/androidplot/ui/Size;

.field private legendItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItemT;>;"
        }
    .end annotation
.end field

.field private tableModel:Lcom/androidplot/ui/TableModel;

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/Size;)V
    .locals 1

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBackgroundEnabled:Z

    .line 35
    iput-boolean p2, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBorderEnabled:Z

    .line 40
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    const v0, -0x333334

    .line 41
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object p3, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object p3, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p3, -0x1000000

    .line 46
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p2, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/widget/LegendWidget;->setTableModel(Lcom/androidplot/ui/TableModel;)V

    .line 58
    iput-object p4, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    return-void
.end method

.method private getIconRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    .line 96
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    invoke-virtual {v1, p1}, Lcom/androidplot/ui/Size;->getRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 101
    iget p1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v1
.end method

.method protected static getRectCenterY(Landroid/graphics/RectF;)F
    .locals 2

    .line 142
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected beginDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBackgroundEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/androidplot/ui/widget/LegendWidget;->getLegendItems()Ljava/util/List;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/androidplot/ui/widget/LegendWidget;->legendItemComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 65
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/androidplot/ui/widget/LegendWidget;->tableModel:Lcom/androidplot/ui/TableModel;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/androidplot/ui/TableModel;->getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;

    move-result-object p2

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/widget/LegendItem;

    .line 69
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 70
    invoke-direct {p0, v2}, Lcom/androidplot/ui/widget/LegendWidget;->getIconRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 71
    invoke-virtual {p0, p1, v3}, Lcom/androidplot/ui/widget/LegendWidget;->beginDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 72
    invoke-virtual {p0, p1, v3, v1}, Lcom/androidplot/ui/widget/LegendWidget;->drawItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V

    .line 73
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/androidplot/ui/widget/LegendWidget;->finishDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected abstract drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TItemT;)V"
        }
    .end annotation
.end method

.method protected drawItem(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "TItemT;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/ui/widget/LegendWidget;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V

    return-void
.end method

.method protected finishDrawingCell(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/androidplot/ui/widget/LegendItem;)V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBorderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 132
    :cond_0
    invoke-static {p2}, Lcom/androidplot/ui/widget/LegendWidget;->getRectCenterY(Landroid/graphics/RectF;)F

    move-result p2

    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/androidplot/util/FontUtils;->getFontHeight(Landroid/graphics/Paint;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 134
    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint$Align;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {p4}, Lcom/androidplot/ui/widget/LegendItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v1

    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {p4}, Lcom/androidplot/ui/widget/LegendItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    iget p3, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr p3, v1

    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p3, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getIconSize()Lcom/androidplot/ui/Size;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    return-object v0
.end method

.method public getLegendItemComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TItemT;>;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->legendItemComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected abstract getLegendItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItemT;>;"
        }
    .end annotation
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isDrawIconBackgroundEnabled()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBackgroundEnabled:Z

    return v0
.end method

.method public isDrawIconBorderEnabled()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBorderEnabled:Z

    return v0
.end method

.method public setDrawIconBackgroundEnabled(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBackgroundEnabled:Z

    return-void
.end method

.method public setDrawIconBorderEnabled(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->drawIconBorderEnabled:Z

    return-void
.end method

.method public setIconSize(Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->iconSize:Lcom/androidplot/ui/Size;

    return-void
.end method

.method public setLegendItemComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TItemT;>;)V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->legendItemComparator:Ljava/util/Comparator;

    return-void
.end method

.method public declared-synchronized setTableModel(Lcom/androidplot/ui/TableModel;)V
    .locals 0

    monitor-enter p0

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->tableModel:Lcom/androidplot/ui/TableModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/androidplot/ui/widget/LegendWidget;->textPaint:Landroid/graphics/Paint;

    return-void
.end method
