.class public Lcom/androidplot/xy/PanZoom$State;
.super Ljava/lang/Object;
.source "PanZoom.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private domainBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private domainLowerBoundary:Ljava/lang/Number;

.field private domainUpperBoundary:Ljava/lang/Number;

.field private rangeBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

.field private rangeLowerBoundary:Ljava/lang/Number;

.field private rangeUpperBoundary:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom$State;->applyDomainBoundaries(Lcom/androidplot/xy/XYPlot;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/PanZoom$State;->applyRangeBoundaries(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method

.method public applyDomainBoundaries(Lcom/androidplot/xy/XYPlot;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom$State;->domainLowerBoundary:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom$State;->domainUpperBoundary:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/PanZoom$State;->domainBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p1, v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    return-void
.end method

.method public applyRangeBoundaries(Lcom/androidplot/xy/XYPlot;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/androidplot/xy/PanZoom$State;->rangeLowerBoundary:Ljava/lang/Number;

    iget-object v1, p0, Lcom/androidplot/xy/PanZoom$State;->rangeUpperBoundary:Ljava/lang/Number;

    iget-object v2, p0, Lcom/androidplot/xy/PanZoom$State;->rangeBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {p1, v0, v1, v2}, Lcom/androidplot/xy/XYPlot;->setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V

    return-void
.end method

.method public setDomainBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom$State;->domainLowerBoundary:Ljava/lang/Number;

    .line 112
    iput-object p2, p0, Lcom/androidplot/xy/PanZoom$State;->domainUpperBoundary:Ljava/lang/Number;

    .line 113
    iput-object p3, p0, Lcom/androidplot/xy/PanZoom$State;->domainBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method public setRangeBoundaries(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/BoundaryMode;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/androidplot/xy/PanZoom$State;->rangeLowerBoundary:Ljava/lang/Number;

    .line 118
    iput-object p2, p0, Lcom/androidplot/xy/PanZoom$State;->rangeUpperBoundary:Ljava/lang/Number;

    .line 119
    iput-object p3, p0, Lcom/androidplot/xy/PanZoom$State;->rangeBoundaryMode:Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method
