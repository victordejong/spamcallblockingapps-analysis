.class public Lcom/androidplot/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private cachedLength:Lcom/androidplot/util/FastNumber;

.field private defaults:Lcom/androidplot/Region;

.field private max:Lcom/androidplot/util/FastNumber;

.field private min:Lcom/androidplot/util/FastNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    :goto_0
    return-void
.end method

.method public static measure(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .line 66
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0, p0, p1}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-virtual {v0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;
    .locals 1

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    .line 39
    iput-object p0, v0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    return-object v0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "When specifying default min and max must both be non-null values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public center()Ljava/lang/Number;
    .locals 6

    .line 98
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Number;)Z
    .locals 5

    .line 86
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMax()Ljava/lang/Number;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    iget-object v0, v0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    :goto_0
    return-object v0
.end method

.method public getMin()Ljava/lang/Number;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    iget-object v0, v0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    :goto_0
    return-object v0
.end method

.method public intersect(Lcom/androidplot/Region;)V
    .locals 5

    .line 177
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    :cond_1
    return-void
.end method

.method public intersects(Lcom/androidplot/Region;)Z
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public intersects(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .line 195
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x1

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v5, v0, v2

    if-ltz v5, :cond_0

    return v4

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4
.end method

.method public isDefined()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaxSet()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMinSet()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()Ljava/lang/Number;
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 74
    invoke-static {v0}, Lcom/androidplot/util/FastNumber;->orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    return-object v0
.end method

.method public ratio(DD)D
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double/2addr p3, p1

    div-double/2addr v0, p3

    return-wide v0
.end method

.method public ratio(Lcom/androidplot/Region;)Ljava/lang/Number;
    .locals 4

    .line 130
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/androidplot/Region;->ratio(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public setMax(Ljava/lang/Number;)V
    .locals 2

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    if-nez p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    const-string v1, "Region values can never be null unless defaults have been set."

    .line 235
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    iput-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/androidplot/util/FastNumber;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    :cond_1
    invoke-static {p1}, Lcom/androidplot/util/FastNumber;->orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMin(Ljava/lang/Number;)V
    .locals 2

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    const-string v1, "Region values cannot be null unless defaults have been set."

    .line 213
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    iput-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/androidplot/util/FastNumber;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_1
    invoke-static {p1}, Lcom/androidplot/util/FastNumber;->orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;

    move-result-object p1

    iput-object p1, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMinMax(Lcom/androidplot/Region;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 55
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Region{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "min="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/Region;->min:Lcom/androidplot/util/FastNumber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/Region;->max:Lcom/androidplot/util/FastNumber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cachedLength="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/Region;->cachedLength:Lcom/androidplot/util/FastNumber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaults="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Lcom/androidplot/Region;->defaults:Lcom/androidplot/Region;

    if-eq v1, p0, :cond_0

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "this"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(DDDZ)D
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/androidplot/Region;->length()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double v2, p5, p3

    div-double/2addr v2, v0

    if-nez p7, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p5

    sub-double/2addr p1, p5

    mul-double v2, v2, p1

    add-double/2addr p3, v2

    return-wide p3

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    sub-double/2addr p1, p3

    mul-double v2, v2, p1

    sub-double/2addr p5, v2

    return-wide p5
.end method

.method public transform(DLcom/androidplot/Region;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;
    .locals 9

    .line 113
    invoke-virtual {p3}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p3}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v1, p0

    move-wide v2, p1

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public union(Lcom/androidplot/Region;)V
    .locals 1

    .line 168
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 169
    invoke-virtual {p1}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    return-void
.end method

.method public union(Ljava/lang/Number;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 149
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_4

    .line 155
    :cond_3
    invoke-virtual {p0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    :cond_4
    return-void
.end method
