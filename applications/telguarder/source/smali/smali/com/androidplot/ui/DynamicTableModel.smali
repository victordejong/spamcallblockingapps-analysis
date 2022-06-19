.class public Lcom/androidplot/ui/DynamicTableModel;
.super Lcom/androidplot/ui/TableModel;
.source "DynamicTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
    }
.end annotation


# instance fields
.field private numColumns:I

.field private numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 47
    sget-object v0, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/ui/DynamicTableModel;-><init>(IILcom/androidplot/ui/TableOrder;)V

    return-void
.end method

.method public constructor <init>(IILcom/androidplot/ui/TableOrder;)V
    .locals 0

    .line 52
    invoke-direct {p0, p3}, Lcom/androidplot/ui/TableModel;-><init>(Lcom/androidplot/ui/TableOrder;)V

    .line 53
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    .line 54
    iput p2, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    return-void
.end method

.method private calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F
    .locals 2

    .line 91
    sget-object v0, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableModel$Axis:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    goto :goto_1

    .line 97
    :cond_0
    iget p2, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    .line 98
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_0

    .line 93
    :cond_1
    iget p2, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    .line 94
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    :goto_0
    move v1, p2

    move p2, p1

    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    int-to-float p1, p1

    :goto_2
    div-float/2addr p2, p1

    return p2

    :cond_2
    int-to-float p1, p3

    goto :goto_2
.end method


# virtual methods
.method public getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 3

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 71
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 72
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 73
    iget v1, p1, Landroid/graphics/RectF;->top:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 74
    iget v1, p1, Landroid/graphics/RectF;->left:F

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    invoke-direct {p0, p1, v2, p2}, Lcom/androidplot/ui/DynamicTableModel;->calculateCellSize(Landroid/graphics/RectF;Lcom/androidplot/ui/TableModel$Axis;I)F

    move-result p1

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    return-object v0
.end method

.method public getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
    .locals 1

    .line 59
    new-instance v0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;-><init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method public bridge synthetic getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/DynamicTableModel;->getIterator(Landroid/graphics/RectF;I)Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;

    move-result-object p1

    return-object p1
.end method

.method public getNumColumns()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    return v0
.end method

.method public setNumColumns(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numColumns:I

    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel;->numRows:I

    return-void
.end method
