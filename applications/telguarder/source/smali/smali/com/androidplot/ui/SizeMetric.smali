.class public Lcom/androidplot/ui/SizeMetric;
.super Lcom/androidplot/ui/LayoutMetric;
.source "SizeMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/ui/LayoutMetric<",
        "Lcom/androidplot/ui/SizeMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/ui/SizeMode;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;-><init>(FLjava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getPixelValue(F)F
    .locals 2

    .line 46
    sget-object v0, Lcom/androidplot/ui/SizeMetric$1;->$SwitchMap$com$androidplot$ui$SizeMode:[I

    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v1}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    sub-float/2addr p1, v0

    return p1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported LayoutType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getLayoutType()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result p1

    return p1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/ui/SizeMetric;->getValue()F

    move-result v0

    mul-float v0, v0, p1

    return v0
.end method

.method public bridge synthetic getValue()F
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/androidplot/ui/LayoutMetric;->getValue()F

    move-result v0

    return v0
.end method

.method public setLayoutType(Lcom/androidplot/ui/SizeMode;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setLayoutType(Ljava/lang/Enum;)V

    return-void
.end method

.method public bridge synthetic setLayoutType(Ljava/lang/Enum;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {p0, p1}, Lcom/androidplot/ui/SizeMetric;->setLayoutType(Lcom/androidplot/ui/SizeMode;)V

    return-void
.end method

.method public bridge synthetic setValue(F)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/androidplot/ui/LayoutMetric;->setValue(F)V

    return-void
.end method

.method protected validatePair(FLcom/androidplot/ui/SizeMode;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/androidplot/ui/SizeMetric$1;->$SwitchMap$com$androidplot$ui$SizeMode:[I

    invoke-virtual {p2}, Lcom/androidplot/ui/SizeMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_1

    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SizeMetric Relative and Hybrid layout values must be within the range of 0 to 1."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic validatePair(FLjava/lang/Enum;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/androidplot/ui/SizeMode;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/SizeMetric;->validatePair(FLcom/androidplot/ui/SizeMode;)V

    return-void
.end method
