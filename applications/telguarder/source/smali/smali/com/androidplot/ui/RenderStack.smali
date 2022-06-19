.class public Lcom/androidplot/ui/RenderStack;
.super Ljava/lang/Object;
.source "RenderStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/RenderStack$StackElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/ui/RenderStack<",
            "TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation
.end field

.field private final plot:Lcom/androidplot/Plot;


# direct methods
.method public constructor <init>(Lcom/androidplot/Plot;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/androidplot/ui/RenderStack;->plot:Lcom/androidplot/Plot;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidplot/SeriesRegistry;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/androidplot/ui/RenderStack;->elements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public disable(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

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

    .line 98
    invoke-virtual {v1}, Lcom/androidplot/ui/RenderStack$StackElement;->get()Lcom/androidplot/ui/SeriesBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v1, v2}, Lcom/androidplot/ui/RenderStack$StackElement;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/ui/RenderStack<",
            "TSeriesType;TFormatterType;>.StackElement<TSeriesType;TFormatterType;>;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/androidplot/ui/RenderStack;->elements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public sync()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/androidplot/ui/RenderStack;->plot:Lcom/androidplot/Plot;

    .line 85
    invoke-virtual {v0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SeriesBundle;

    .line 87
    invoke-virtual {p0}, Lcom/androidplot/ui/RenderStack;->getElements()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/androidplot/ui/RenderStack$StackElement;

    invoke-direct {v3, p0, v1}, Lcom/androidplot/ui/RenderStack$StackElement;-><init>(Lcom/androidplot/ui/RenderStack;Lcom/androidplot/ui/SeriesBundle;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
