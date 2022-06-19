.class public Lcom/androidplot/xy/XYConstraints;
.super Ljava/lang/Object;
.source "XYConstraints.java"


# instance fields
.field private domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

.field private domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private maxX:Ljava/lang/Number;

.field private maxY:Ljava/lang/Number;

.field private minX:Ljava/lang/Number;

.field private minY:Ljava/lang/Number;

.field private rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

.field private rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/androidplot/xy/XYConstraints;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 34
    sget-object v0, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    .line 37
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 38
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 39
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 40
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    iput-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    .line 52
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    .line 53
    iput-object p3, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    .line 54
    iput-object p2, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    .line 55
    iput-object p4, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public contains(Lcom/androidplot/xy/RectRegion;)Z
    .locals 2

    .line 59
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/XYConstraints;->contains(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 75
    iget-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    return v0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-lez p1, :cond_3

    return v0

    .line 81
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 82
    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, p1, v3

    if-gez v1, :cond_4

    return v0

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v1, p1, v3

    if-lez v1, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v0
.end method

.method public getDomainFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getDomainLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getDomainUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/Number;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    return-object v0
.end method

.method public getMaxY()Ljava/lang/Number;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinX()Ljava/lang/Number;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinY()Ljava/lang/Number;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    return-object v0
.end method

.method public getRangeFramingModel()Lcom/androidplot/xy/XYFramingModel;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-object v0
.end method

.method public getRangeLowerBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public getRangeUpperBoundaryMode()Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method

.method public setDomainFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-void
.end method

.method public setDomainLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method public setDomainUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method public setMaxX(Ljava/lang/Number;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    return-void
.end method

.method public setMaxY(Ljava/lang/Number;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    return-void
.end method

.method public setMinX(Ljava/lang/Number;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    return-void
.end method

.method public setMinY(Ljava/lang/Number;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    return-void
.end method

.method public setRangeFramingModel(Lcom/androidplot/xy/XYFramingModel;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    return-void
.end method

.method public setRangeLowerBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method public setRangeUpperBoundaryMode(Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XYConstraints{domainFramingModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->domainFramingModel:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rangeFramingModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->rangeFramingModel:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", domainUpperBoundaryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->domainUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", domainLowerBoundaryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->domainLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rangeUpperBoundaryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->rangeUpperBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rangeLowerBoundaryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->rangeLowerBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->minX:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->maxX:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->minY:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/XYConstraints;->maxY:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
