.class Lcom/androidplot/xy/XYLegendWidget$1;
.super Ljava/lang/Object;
.source "XYLegendWidget.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/xy/XYLegendWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/androidplot/xy/XYLegendItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/XYLegendWidget;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/XYLegendWidget;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/androidplot/xy/XYLegendWidget$1;->this$0:Lcom/androidplot/xy/XYLegendWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/androidplot/xy/XYLegendItem;Lcom/androidplot/xy/XYLegendItem;)I
    .locals 2

    .line 52
    iget-object v0, p1, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    iget-object v1, p2, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/androidplot/xy/XYLegendItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/androidplot/xy/XYLegendItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    iget-object p2, p2, Lcom/androidplot/xy/XYLegendItem;->type:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {p1, p2}, Lcom/androidplot/xy/XYLegendItem$Type;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/androidplot/xy/XYLegendItem;

    check-cast p2, Lcom/androidplot/xy/XYLegendItem;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYLegendWidget$1;->compare(Lcom/androidplot/xy/XYLegendItem;Lcom/androidplot/xy/XYLegendItem;)I

    move-result p1

    return p1
.end method
