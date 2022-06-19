.class public Lcom/androidplot/xy/StepModelFit;
.super Lcom/androidplot/xy/StepModel;
.source "StepModelFit.java"


# instance fields
.field private scale:Lcom/androidplot/Region;

.field private steps:[D


# direct methods
.method public constructor <init>(Lcom/androidplot/Region;[DD)V
    .locals 1

    .line 18
    sget-object v0, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_FIT:Lcom/androidplot/xy/StepMode;

    invoke-direct {p0, v0, p3, p4}, Lcom/androidplot/xy/StepModel;-><init>(Lcom/androidplot/xy/StepMode;D)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/StepModelFit;->setSteps([D)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepModelFit;->setScale(Lcom/androidplot/Region;)V

    return-void
.end method


# virtual methods
.method public getScale()Lcom/androidplot/Region;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    return-object v0
.end method

.method public getSteps()[D
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    return-object v0
.end method

.method public getValue()D
    .locals 13

    .line 56
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 60
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-super {p0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 64
    iget-object v0, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    array-length v6, v0

    :goto_0
    if-ge v1, v6, :cond_2

    aget-wide v7, v0, v1

    .line 66
    iget-object v9, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    invoke-virtual {v9}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    div-double/2addr v9, v7

    invoke-super {p0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v11, v9, v4

    if-gez v11, :cond_1

    move-wide v2, v7

    move-wide v4, v9

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v2

    .line 57
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/androidplot/xy/StepModel;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public setScale(Lcom/androidplot/Region;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    return-void
.end method

.method public setSteps([D)V
    .locals 7

    if-eqz p1, :cond_3

    .line 31
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    iput-object p1, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    :cond_3
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StepModelFit{steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/StepModelFit;->steps:[D

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/StepModelFit;->scale:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current stepping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/androidplot/xy/StepModelFit;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
