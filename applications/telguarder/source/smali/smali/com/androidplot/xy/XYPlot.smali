.class public Lcom/androidplot/xy/XYPlot;
.super Lcom/androidplot/Plot;
.source "XYPlot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/XYPlot$PreviewMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot<",
        "Lcom/androidplot/xy/XYSeries;",
        "Lcom/androidplot/xy/XYSeriesFormatter;",
        "Lcom/androidplot/xy/XYSeriesRenderer;",
        "Lcom/androidplot/xy/XYSeriesBundle;",
        "Lcom/androidplot/xy/XYSeriesRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_H_DP:I = 0xa

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_W_DP:I = 0x50

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_X_OFFSET_DP:I = 0x14

.field private static final DEFAULT_DOMAIN_LABEL_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_GRAPH_WIDGET_H_DP:I = 0x12

.field private static final DEFAULT_GRAPH_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_GRAPH_WIDGET_X_OFFSET_DP:I = 0x0

.field private static final DEFAULT_GRAPH_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_LEGEND_WIDGET_H_DP:I = 0xa

.field private static final DEFAULT_LEGEND_WIDGET_ICON_SIZE_DP:I = 0x7

.field private static final DEFAULT_LEGEND_WIDGET_X_OFFSET_DP:I = 0x28

.field private static final DEFAULT_LEGEND_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_PLOT_BOTTOM_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_LEFT_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_RIGHT_MARGIN_DP:I = 0x1

.field private static final DEFAULT_PLOT_TOP_MARGIN_DP:I = 0x1

.field private static final DEFAULT_RANGE_LABEL_WIDGET_H_DP:I = 0x32

.field private static final DEFAULT_RANGE_LABEL_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_RANGE_LABEL_WIDGET_X_OFFSET_DP:I

.field private static final DEFAULT_RANGE_LABEL_WIDGET_Y_OFFSET_DP:I


# instance fields
.field private bounds:Lcom/androidplot/xy/RectRegion;

.field private calculatedOrigin:Lcom/androidplot/xy/XYCoords;

.field private constraints:Lcom/androidplot/xy/XYConstraints;

.field private domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private domainOriginExtent:Ljava/lang/Number;

.field private domainStepModel:Lcom/androidplot/xy/StepModel;

.field private domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private graph:Lcom/androidplot/xy/XYGraphWidget;

.field private final innerLimits:Lcom/androidplot/xy/RectRegion;

.field private legend:Lcom/androidplot/xy/XYLegendWidget;

.field private final outerLimits:Lcom/androidplot/xy/RectRegion;

.field private prevMaxX:Ljava/lang/Number;

.field private prevMaxY:Ljava/lang/Number;

.field private prevMinX:Ljava/lang/Number;

.field private prevMinY:Ljava/lang/Number;

.field private previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

.field private rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private rangeOriginExtent:Ljava/lang/Number;

.field private rangeStepModel:Lcom/androidplot/xy/StepModel;

.field private rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

.field private userDomainOrigin:Ljava/lang/Number;

.field private userRangeOrigin:Ljava/lang/Number;

.field private xValueMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/xy/XValueMarker;",
            ">;"
        }
    .end annotation
.end field

.field private yValueMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/xy/YValueMarker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance p1, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {p1}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 94
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0, p2, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {p1}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 109
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 110
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 115
    new-instance p1, Lcom/androidplot/xy/XYCoords;

    invoke-direct {p1}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 120
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance p1, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {p1}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 94
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, p2, p3}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {p1}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 109
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 110
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 115
    new-instance p1, Lcom/androidplot/xy/XYCoords;

    invoke-direct {p1}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 120
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {p1}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 94
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0, p2, v0}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {p1}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 109
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 110
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 115
    new-instance p1, Lcom/androidplot/xy/XYCoords;

    invoke-direct {p1}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 120
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    .line 91
    new-instance p1, Lcom/androidplot/xy/XYConstraints;

    invoke-direct {p1}, Lcom/androidplot/xy/XYConstraints;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 94
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, p2, p3}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {p1}, Lcom/androidplot/xy/RectRegion;->withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 109
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 110
    new-instance p1, Lcom/androidplot/xy/RectRegion;

    invoke-direct {p1}, Lcom/androidplot/xy/RectRegion;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 115
    new-instance p1, Lcom/androidplot/xy/XYCoords;

    invoke-direct {p1}, Lcom/androidplot/xy/XYCoords;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 120
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    return-void
.end method

