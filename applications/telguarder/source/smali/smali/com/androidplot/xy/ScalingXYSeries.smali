.class public Lcom/androidplot/xy/ScalingXYSeries;
.super Ljava/lang/Object;
.source "ScalingXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/XYSeries;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/ScalingXYSeries$Mode;
    }
.end annotation


# instance fields
.field private mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

.field private scale:D

.field private series:Lcom/androidplot/xy/XYSeries;


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/XYSeries;DLcom/androidplot/xy/ScalingXYSeries$Mode;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/androidplot/xy/ScalingXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    .line 26
    iput-wide p2, p0, Lcom/androidplot/xy/ScalingXYSeries;->scale:D

    .line 27
    iput-object p4, p0, Lcom/androidplot/xy/ScalingXYSeries;->mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    return-void
.end method


# virtual methods
.method public getScale()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->scale:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getX(I)Ljava/lang/Number;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    sget-object v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;->X_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    sget-object v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;->X_AND_Y:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidplot/xy/ScalingXYSeries;->scale:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0, p1}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    sget-object v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;->Y_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->mode:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    sget-object v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;->X_AND_Y:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidplot/xy/ScalingXYSeries;->scale:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public setScale(D)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/androidplot/xy/ScalingXYSeries;->scale:D

    return-void
.end method

.method public size()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/androidplot/xy/ScalingXYSeries;->series:Lcom/androidplot/xy/XYSeries;

    invoke-interface {v0}, Lcom/androidplot/xy/XYSeries;->size()I

    move-result v0

    return v0
.end method
