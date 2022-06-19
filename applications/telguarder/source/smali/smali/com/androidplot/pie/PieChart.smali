.class public Lcom/androidplot/pie/PieChart;
.super Lcom/androidplot/Plot;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/Plot<",
        "Lcom/androidplot/pie/Segment;",
        "Lcom/androidplot/pie/SegmentFormatter;",
        "Lcom/androidplot/pie/PieRenderer;",
        "Lcom/androidplot/pie/SegmentBundle;",
        "Lcom/androidplot/pie/SegmentRegistry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LEGEND_WIDGET_H_DP:I = 0x1e

.field private static final DEFAULT_LEGEND_WIDGET_ICON_SIZE_DP:I = 0x12

.field private static final DEFAULT_LEGEND_WIDGET_X_OFFSET_DP:I = 0x28

.field private static final DEFAULT_LEGEND_WIDGET_Y_OFFSET_DP:I = 0x0

.field private static final DEFAULT_PADDING_DP:I = 0x5

.field private static final DEFAULT_PIE_WIDGET_H_DP:I = 0x12

.field private static final DEFAULT_PIE_WIDGET_W_DP:I = 0xa

.field private static final DEFAULT_PIE_WIDGET_X_OFFSET_DP:I

.field private static final DEFAULT_PIE_WIDGET_Y_OFFSET_DP:I


# instance fields
.field private legend:Lcom/androidplot/pie/PieLegendWidget;

.field private pie:Lcom/androidplot/pie/PieWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    return-void
.end method


# virtual methods
.method public addSegment(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/pie/PieChart;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    return-void
.end method

.method public getLegend()Lcom/androidplot/pie/PieLegendWidget;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->legend:Lcom/androidplot/pie/PieLegendWidget;

    return-object v0
.end method

.method public getPie()Lcom/androidplot/pie/PieWidget;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    return-object v0
.end method

.method protected bridge synthetic getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getRegistryInstance()Lcom/androidplot/pie/SegmentRegistry;

    move-result-object v0

    return-object v0
.end method

.method protected getRegistryInstance()Lcom/androidplot/pie/SegmentRegistry;
    .locals 1

    .line 54
    new-instance v0, Lcom/androidplot/pie/SegmentRegistry;

    invoke-direct {v0}, Lcom/androidplot/pie/SegmentRegistry;-><init>()V

    return-object v0
.end method

.method protected onPreInit()V
    .locals 14

    .line 71
    new-instance v0, Lcom/androidplot/pie/PieWidget;

    .line 72
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v1

    new-instance v2, Lcom/androidplot/ui/Size;

    const/high16 v6, 0x41900000    # 18.0f

    .line 75
    invoke-static {v6}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x41200000    # 10.0f

    .line 77
    invoke-static {v5}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v5

    sget-object v7, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/androidplot/pie/PieWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;)V

    iput-object v0, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    const/4 v7, 0x0

    .line 81
    invoke-static {v7}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/HorizontalPositioning;

    .line 83
    invoke-static {v7}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    sget-object v4, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v5, Lcom/androidplot/ui/Anchor;->CENTER:Lcom/androidplot/ui/Anchor;

    .line 80
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/pie/PieWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 87
    new-instance v0, Lcom/androidplot/pie/PieLegendWidget;

    .line 88
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getLayoutManager()Lcom/androidplot/ui/LayoutManager;

    move-result-object v9

    new-instance v11, Lcom/androidplot/ui/Size;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 91
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v1

    sget-object v2, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    sget-object v3, Lcom/androidplot/ui/SizeMode;->RELATIVE:Lcom/androidplot/ui/SizeMode;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v11, v1, v2, v4, v3}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    new-instance v12, Lcom/androidplot/ui/DynamicTableModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v12, v1, v2}, Lcom/androidplot/ui/DynamicTableModel;-><init>(II)V

    new-instance v13, Lcom/androidplot/ui/Size;

    .line 95
    invoke-static {v6}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v2

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    .line 97
    invoke-static {v6}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v4

    sget-object v5, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    invoke-direct {v13, v2, v3, v4, v5}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/androidplot/pie/PieLegendWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/pie/PieChart;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TableModel;Lcom/androidplot/ui/Size;)V

    iput-object v0, p0, Lcom/androidplot/pie/PieChart;->legend:Lcom/androidplot/pie/PieLegendWidget;

    const/high16 v2, 0x42200000    # 40.0f

    .line 101
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v9

    sget-object v10, Lcom/androidplot/ui/HorizontalPositioning;->ABSOLUTE_FROM_RIGHT:Lcom/androidplot/ui/HorizontalPositioning;

    .line 103
    invoke-static {v7}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v11

    sget-object v12, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v13, Lcom/androidplot/ui/Anchor;->RIGHT_BOTTOM:Lcom/androidplot/ui/Anchor;

    .line 100
    invoke-virtual/range {v8 .. v13}, Lcom/androidplot/pie/PieLegendWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 107
    iget-object v0, p0, Lcom/androidplot/pie/PieChart;->legend:Lcom/androidplot/pie/PieLegendWidget;

    invoke-virtual {v0, v1}, Lcom/androidplot/pie/PieLegendWidget;->setVisible(Z)V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 109
    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/androidplot/pie/PieWidget;->setPadding(FFFF)V

    return-void
.end method

.method protected processAttrs(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/androidplot/pie/PieChart;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->pie_PieChart_pieBorderColor:I

    sget v2, Lcom/androidplot/R$styleable;->pie_PieChart_pieBorderThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    return-void
.end method

.method public removeSegment(Lcom/androidplot/pie/Segment;)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/androidplot/pie/PieChart;->removeSeries(Lcom/androidplot/Series;)V

    return-void
.end method

.method public setLegend(Lcom/androidplot/pie/PieLegendWidget;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/androidplot/pie/PieChart;->legend:Lcom/androidplot/pie/PieLegendWidget;

    return-void
.end method

.method public setPie(Lcom/androidplot/pie/PieWidget;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/androidplot/pie/PieChart;->pie:Lcom/androidplot/pie/PieWidget;

    return-void
.end method
