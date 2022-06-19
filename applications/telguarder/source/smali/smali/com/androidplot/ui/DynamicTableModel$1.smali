.class synthetic Lcom/androidplot/ui/DynamicTableModel$1;
.super Ljava/lang/Object;
.source "DynamicTableModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/DynamicTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$ui$TableModel$Axis:[I

.field static final synthetic $SwitchMap$com$androidplot$ui$TableOrder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 187
    invoke-static {}, Lcom/androidplot/ui/TableOrder;->values()[Lcom/androidplot/ui/TableOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v2}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableOrder:[I

    sget-object v3, Lcom/androidplot/ui/TableOrder;->COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v3}, Lcom/androidplot/ui/TableOrder;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :catch_1
    invoke-static {}, Lcom/androidplot/ui/TableModel$Axis;->values()[Lcom/androidplot/ui/TableModel$Axis;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableModel$Axis:[I

    :try_start_2
    sget-object v3, Lcom/androidplot/ui/TableModel$Axis;->ROW:Lcom/androidplot/ui/TableModel$Axis;

    invoke-virtual {v3}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/androidplot/ui/DynamicTableModel$1;->$SwitchMap$com$androidplot$ui$TableModel$Axis:[I

    sget-object v2, Lcom/androidplot/ui/TableModel$Axis;->COLUMN:Lcom/androidplot/ui/TableModel$Axis;

    invoke-virtual {v2}, Lcom/androidplot/ui/TableModel$Axis;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
