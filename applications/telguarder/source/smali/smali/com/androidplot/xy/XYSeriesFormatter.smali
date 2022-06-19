.class public abstract Lcom/androidplot/xy/XYSeriesFormatter;
.super Lcom/androidplot/ui/Formatter;
.source "XYSeriesFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XYRegionFormatterType:",
        "Lcom/androidplot/xy/XYRegionFormatter;",
        ">",
        "Lcom/androidplot/ui/Formatter<",
        "Lcom/androidplot/xy/XYPlot;",
        ">;"
    }
.end annotation


# instance fields
.field private pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

.field private pointLabeler:Lcom/androidplot/xy/PointLabeler;

.field regions:Lcom/androidplot/util/LayerHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/LayerHash<",
            "Lcom/androidplot/xy/RectRegion;",
            "TXYRegionFormatterType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/androidplot/ui/Formatter;-><init>()V

    .line 28
    new-instance v0, Lcom/androidplot/xy/XYSeriesFormatter$1;

    invoke-direct {v0, p0}, Lcom/androidplot/xy/XYSeriesFormatter$1;-><init>(Lcom/androidplot/xy/XYSeriesFormatter;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabeler:Lcom/androidplot/xy/PointLabeler;

    .line 40
    new-instance v0, Lcom/androidplot/util/LayerHash;

    invoke-direct {v0}, Lcom/androidplot/util/LayerHash;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/Formatter;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance p1, Lcom/androidplot/xy/XYSeriesFormatter$1;

    invoke-direct {p1, p0}, Lcom/androidplot/xy/XYSeriesFormatter$1;-><init>(Lcom/androidplot/xy/XYSeriesFormatter;)V

    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabeler:Lcom/androidplot/xy/PointLabeler;

    .line 40
    new-instance p1, Lcom/androidplot/util/LayerHash;

    invoke-direct {p1}, Lcom/androidplot/util/LayerHash;-><init>()V

    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    return-void
.end method


# virtual methods
.method public addRegion(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/XYRegionFormatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/RectRegion;",
            "TXYRegionFormatterType;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LayerHash;->addToBottom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getPointLabelFormatter()Lcom/androidplot/xy/PointLabelFormatter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/androidplot/xy/PointLabelFormatter;

    invoke-direct {v0}, Lcom/androidplot/xy/PointLabelFormatter;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    return-object v0
.end method

.method public getPointLabeler()Lcom/androidplot/xy/PointLabeler;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabeler:Lcom/androidplot/xy/PointLabeler;

    return-object v0
.end method

.method public getRegionFormatter(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYRegionFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/RectRegion;",
            ")TXYRegionFormatterType;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/xy/XYRegionFormatter;

    return-object p1
.end method

.method public getRegions()Lcom/androidplot/util/Layerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/util/Layerable<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    return-object v0
.end method

.method public hasPointLabelFormatter()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeRegion(Lcom/androidplot/xy/RectRegion;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/androidplot/xy/XYSeriesFormatter;->regions:Lcom/androidplot/util/LayerHash;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerHash;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPointLabelFormatter(Lcom/androidplot/xy/PointLabelFormatter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabelFormatter:Lcom/androidplot/xy/PointLabelFormatter;

    return-void
.end method

.method public setPointLabeler(Lcom/androidplot/xy/PointLabeler;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter;->pointLabeler:Lcom/androidplot/xy/PointLabeler;

    return-void
.end method
