.class public Lcom/androidplot/ui/PositionMetrics;
.super Ljava/lang/Object;
.source "PositionMetrics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/androidplot/ui/PositionMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field private anchor:Lcom/androidplot/ui/Anchor;

.field private horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

.field private layerDepth:F

.field private verticalPosition:Lcom/androidplot/ui/VerticalPosition;


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/androidplot/ui/HorizontalPosition;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/ui/HorizontalPosition;-><init>(FLcom/androidplot/ui/HorizontalPositioning;)V

    invoke-virtual {p0, v0}, Lcom/androidplot/ui/PositionMetrics;->setXPositionMetric(Lcom/androidplot/ui/HorizontalPosition;)V

    .line 30
    new-instance p1, Lcom/androidplot/ui/VerticalPosition;

    invoke-direct {p1, p3, p4}, Lcom/androidplot/ui/VerticalPosition;-><init>(FLcom/androidplot/ui/VerticalPositioning;)V

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/PositionMetrics;->setYPositionMetric(Lcom/androidplot/ui/VerticalPosition;)V

    .line 31
    invoke-virtual {p0, p5}, Lcom/androidplot/ui/PositionMetrics;->setAnchor(Lcom/androidplot/ui/Anchor;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/androidplot/ui/PositionMetrics;)I
    .locals 2

    .line 53
    iget v0, p0, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    iget p1, p1, Lcom/androidplot/ui/PositionMetrics;->layerDepth:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/androidplot/ui/PositionMetrics;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/PositionMetrics;->compareTo(Lcom/androidplot/ui/PositionMetrics;)I

    move-result p1

    return p1
.end method

.method public getAnchor()Lcom/androidplot/ui/Anchor;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->anchor:Lcom/androidplot/ui/Anchor;

    return-object v0
.end method

.method public getXPositionMetric()Lcom/androidplot/ui/HorizontalPosition;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

    return-object v0
.end method

.method public getYPositionMetric()Lcom/androidplot/ui/VerticalPosition;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/androidplot/ui/PositionMetrics;->verticalPosition:Lcom/androidplot/ui/VerticalPosition;

    return-object v0
.end method

.method public setAnchor(Lcom/androidplot/ui/Anchor;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->anchor:Lcom/androidplot/ui/Anchor;

    return-void
.end method

.method public setXPositionMetric(Lcom/androidplot/ui/HorizontalPosition;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->horizontalPosition:Lcom/androidplot/ui/HorizontalPosition;

    return-void
.end method

.method public setYPositionMetric(Lcom/androidplot/ui/VerticalPosition;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/androidplot/ui/PositionMetrics;->verticalPosition:Lcom/androidplot/ui/VerticalPosition;

    return-void
.end method
