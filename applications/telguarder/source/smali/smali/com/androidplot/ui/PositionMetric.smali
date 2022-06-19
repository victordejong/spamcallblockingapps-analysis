.class public abstract Lcom/androidplot/ui/PositionMetric;
.super Lcom/androidplot/ui/LayoutMetric;
.source "PositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/PositionMetric$LayoutMode;,
        Lcom/androidplot/ui/PositionMetric$Origin;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LayoutType:Ljava/lang/Enum;",
        ">",
        "Lcom/androidplot/ui/LayoutMetric<",
        "T",
        "LayoutType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;-><init>(FLjava/lang/Enum;)V

    return-void
.end method

.method protected static validateValue(FLcom/androidplot/ui/PositionMetric$LayoutMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/androidplot/ui/PositionMetric$1;->$SwitchMap$com$androidplot$ui$PositionMetric$LayoutMode:[I

    invoke-virtual {p1}, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    cmpg-float p1, p0, p1

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Relative layout values must be within the range of -1 to 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown LayoutMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected getAbsolutePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F
    .locals 2

    .line 58
    sget-object v0, Lcom/androidplot/ui/PositionMetric$1;->$SwitchMap$com$androidplot$ui$PositionMetric$Origin:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/PositionMetric$Origin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p2

    sub-float/2addr p1, p2

    return p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 62
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p2

    add-float/2addr p1, p2

    return p1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p1

    return p1
.end method

.method public bridge synthetic getLayoutType()Ljava/lang/Enum;
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/androidplot/ui/LayoutMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method protected getRelativePosition(FLcom/androidplot/ui/PositionMetric$Origin;)F
    .locals 2

    .line 73
    sget-object v0, Lcom/androidplot/ui/PositionMetric$1;->$SwitchMap$com$androidplot$ui$PositionMetric$Origin:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/PositionMetric$Origin;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p2

    mul-float p2, p2, p1

    add-float/2addr p1, p2

    return p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 77
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p2

    mul-float p2, p2, p1

    add-float/2addr p1, p2

    return p1

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/ui/PositionMetric;->getValue()F

    move-result p2

    mul-float p1, p1, p2

    return p1
.end method

.method public bridge synthetic getValue()F
    .locals 1

    .line 19
    invoke-super {p0}, Lcom/androidplot/ui/LayoutMetric;->getValue()F

    move-result v0

    return v0
.end method

.method public bridge synthetic set(FLjava/lang/Enum;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;->set(FLjava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic setLayoutType(Ljava/lang/Enum;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setLayoutType(Ljava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic setValue(F)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setValue(F)V

    return-void
.end method
