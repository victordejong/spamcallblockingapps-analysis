.class public Lcom/androidplot/pie/PieWidget;
.super Lcom/androidplot/ui/widget/Widget;
.source "PieWidget.java"


# instance fields
.field private pieChart:Lcom/androidplot/pie/PieChart;

.field private renderStack:Lcom/androidplot/ui/RenderStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/RenderStack<",
            "+",
            "Lcom/androidplot/pie/Segment;",
            "+",
            "Lcom/androidplot/pie/SegmentFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/androidplot/ui/widget/Widget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;)V

    .line 35
    iput-object p2, p0, Lcom/androidplot/pie/PieWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    .line 36
    new-instance p1, Lcom/androidplot/ui/RenderStack;

    invoke-direct {p1, p2}, Lcom/androidplot/ui/RenderStack;-><init>(Lcom/androidplot/Plot;)V

    iput-object p1, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    return-void
.end method


# virtual methods
.method protected doOnDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack;->sync()V

    .line 42
    iget-object v0, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v0}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/RenderStack$StackElement;

    .line 43
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/androidplot/pie/PieWidget;->pieChart:Lcom/androidplot/pie/PieChart;

    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/pie/PieChart;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v2

    check-cast v2, Lcom/androidplot/pie/PieRenderer;

    .line 45
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v1

    iget-object v3, p0, Lcom/androidplot/pie/PieWidget;->renderStack:Lcom/androidplot/ui/RenderStack;

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/androidplot/pie/PieRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lcom/androidplot/ui/SeriesBundle;Lcom/androidplot/ui/RenderStack;)V

    goto :goto_0

    :cond_1
    return-void
.end method
