.class Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;
.super Ljava/lang/Object;
.source "DynamicTableModel.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/DynamicTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableModelIterator"
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
.field private calculatedColumns:I

.field private calculatedNumElements:I

.field private calculatedRows:I

.field private dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

.field private isOk:Z

.field lastColumn:I

.field lastElement:I

.field private lastElementRect:Landroid/graphics/RectF;

.field lastRow:I

.field private order:Lcom/androidplot/ui/TableOrder;

.field private tableRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/androidplot/ui/DynamicTableModel;

.field private totalElements:I


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/DynamicTableModel;Lcom/androidplot/ui/DynamicTableModel;Landroid/graphics/RectF;I)V
    .locals 2

    .line 141
    iput-object p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->this$0:Lcom/androidplot/ui/DynamicTableModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    .line 129
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    .line 130
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 142
    iput-object p2, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    .line 143
    iput-object p3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    .line 144
    iput p4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->totalElements:I

    .line 145
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getOrder()Lcom/androidplot/ui/TableOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->order:Lcom/androidplot/ui/TableOrder;

    .line 148
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 149
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    int-to-float v0, p4

    int-to-float p1, p1

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 152
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    int-to-float v0, p4

    int-to-float p1, p1

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 155
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    .line 159
    iput p4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    .line 162
    invoke-virtual {p2}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result p1

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    .line 164
    :goto_0
    iget p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedRows:I

    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedColumns:I

    mul-int p1, p1, v0

    iput p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedNumElements:I

    .line 165
    invoke-virtual {p2, p3, p4}, Lcom/androidplot/ui/DynamicTableModel;->getCellRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->calculatedNumElements:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/graphics/RectF;
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 180
    iget v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    const/4 v2, 0x1

    if-nez v0, :cond_0

    add-int/2addr v0, v2

    .line 181
    iput v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 182
    iget-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 187
    sget-object v3, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    iget-object v4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->order:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v4}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 201
    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v3}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    iget-object v4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v4}, Lcom/androidplot/ui/DynamicTableModel;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt v3, v4, :cond_1

    .line 203
    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 204
    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    .line 205
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 209
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    goto :goto_0

    .line 214
    :cond_2
    iput-boolean v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v3}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    iget-object v4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->dynamicTableModel:Lcom/androidplot/ui/DynamicTableModel;

    invoke-virtual {v4}, Lcom/androidplot/ui/DynamicTableModel;->getNumColumns()I

    move-result v4

    sub-int/2addr v4, v2

    if-lt v3, v4, :cond_4

    .line 191
    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->tableRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 192
    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    .line 193
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastRow:I

    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 197
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastColumn:I

    .line 217
    :goto_0
    iget v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElement:I

    .line 218
    iput-object v0, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->lastElementRect:Landroid/graphics/RectF;

    return-object v0

    .line 176
    :cond_5
    iput-boolean v1, p0, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->isOk:Z

    .line 177
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/androidplot/ui/DynamicTableModel$TableModelIterator;->next()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