.method private static applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 591
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    .line 594
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    :cond_2
    move-object p2, p0

    :cond_3
    return-object p2
.end method

.method private static distance(DD)D
    .locals 1

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    sub-double/2addr p0, p2

    return-wide p0

    :cond_0
    sub-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public addMarker(Lcom/androidplot/xy/XValueMarker;)Z
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addMarker(Lcom/androidplot/xy/YValueMarker;)Z
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public calculateMinMaxVals()V
    .locals 6

    .line 460
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isMinXSet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    .line 461
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isMaxXSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    .line 462
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isMinYSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->prevMinY:Ljava/lang/Number;

    .line 463
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isMaxYSet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMaxY:Ljava/lang/Number;

    .line 465
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getMinX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 466
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 467
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getMinY()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 468
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 471
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v0

    if-nez v0, :cond_7

    .line 473
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/util/SeriesUtils;->minMax(Lcom/androidplot/xy/XYConstraints;Ljava/util/List;)Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinXSet()Z

    move-result v1

    if-nez v1, :cond_4

    .line 476
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 478
    :cond_4
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxXSet()Z

    move-result v1

    if-nez v1, :cond_5

    .line 479
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 482
    :cond_5
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMinYSet()Z

    move-result v1

    if-nez v1, :cond_6

    .line 483
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 485
    :cond_6
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->isMaxYSet()Z

    move-result v1

    if-nez v1, :cond_7

    .line 486
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 493
    :cond_7
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 498
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 499
    invoke-virtual {v3}, Lcom/androidplot/xy/XYConstraints;->getDomainUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v5}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v5

    .line 498
    invoke-virtual {p0, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 500
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v5}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v5

    .line 498
    invoke-static {v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 501
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 502
    invoke-virtual {v3}, Lcom/androidplot/xy/XYConstraints;->getDomainLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 503
    invoke-virtual {v5}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v5

    .line 501
    invoke-virtual {p0, v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 504
    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v5}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v5

    .line 501
    invoke-static {v3, v4, v5}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_3

    .line 507
    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain Framing Model not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 508
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_9
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateDomainMinMaxForOriginModel()V

    .line 511
    :goto_3
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYConstraints;->getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_a

    .line 516
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYSeriesRegistry;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 517
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 518
    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getRangeUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMaxY:Ljava/lang/Number;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 519
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    .line 517
    invoke-virtual {p0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    .line 519
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v3

    .line 517
    invoke-static {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 520
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 521
    invoke-virtual {v1}, Lcom/androidplot/xy/XYConstraints;->getRangeLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMinY:Ljava/lang/Number;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 522
    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v3

    .line 520
    invoke-virtual {p0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    .line 522
    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v3}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v3

    .line 520
    invoke-static {v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->applyUserMinMax(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    goto :goto_4

    .line 526
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range Framing Model not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    .line 527
    invoke-virtual {v2}, Lcom/androidplot/xy/XYConstraints;->getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_b
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->updateRangeMinMaxForOriginModel()V

    .line 531
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 532
    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    .line 534
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 535
    invoke-virtual {v1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v1

    :goto_6
    iput-object v1, v0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    return-void
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;)V
    .locals 2

    .line 606
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/androidplot/xy/XYPlot;->centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    return-void
.end method

.method public centerOnDomainOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    sget-object v1, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYConstraints;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 622
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserDomainOrigin(Ljava/lang/Number;)V

    .line 623
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->domainOriginExtent:Ljava/lang/Number;

    .line 624
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 626
    iget-object p1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    invoke-virtual {p0, p3, p1, p2}, Lcom/androidplot/xy/XYPlot;->getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;

    move-result-object p1

    .line 627
    iget-object p2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Lcom/androidplot/xy/XYConstraints;->setMinX(Ljava/lang/Number;)V

    .line 628
    iget-object p2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 p3, 0x1

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxX(Ljava/lang/Number;)V

    return-void

    .line 619
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Origin param cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;)V
    .locals 2

    .line 637
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/androidplot/xy/XYPlot;->centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    return-void
.end method

.method public centerOnRangeOrigin(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    sget-object v1, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYConstraints;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    .line 654
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserRangeOrigin(Ljava/lang/Number;)V

    .line 655
    iput-object p2, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginExtent:Ljava/lang/Number;

    .line 656
    iput-object p3, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 658
    iget-object p1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    invoke-virtual {p0, p3, p1, p2}, Lcom/androidplot/xy/XYPlot;->getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;

    move-result-object p1

    .line 659
    iget-object p2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 p3, 0x0

    aget-object p3, p1, p3

    invoke-virtual {p2, p3}, Lcom/androidplot/xy/XYConstraints;->setMinY(Ljava/lang/Number;)V

    .line 660
    iget-object p2, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    const/4 p3, 0x1

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxY(Ljava/lang/Number;)V

    return-void

    .line 651
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Origin param cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containsPoint(FF)Z
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/XYGraphWidget;->containsPoint(FF)Z

    move-result p1

    return p1
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 361
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/XYPlot;->containsPoint(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method protected getCalculatedLowerBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .line 561
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 572
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_2

    return-object p2

    .line 577
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoundaryMode not supported: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p2, :cond_2

    .line 567
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    return-object p2

    :cond_2
    return-object p3
.end method

.method protected getCalculatedUpperBoundary(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .line 539
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    invoke-virtual {p1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 550
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    goto :goto_0

    .line 555
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BoundaryMode not supported: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p2, :cond_2

    .line 545
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    return-object p2
.end method

.method public getDomainOrigin()Ljava/lang/Number;
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    return-object v0
.end method

.method public getDomainStepMode()Lcom/androidplot/xy/StepMode;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v0

    return-object v0
.end method

.method public getDomainStepModel()Lcom/androidplot/xy/StepModel;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    return-object v0
.end method

.method public getDomainStepValue()D
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method public getGraph()Lcom/androidplot/xy/XYGraphWidget;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    return-object v0
.end method

.method public getInnerLimits()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->innerLimits:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getLegend()Lcom/androidplot/xy/XYLegendWidget;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    return-object v0
.end method

.method public getLinesPerDomainLabel()I
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerDomainLabel()I

    move-result v0

    return v0
.end method

.method public getLinesPerRangeLabel()I
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYGraphWidget;->getLinesPerRangeLabel()I

    move-result v0

    return v0
.end method

.method public getOrigin()Lcom/androidplot/xy/XYCoords;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    return-object v0
.end method

.method protected getOriginMinMax(Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Ljava/lang/Number;)[Ljava/lang/Number;
    .locals 8

    .line 671
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v0, :cond_0

    .line 672
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 673
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    new-array p3, v3, [Ljava/lang/Number;

    sub-double v6, p1, v4

    .line 674
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p3, v2

    add-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p3, v1

    return-object p3

    :cond_0
    new-array p1, v3, [Ljava/lang/Number;

    const/4 p2, 0x0

    aput-object p2, p1, v2

    aput-object p2, p1, v1

    return-object p1
.end method

.method public getOuterLimits()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->outerLimits:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getRangeOrigin()Ljava/lang/Number;
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->calculatedOrigin:Lcom/androidplot/xy/XYCoords;

    iget-object v0, v0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeStepMode()Lcom/androidplot/xy/StepMode;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getMode()Lcom/androidplot/xy/StepMode;

    move-result-object v0

    return-object v0
.end method

.method public getRangeStepModel()Lcom/androidplot/xy/StepModel;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    return-object v0
.end method

.method public getRangeStepValue()D
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method protected bridge synthetic getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistryInstance()Lcom/androidplot/xy/XYSeriesRegistry;

    move-result-object v0

    return-object v0
.end method

.method protected getRegistryInstance()Lcom/androidplot/xy/XYSeriesRegistry;
    .locals 1

    .line 1183
    new-instance v0, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-direct {v0}, Lcom/androidplot/xy/XYSeriesRegistry;-><init>()V

    return-object v0
.end method

.method public getXVal(F)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesX(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getXVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesX(Landroid/graphics/PointF;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected getXValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XValueMarker;",
            ">;"
        }
    .end annotation

    .line 1154
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYVal(F)Ljava/lang/Number;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesY(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getYVal(Landroid/graphics/PointF;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesY(Landroid/graphics/PointF;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected getYValueMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/YValueMarker;",
            ">;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 333
    invoke-super {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V

    .line 335
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->calculateMinMaxVals()V

    .line 340
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {p1, p0}, Lcom/androidplot/xy/XYSeriesRegistry;->estimate(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method

.method protected onAfterConfig()V
    .locals 28

    move-object/from16 v0, p0

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    sget-object v1, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I

    iget-object v2, v0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_0

    .line 276
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected preview mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Not yet implemented."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    new-instance v1, Lcom/androidplot/xy/CandlestickSeries;

    const/4 v8, 0x6

    new-array v8, v8, [Lcom/androidplot/xy/CandlestickSeries$Item;

    new-instance v18, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    move-object/from16 v9, v18

    invoke-direct/range {v9 .. v17}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v18, v8, v2

    new-instance v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    const-wide/high16 v22, 0x4032000000000000L    # 18.0

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v2, v8, v5

    new-instance v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/high16 v12, 0x4026000000000000L    # 11.0

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v2, v8, v6

    new-instance v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const-wide/high16 v21, 0x4031000000000000L    # 17.0

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    const-wide/high16 v25, 0x402e000000000000L    # 15.0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v26}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v2, v8, v7

    new-instance v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v2, v8, v4

    new-instance v2, Lcom/androidplot/xy/CandlestickSeries$Item;

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    const-wide/high16 v21, 0x4030000000000000L    # 16.0

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v26}, Lcom/androidplot/xy/CandlestickSeries$Item;-><init>(DDDD)V

    aput-object v2, v8, v3

    invoke-direct {v1, v8}, Lcom/androidplot/xy/CandlestickSeries;-><init>([Lcom/androidplot/xy/CandlestickSeries$Item;)V

    .line 269
    new-instance v2, Lcom/androidplot/xy/CandlestickFormatter;

    invoke-direct {v2}, Lcom/androidplot/xy/CandlestickFormatter;-><init>()V

    invoke-static {v0, v2, v1}, Lcom/androidplot/xy/CandlestickMaker;->make(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/CandlestickFormatter;Lcom/androidplot/xy/CandlestickSeries;)V

    goto/16 :goto_0

    .line 250
    :cond_2
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    new-array v8, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v10, "Red"

    invoke-direct {v1, v8, v9, v10}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v8, Lcom/androidplot/xy/LineAndPointFormatter;

    const/high16 v9, -0x10000

    .line 252
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v10, v10}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 250
    invoke-virtual {v0, v1, v8}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 253
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    new-array v8, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v11, "Green"

    invoke-direct {v1, v8, v9, v11}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v8, Lcom/androidplot/xy/LineAndPointFormatter;

    const v9, -0xff0100

    .line 255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v10, v10, v10}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 253
    invoke-virtual {v0, v1, v8}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 256
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries;

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v4, "Blue"

    invoke-direct {v1, v2, v3, v4}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/androidplot/xy/LineAndPointFormatter;

    const v3, -0xffff01

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v10, v10, v10}, Lcom/androidplot/xy/LineAndPointFormatter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/androidplot/xy/PointLabelFormatter;)V

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected onPreInit()V
    .locals 19

    move-object/from16 v6, p0

    .line 153
    new-instance v7, Lcom/androidplot/xy/XYLegendWidget;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v3, Lcom/androidplot/ui/Size;

    const/high16 v8, 0x41200000    # 10.0f

    .line 157
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    sget-object v2, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    sget-object v4, Lcom/androidplot/ui/SizeMode;->RELATIVE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v3, v0, v2, v5, v4}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    new-instance v4, Lcom/androidplot/ui/DynamicTableModel;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {v4, v0, v2}, Lcom/androidplot/ui/DynamicTableModel;-><init>(II)V

    new-instance v5, Lcom/androidplot/ui/Size;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 161
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v9, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    .line 163
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    sget-object v10, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v5, v2, v9, v0, v10}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    move-object v0, v7

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/XYLegendWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V

    iput-object v7, v6, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    .line 166
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x41900000    # 18.0f

    .line 170
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    .line 172
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {v0, v1, v6, v2}, Lcom/androidplot/xy/XYGraphWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/ui/Size;)V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xbbbbbc

    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v1, v6, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v1, v0}, Lcom/androidplot/xy/XYGraphWidget;->setBackgroundPaint(Landroid/graphics/Paint;)V

    .line 181
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    .line 184
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x42a00000    # 80.0f

    .line 186
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 189
    new-instance v0, Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v3, 0x42480000    # 50.0f

    .line 192
    invoke-static {v3}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    .line 194
    invoke-static {v8}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientation;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 198
    iget-object v7, v6, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    const/high16 v0, 0x42200000    # 40.0f

    .line 199
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v8

    sget-object v9, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/HorizontalPositioning;

    const/4 v0, 0x0

    .line 201
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v10

    sget-object v11, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v12, Lcom/androidplot/ui/Anchor;->RIGHT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 198
    invoke-virtual/range {v7 .. v12}, Lcom/androidplot/xy/XYLegendWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 205
    iget-object v13, v6, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    .line 206
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v14

    sget-object v15, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/HorizontalPositioning;

    .line 208
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v16

    sget-object v17, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v18, Lcom/androidplot/ui/Anchor;->RIGHT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 205
    invoke-virtual/range {v13 .. v18}, Lcom/androidplot/xy/XYGraphWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 212
    iget-object v7, v6, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 213
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v8

    sget-object v9, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    .line 215
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v10

    sget-object v11, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v12, Lcom/androidplot/ui/Anchor;->LEFT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 212
    invoke-virtual/range {v7 .. v12}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 219
    iget-object v13, v6, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 220
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v14

    sget-object v15, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_LEFT:Lcom/androidplot/ui/HorizontalPositioning;

    .line 222
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v16

    sget-object v17, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v18, Lcom/androidplot/ui/Anchor;->LEFT_MIDDLE:Lcom/androidplot/ui/Anchor;

    .line 219
    invoke-virtual/range {v13 .. v18}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->pack()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 231
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/androidplot/xy/XYPlot;->setPlotMarginLeft(F)V

    .line 232
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/androidplot/xy/XYPlot;->setPlotMarginRight(F)V

    .line 233
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    invoke-virtual {v6, v1}, Lcom/androidplot/xy/XYPlot;->setPlotMarginTop(F)V

    .line 234
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/androidplot/xy/XYPlot;->setPlotMarginBottom(F)V

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Lcom/androidplot/xy/StepModel;

    sget-object v1, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/xy/StepModel;-><init>(Lcom/androidplot/xy/StepMode;D)V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    .line 240
    new-instance v0, Lcom/androidplot/xy/StepModel;

    sget-object v1, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/androidplot/xy/StepModel;-><init>(Lcom/androidplot/xy/StepMode;D)V

    iput-object v0, v6, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    return-void
.end method

.method protected processAttrs(Landroid/content/res/TypedArray;)V
    .locals 12

    .line 283
    invoke-static {}, Lcom/androidplot/xy/XYPlot$PreviewMode;->values()[Lcom/androidplot/xy/XYPlot$PreviewMode;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_previewMode:I

    sget-object v2, Lcom/androidplot/xy/XYPlot$PreviewMode;->LineAndPoint:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 284
    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v2

    .line 283
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/androidplot/xy/XYPlot;->previewMode:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 286
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 291
    :cond_0
    sget v0, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepModel()Lcom/androidplot/xy/StepModel;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainStepMode:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainStep:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V

    .line 299
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepModel()Lcom/androidplot/xy/StepModel;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeStepMode:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeStep:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureStep(Landroid/content/res/TypedArray;Lcom/androidplot/xy/StepModel;II)V

    .line 303
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_domainTitleTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 307
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_rangeTitleTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 311
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYLegendWidget;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->xy_XYPlot_legendTextColor:I

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendTextSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureTextPaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    .line 316
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/xy/XYLegendWidget;->getIconSize()Lcom/androidplot/ui/Size;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_legendIconWidth:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/androidplot/util/AttrUtils;->configureSize(Landroid/content/res/TypedArray;Lcom/androidplot/ui/Size;IIII)V

    .line 321
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getLegend()Lcom/androidplot/xy/XYLegendWidget;

    move-result-object v1

    sget v2, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHeightMode:I

    sget v3, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHeight:I

    sget v4, Lcom/androidplot/R$styleable;->xy_XYPlot_legendWidthMode:I

    sget v5, Lcom/androidplot/R$styleable;->xy_XYPlot_legendWidth:I

    sget v6, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHorizontalPositioning:I

    sget v7, Lcom/androidplot/R$styleable;->xy_XYPlot_legendHorizontalPosition:I

    sget v8, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVerticalPositioning:I

    sget v9, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVerticalPosition:I

    sget v10, Lcom/androidplot/R$styleable;->xy_XYPlot_legendAnchor:I

    sget v11, Lcom/androidplot/R$styleable;->xy_XYPlot_legendVisible:I

    invoke-static/range {v0 .. v11}, Lcom/androidplot/util/AttrUtils;->configureWidget(Landroid/content/res/TypedArray;Lcom/androidplot/ui/widget/Widget;IIIIIIIIII)V

    .line 328
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->processAttrs(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public removeMarker(Lcom/androidplot/xy/XValueMarker;)Lcom/androidplot/xy/XValueMarker;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XValueMarker;

    return-object p1
.end method

.method public removeMarker(Lcom/androidplot/xy/YValueMarker;)Lcom/androidplot/xy/YValueMarker;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/YValueMarker;

    return-object p1
.end method

.method public removeMarkers()I
    .locals 2

    .line 1099
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeXMarkers()I

    move-result v0

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->removeYMarkers()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public removeXMarkers()I
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1145
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->xValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return v0
.end method

.method public removeYMarkers()I
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1109
    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->yValueMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return v0
.end method

.method public screenToSeriesX(F)Ljava/lang/Number;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesX(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public screenToSeriesY(F)Ljava/lang/Number;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeriesY(F)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public screentoSeries(Landroid/graphics/PointF;)Lcom/androidplot/xy/XYCoords;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->screenToSeries(Landroid/graphics/PointF;)Lcom/androidplot/xy/XYCoords;

    move-result-object p1

    return-object p1
.end method

.method public seriesToScreen(Lcom/androidplot/xy/XYCoords;)Landroid/graphics/PointF;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->seriesToScreen(Lcom/androidplot/xy/XYCoords;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public seriesToScreenX(Ljava/lang/Number;)F
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->seriesToScreenX(Ljava/lang/Number;)F

    move-result p1

    return p1
.end method

.method public seriesToScreenY(Ljava/lang/Number;)F
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->seriesToScreenY(Ljava/lang/Number;)F

    move-result p1

    return p1
.end method

.method public setCursorPosition(FF)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public setCursorPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setCursorPosition(Landroid/graphics/PointF;)V

    return-void
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    monitor-enter p0

    .line 910
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 911
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    monitor-enter p0

    .line 897
    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    return-void
.end method

.method public setDomainLabel(Ljava/lang/String;)V
    .locals 1

    .line 874
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setDomainLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 974
    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinX(Ljava/lang/Number;)V

    .line 975
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 976
    sget-object p1, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDomainStep(Lcom/androidplot/xy/StepMode;D)V
    .locals 0

    .line 824
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainStepMode(Lcom/androidplot/xy/StepMode;)V

    .line 825
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setDomainStepValue(D)V

    return-void
.end method

.method public setDomainStepMode(Lcom/androidplot/xy/StepMode;)V
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    return-void
.end method

.method public setDomainStepModel(Lcom/androidplot/xy/StepModel;)V
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    return-void
.end method

.method public setDomainStepValue(D)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->domainStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    return-void
.end method

.method public setDomainTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->domainTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-void
.end method

.method public declared-synchronized setDomainUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 954
    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxX(Ljava/lang/Number;)V

    .line 955
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 956
    sget-object p1, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setGraph(Lcom/androidplot/xy/XYGraphWidget;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    return-void
.end method

.method public setLegend(Lcom/androidplot/xy/XYLegendWidget;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->legend:Lcom/androidplot/xy/XYLegendWidget;

    return-void
.end method

.method public setLinesPerDomainLabel(I)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setLinesPerDomainLabel(I)V

    return-void
.end method

.method public setLinesPerRangeLabel(I)V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->graph:Lcom/androidplot/xy/XYGraphWidget;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYGraphWidget;->setLinesPerRangeLabel(I)V

    return-void
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    monitor-enter p0

    .line 935
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 936
    invoke-virtual {p0, p3, p4}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    monitor-enter p0

    .line 922
    :try_start_0
    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V

    return-void
.end method

.method public setRangeLabel(Ljava/lang/String;)V
    .locals 1

    .line 886
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setRangeLowerBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 1014
    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMinY(Ljava/lang/Number;)V

    .line 1015
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 1016
    sget-object p1, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRangeStep(Lcom/androidplot/xy/StepMode;D)V
    .locals 0

    .line 845
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeStepMode(Lcom/androidplot/xy/StepMode;)V

    .line 846
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/XYPlot;->setRangeStepValue(D)V

    return-void
.end method

.method public setRangeStepMode(Lcom/androidplot/xy/StepMode;)V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    return-void
.end method

.method public setRangeStepModel(Lcom/androidplot/xy/StepModel;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    return-void
.end method

.method public setRangeStepValue(D)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->rangeStepModel:Lcom/androidplot/xy/StepModel;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    return-void
.end method

.method public setRangeTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->rangeTitle:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-void
.end method

.method public declared-synchronized setRangeUpperBoundary(Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 994
    :try_start_0
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setUserMaxY(Ljava/lang/Number;)V

    .line 995
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/XYPlot;->setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V

    .line 996
    sget-object p1, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {p0, p1}, Lcom/androidplot/xy/XYPlot;->setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 1

    monitor-enter p0

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserDomainOrigin(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1035
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1033
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Origin value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserMaxX(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxX(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserMaxY(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMaxY(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserMinX(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    .line 964
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMinX(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized setUserMinY(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->constraints:Lcom/androidplot/xy/XYConstraints;

    invoke-virtual {v0, p1}, Lcom/androidplot/xy/XYConstraints;->setMinY(Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserRangeOrigin(Ljava/lang/Number;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1042
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1040
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Origin value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public updateDomainMinMaxForOriginModel()V
    .locals 7

    .line 696
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->userDomainOrigin:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 697
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v2

    .line 698
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    sub-double v4, v0, v2

    add-double/2addr v0, v2

    .line 702
    sget-object v2, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 727
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v6, v4, v2

    if-lez v6, :cond_1

    goto :goto_1

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_2

    .line 728
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 733
    :goto_2
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    goto :goto_3

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto/16 :goto_7

    .line 734
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_7

    .line 740
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Domain Origin Boundary Mode not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->domainOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_6
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v6, v4, v2

    if-gez v6, :cond_7

    goto :goto_4

    .line 716
    :cond_7
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v3, p0, Lcom/androidplot/xy/XYPlot;->prevMinX:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    goto :goto_5

    .line 714
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 719
    :goto_5
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_9

    goto :goto_6

    .line 722
    :cond_9
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->prevMaxX:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_7

    .line 720
    :cond_a
    :goto_6
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    goto :goto_7

    .line 704
    :cond_b
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 705
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    :cond_c
    :goto_7
    return-void
.end method

.method public updateRangeMinMaxForOriginModel()V
    .locals 8

    .line 745
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    iget-object v1, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 747
    iget-object v0, p0, Lcom/androidplot/xy/XYPlot;->userRangeOrigin:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 748
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v2}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v2

    .line 749
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    invoke-virtual {v4}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Lcom/androidplot/xy/XYPlot;->distance(DD)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 751
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    sub-double v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 752
    iget-object v4, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    sub-double v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 755
    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->bounds:Lcom/androidplot/xy/RectRegion;

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    :goto_0
    return-void

    .line 762
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Range Origin Boundary Mode not yet supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androidplot/xy/XYPlot;->rangeOriginBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
