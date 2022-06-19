.class public Lcom/androidplot/xy/SampledXYSeries;
.super Ljava/lang/Object;
.source "SampledXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/FastXYSeries;
.implements Lcom/androidplot/xy/OrderedXYSeries;


# instance fields
.field private activeSeries:Lcom/androidplot/xy/XYSeries;

.field private algorithm:Lcom/androidplot/xy/Sampler;

.field private bounds:Lcom/androidplot/xy/RectRegion;

.field private lastResamplingException:Ljava/lang/Exception;

.field private ratio:F

.field private rawData:Lcom/androidplot/xy/XYSeries;

.field private threshold:I

.field private final xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field private zoomLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/androidplot/xy/EditableXYSeries;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;FI)V
    .locals 1

    .line 67
    invoke-static {p1}, Lcom/androidplot/util/SeriesUtils;->getXYOrder(Lcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/androidplot/xy/SampledXYSeries;-><init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/OrderedXYSeries$XOrder;FI)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/OrderedXYSeries$XOrder;FI)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/androidplot/xy/LTTBSampler;

    invoke-direct {v0}, Lcom/androidplot/xy/LTTBSampler;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    .line 52
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    .line 53
    iput-object p2, p0, Lcom/androidplot/xy/SampledXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 54
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/SampledXYSeries;->setRatio(F)V

    .line 55
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/SampledXYSeries;->setThreshold(I)V

    .line 56
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->resample()V

    return-void
.end method

.method static synthetic access$000(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/XYSeries;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    return-object p0
.end method

.method static synthetic access$100(Lcom/androidplot/xy/SampledXYSeries;)Lcom/androidplot/xy/RectRegion;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object p0
.end method

.method static synthetic access$102(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object p1
.end method

.method static synthetic access$202(Lcom/androidplot/xy/SampledXYSeries;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    return-object p1
.end method

.method protected static getZoomIndex(DD)I
    .locals 0

    .line 137
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getAlgorithm()Lcom/androidplot/xy/Sampler;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    return-object v0
.end method

.method public getBounds()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public getMaxZoomFactor()D
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRatio()F
    .locals 1

    .line 207
    iget v0, p0, Lcom/androidplot/xy/SampledXYSeries;->ratio:F

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected getZoomLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/EditableXYSeries;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    return-object v0
.end method

.method public minMax()Lcom/androidplot/xy/RectRegion;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-object v0
.end method

.method public resample()V
    .locals 6

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    :goto_0
    iget v2, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    if-le v0, v2, :cond_0

    .line 77
    new-instance v2, Lcom/androidplot/xy/FixedSizeEditableXYSeries;

    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;-><init>(Ljava/lang/String;I)V

    .line 78
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/androidplot/xy/SampledXYSeries$1;

    invoke-direct {v4, p0, v2}, Lcom/androidplot/xy/SampledXYSeries$1;-><init>(Lcom/androidplot/xy/SampledXYSeries;Lcom/androidplot/xy/EditableXYSeries;)V

    const-string v5, "Androidplot XY Series Sampler"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getZoomLevels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    int-to-float v0, v0

    .line 97
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 101
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    if-nez v0, :cond_2

    return-void

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/androidplot/xy/SampledXYSeries;->lastResamplingException:Ljava/lang/Exception;

    const-string v2, "Exception encountered during resampling"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setAlgorithm(Lcom/androidplot/xy/Sampler;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->algorithm:Lcom/androidplot/xy/Sampler;

    .line 154
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->resample()V

    return-void
.end method

.method public setBounds(Lcom/androidplot/xy/RectRegion;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->bounds:Lcom/androidplot/xy/RectRegion;

    return-void
.end method

.method public setRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 214
    iput p1, p0, Lcom/androidplot/xy/SampledXYSeries;->ratio:F

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ratio must be greater than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThreshold(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 185
    iput p1, p0, Lcom/androidplot/xy/SampledXYSeries;->threshold:I

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold must be < original series size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZoomFactor(D)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 124
    iget-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->rawData:Lcom/androidplot/xy/XYSeries;

    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SampledXYSeries;->getRatio()F

    move-result v0

    float-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/androidplot/xy/SampledXYSeries;->getZoomIndex(DD)I

    move-result p1

    .line 128
    iget-object p2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 129
    iget-object p2, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYSeries;

    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->zoomLevels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYSeries;

    iput-object p1, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/androidplot/xy/SampledXYSeries;->activeSeries:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    return v0
.end method
