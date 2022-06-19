.class public Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;
.super Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;
.source "CSStatRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;,
        Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;
    }
.end annotation


# static fields
.field private static final BAR_WIDTH:I = 0x14

.field private static final DOMAIN_SEPARATOR_STEP:I = 0x7

.field private static final TOUCHSLOP:I = 0xa


# instance fields
.field private incomingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

.field private mDailyStatHeader:Landroid/widget/TextView;

.field private mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

.field private movementStart:Landroid/graphics/Point;

.field private outgoingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

.field private plot:Lcom/androidplot/xy/XYPlot;

.field private plotError:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plotError:Z

    const v0, 0x7f0800e6

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mDailyStatHeader:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->initPlot(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    return-object p0
.end method

.method private initPlot(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0801f9

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYPlot;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    const-string v1, ""

    .line 129
    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setRangeLabel(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYPlot;->setDomainLabel(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/androidplot/xy/XYPlot;->setBorderStyle(Lcom/androidplot/Plot$BorderStyle;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 132
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/XYSeriesRegistry;

    new-instance v1, Lcom/androidplot/xy/ZoomEstimator;

    invoke-direct {v1}, Lcom/androidplot/xy/ZoomEstimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYSeriesRegistry;->setEstimator(Lcom/androidplot/xy/Estimator;)V

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidplot/xy/XYPlot;->setDomainStep(Lcom/androidplot/xy/StepMode;D)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->setupFormatters(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->setupGraph(Landroid/content/Context;Lcom/androidplot/xy/XYGraphWidget;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getGraph()Lcom/androidplot/xy/XYGraphWidget;

    move-result-object v0

    sget-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/XYGraphWidget;->getLineLabelStyle(Lcom/androidplot/xy/XYGraphWidget$Edge;)Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->setupLineLabelStyle(Landroid/content/Context;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)V

    .line 137
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->setupPanZoom()V

    return-void
.end method

.method private onDaySelected(Ljava/util/Date;II)V
    .locals 0

    .line 111
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getPositionForDay(Ljava/util/Date;)I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 114
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 116
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onPlotClicked(Landroid/graphics/PointF;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 226
    iget-object v2, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->containsPoint(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    iget-object v2, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 228
    iget-object v2, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeriesBundle;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v2

    check-cast v2, Lcom/androidplot/xy/XYSeries;

    if-eqz v2, :cond_3

    .line 230
    iget-object v4, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Lcom/androidplot/xy/XYPlot;->screenToSeriesX(F)Ljava/lang/Number;

    move-result-object v4

    .line 231
    iget-object v5, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1}, Lcom/androidplot/xy/XYPlot;->screenToSeriesY(F)Ljava/lang/Number;

    move-result-object v1

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    move-wide v8, v6

    const/4 v10, -0x1

    .line 236
    :goto_0
    invoke-interface {v2}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 237
    invoke-interface {v2, v3}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object v11

    .line 238
    invoke-interface {v2, v3}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v12

    if-eqz v11, :cond_1

    if-eqz v12, :cond_1

    .line 240
    invoke-static {v4, v11}, Lcom/androidplot/Region;->measure(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    .line 241
    invoke-static {v1, v12}, Lcom/androidplot/Region;->measure(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    if-eq v10, v5, :cond_0

    cmpg-double v11, v13, v6

    if-ltz v11, :cond_0

    cmpl-double v11, v13, v6

    if-nez v11, :cond_1

    cmpg-double v11, v15, v8

    if-gez v11, :cond_1

    .line 242
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    cmpl-double v19, v11, v17

    if-ltz v19, :cond_1

    :cond_0
    move v10, v3

    move-wide v6, v13

    move-wide v8, v15

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v10, :cond_3

    .line 250
    iget-object v1, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_3

    .line 251
    iget-object v1, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 252
    invoke-interface {v2, v10}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v2

    .line 253
    iget-object v3, v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYSeriesRegistry;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYSeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYSeriesBundle;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYSeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v3

    check-cast v3, Lcom/androidplot/xy/XYSeries;

    invoke-interface {v3, v10}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object v3

    .line 254
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->onDaySelected(Ljava/util/Date;II)V

    .line 255
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "day_clicked"

    invoke-virtual {v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsDailyCallStatAction(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setupFormatters(Landroid/content/Context;)V
    .locals 5

    .line 267
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    const v1, 0x7f05010e

    invoke-static {p1, v1}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f05010d

    invoke-static {p1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v0, p0, v1, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;-><init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;II)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->incomingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 268
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setMarginLeft(F)V

    .line 269
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->incomingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setMarginRight(F)V

    .line 270
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->incomingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setLegendIconEnabled(Z)V

    .line 271
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    const v4, 0x7f05010f

    invoke-static {p1, v4}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p0, v4, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;-><init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;II)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->outgoingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    .line 272
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setMarginLeft(F)V

    .line 273
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->outgoingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->dpToPix(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setMarginRight(F)V

    .line 274
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->outgoingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    invoke-virtual {p1, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->setLegendIconEnabled(Z)V

    return-void
.end method

.method private setupGraph(Landroid/content/Context;Lcom/androidplot/xy/XYGraphWidget;)V
    .locals 3

    .line 142
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getGridBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainGridLinePaint()Landroid/graphics/Paint;

    move-result-object v0

    const v2, 0x7f050099

    invoke-static {p1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeGridLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getDomainOriginLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getRangeOriginLinePaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 148
    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginTop(F)V

    const/high16 p1, -0x3ee00000    # -10.0f

    .line 149
    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYGraphWidget;->setMarginBottom(F)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 150
    sget-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v0, p1, v1

    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYGraphWidget;->setLineLabelEdges([Lcom/androidplot/xy/XYGraphWidget$Edge;)V

    return-void
.end method

.method private setupLineLabelStyle(Landroid/content/Context;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)V
    .locals 2

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, v0}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setRotation(F)V

    .line 156
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v1, 0x7f05002f

    invoke-static {p1, v1}, Lcom/telguarder/helpers/common/AppUtil;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    new-instance p1, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;

    invoke-direct {p1, p0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;-><init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)V

    invoke-virtual {p2, p1}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->setFormat(Ljava/text/Format;)V

    return-void
.end method

.method private setupPanZoom()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    sget-object v2, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    sget-object v3, Lcom/androidplot/xy/PanZoom$ZoomLimit;->MIN_TICKS:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    invoke-static {v0, v1, v2, v3}, Lcom/androidplot/xy/PanZoom;->attach(Lcom/androidplot/xy/XYPlot;Lcom/androidplot/xy/PanZoom$Pan;Lcom/androidplot/xy/PanZoom$Zoom;Lcom/androidplot/xy/PanZoom$ZoomLimit;)Lcom/androidplot/xy/PanZoom;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/PanZoom;->setPan(Lcom/androidplot/xy/PanZoom$Pan;)V

    .line 184
    sget-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/PanZoom;->setZoom(Lcom/androidplot/xy/PanZoom$Zoom;)V

    .line 185
    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSStatRowViewHolder$eLjDCWLLcOJl1gr5Pz0pwDVojvA;-><init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/androidplot/xy/PanZoom;->setDelegate(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updatePlot()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mDailyStatHeader:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->clear()V

    .line 89
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v3, v3, Lcom/telguarder/features/postCallStatistics/CSStatData;->incomingSeries:Lcom/androidplot/xy/XYSeries;

    iget-object v4, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->incomingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    invoke-virtual {v0, v3, v4}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 90
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v3, v3, Lcom/telguarder/features/postCallStatistics/CSStatData;->outgoingSeries:Lcom/androidplot/xy/XYSeries;

    iget-object v4, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->outgoingFormatter:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    invoke-virtual {v0, v3, v4}, Lcom/androidplot/xy/XYPlot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    .line 92
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 93
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getOuterLimits()Lcom/androidplot/xy/RectRegion;

    move-result-object v0

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v3, v3, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 94
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYPlot;->setUserDomainOrigin(Ljava/lang/Number;)V

    .line 95
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v2, v2, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    iget-object v3, v3, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v2, v3, v4}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    .line 97
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    const-class v2, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;

    invoke-virtual {v0, v2}, Lcom/androidplot/xy/XYPlot;->getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;

    .line 98
    sget-object v2, Lcom/androidplot/xy/BarRenderer$BarOrientation;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-virtual {v0, v2}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;->setBarOrientation(Lcom/androidplot/xy/BarRenderer$BarOrientation;)V

    .line 99
    sget-object v2, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 100
    invoke-virtual {v0, v2, v3}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;->setBarGroupWidth(Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;F)V

    .line 101
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plot:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->redraw()V

    .line 102
    iput-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plotError:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mDailyStatHeader:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plotError:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallStatistics/CSStatData;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->plotError:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->mData:Lcom/telguarder/features/postCallStatistics/CSStatData;

    .line 81
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->updatePlot()V

    return-void
.end method

.method public synthetic lambda$setupPanZoom$0$CSStatRowViewHolder(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    if-eqz v0, :cond_4

    .line 193
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_4

    float-to-double v4, v0

    .line 195
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v4, 0x42480000    # 50.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 202
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "scroll_or_panzoom"

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsDailyCallStatAction(Ljava/lang/String;)V

    :goto_0
    return v2

    .line 210
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 212
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 213
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    .line 214
    iput-object v3, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 215
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4

    .line 216
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->onPlotClicked(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 188
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v3, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->movementStart:Landroid/graphics/Point;

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onAttachToWindow()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onAttachToWindow()V

    .line 72
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsDailyCallStatAction(Ljava/lang/String;)V

    return-void
.end method

.method public onDetachFromWindow()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/telguarder/features/postCallStatistics/CSRowViewHolder;->onDetachFromWindow()V

    return-void
.end method
