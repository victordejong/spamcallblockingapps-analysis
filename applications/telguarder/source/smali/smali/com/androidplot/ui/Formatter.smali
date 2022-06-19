.class public abstract Lcom/androidplot/ui/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlotType:",
        "Lcom/androidplot/Plot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isLegendIconEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/Formatter;->configure(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public configure(Landroid/content/Context;I)V
    .locals 0

    .line 52
    :try_start_0
    invoke-static {p1, p0, p2}, Lcom/halfhp/fig/Fig;->configure(Landroid/content/Context;Ljava/lang/Object;I)V
    :try_end_0
    .catch Lcom/halfhp/fig/FigException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected abstract doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPlotType;)",
            "Lcom/androidplot/ui/SeriesRenderer;"
        }
    .end annotation
.end method

.method public abstract getRendererClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation
.end method

.method public getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">(TPlotType;)TT;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/Formatter;->doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public isLegendIconEnabled()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    return v0
.end method

.method public setLegendIconEnabled(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/androidplot/ui/Formatter;->isLegendIconEnabled:Z

    return-void
.end method
