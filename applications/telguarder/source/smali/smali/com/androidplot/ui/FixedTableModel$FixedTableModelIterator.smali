.class Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;
.super Ljava/lang/Object;
.source "FixedTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/FixedTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedTableModelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field private lastElement:I

.field private lastRect:Landroid/graphics/RectF;

.field private model:Lcom/androidplot/ui/FixedTableModel;

.field private numElements:I

.field private tableRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/androidplot/ui/FixedTableModel;


# direct methods
.method protected constructor <init>(Lcom/androidplot/ui/FixedTableModel;Lcom/androidplot/ui/FixedTableModel;Landroid/graphics/RectF;I)V
    .locals 3

    .line 61
    iput-object p1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->this$0:Lcom/androidplot/ui/FixedTableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    .line 63
    iput-object p3, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    .line 64
    iput p4, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    .line 68
    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget p3, p3, Landroid/graphics/RectF;->top:F

    .line 69
    invoke-virtual {p2}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result p2

    add-float/2addr p3, p2

    invoke-direct {p1, p4, v0, v1, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    return-void
.end method

.method private isColumnFinished()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellHeight()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRowFinished()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v1}, Lcom/androidplot/ui/FixedTableModel;->getCellWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveDown()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private moveDownAndBack()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private moveOver()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method private moveOverAndUp()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 75
    iget v0, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isColumnFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isRowFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/graphics/RectF;
    .locals 3

    const/4 v0, 0x1

    .line 89
    :try_start_0
    iget v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    if-nez v1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    .line 116
    iput v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    return-object v2

    .line 93
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->numElements:I

    if-ge v1, v2, :cond_5

    .line 96
    sget-object v1, Lcom/androidplot/ui/FixedTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    iget-object v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->model:Lcom/androidplot/ui/FixedTableModel;

    invoke-virtual {v2}, Lcom/androidplot/ui/FixedTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isRowFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveDownAndBack()V

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveOver()V

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->isColumnFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveOverAndUp()V

    goto :goto_0

    .line 101
    :cond_4
    invoke-direct {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->moveDown()V

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastRect:Landroid/graphics/RectF;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    return-object v1

    .line 94
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    .line 116
    iget v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->lastElement:I

    .line 117
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/androidplot/ui/FixedTableModel$FixedTableModelIterator;->next()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
