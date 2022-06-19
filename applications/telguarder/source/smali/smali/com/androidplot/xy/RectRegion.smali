.class public Lcom/androidplot/xy/RectRegion;
.super Ljava/lang/Object;
.source "RectRegion.java"


# instance fields
.field private label:Ljava/lang/String;

.field xRegion:Lcom/androidplot/Region;

.field yRegion:Lcom/androidplot/Region;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 40
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0}, Lcom/androidplot/Region;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 5

    .line 71
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 72
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 73
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_3

    :cond_3
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 74
    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 71
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V
    .locals 2

    .line 55
    iget-object v0, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v1, p2, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object p1, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    iget-object p2, p2, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/androidplot/Region;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 66
    new-instance p1, Lcom/androidplot/Region;

    invoke-direct {p1, p3, p4}, Lcom/androidplot/Region;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    .line 67
    invoke-virtual {p0, p5}, Lcom/androidplot/xy/RectRegion;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private static distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    .line 249
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static withDefaults(Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/RectRegion;
    .locals 2

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->isFullyDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    invoke-direct {v0}, Lcom/androidplot/xy/RectRegion;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v1

    invoke-static {v1}, Lcom/androidplot/Region;->withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    .line 50
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object p0

    invoke-static {p0}, Lcom/androidplot/Region;->withDefaults(Lcom/androidplot/Region;)Lcom/androidplot/Region;

    move-result-object p0

    iput-object p0, v0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    return-object v0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "When specifying defaults, RectRegion param must contain no null values."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asRectF()Landroid/graphics/RectF;
    .locals 5

    .line 192
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public contains(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getxRegion()Lcom/androidplot/Region;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getyRegion()Lcom/androidplot/Region;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/androidplot/Region;->contains(Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getHeight()Ljava/lang/Number;
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/xy/RectRegion;->distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxX()Ljava/lang/Number;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMaxY()Ljava/lang/Number;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMax()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinX()Ljava/lang/Number;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getMinY()Ljava/lang/Number;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->getMin()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/Number;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/xy/RectRegion;->distanceBetween(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getxRegion()Lcom/androidplot/Region;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    return-object v0
.end method

.method public getyRegion()Lcom/androidplot/Region;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    return-object v0
.end method

.method public intersect(Lcom/androidplot/xy/RectRegion;)V
    .locals 2

    .line 201
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->intersects(Lcom/androidplot/xy/RectRegion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->intersect(Lcom/androidplot/Region;)V

    .line 203
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget-object p1, p1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->intersect(Lcom/androidplot/Region;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    :goto_0
    return-void
.end method

.method public intersects(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/RectRegion;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/xy/RectRegion;

    .line 221
    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {p0}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public intersects(Lcom/androidplot/xy/RectRegion;)Z
    .locals 3

    .line 173
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/androidplot/xy/RectRegion;->intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public intersects(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p1, p3, p4}, Lcom/androidplot/Region;->intersects(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFullyDefined()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMaxXSet()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    return v0
.end method

.method public isMaxYSet()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMaxSet()Z

    move-result v0

    return v0
.end method

.method public isMinXSet()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    return v0
.end method

.method public isMinYSet()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0}, Lcom/androidplot/Region;->isMinSet()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/RectRegion;->setMinX(Ljava/lang/Number;)V

    .line 254
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/RectRegion;->setMaxX(Ljava/lang/Number;)V

    .line 255
    invoke-virtual {p0, p3}, Lcom/androidplot/xy/RectRegion;->setMinY(Ljava/lang/Number;)V

    .line 256
    invoke-virtual {p0, p4}, Lcom/androidplot/xy/RectRegion;->setMaxY(Ljava/lang/Number;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->label:Ljava/lang/String;

    return-void
.end method

.method public setMaxX(Ljava/lang/Number;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    return-void
.end method

.method public setMaxY(Ljava/lang/Number;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMax(Ljava/lang/Number;)V

    return-void
.end method

.method public setMinX(Ljava/lang/Number;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    return-void
.end method

.method public setMinY(Ljava/lang/Number;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->setMin(Ljava/lang/Number;)V

    return-void
.end method

.method public setxRegion(Lcom/androidplot/Region;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    return-void
.end method

.method public setyRegion(Lcom/androidplot/Region;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectRegion{xRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/xy/RectRegion;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;
    .locals 6

    .line 151
    iget-object v1, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object v2, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;
    .locals 8

    .line 132
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/RectRegion;->transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V

    return-object v7
.end method

.method public transform(Lcom/androidplot/xy/RectRegion;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/RectRegion;
    .locals 8

    .line 103
    new-instance v0, Lcom/androidplot/xy/RectRegion;

    .line 104
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMinY()Ljava/lang/Number;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxX()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p1}, Lcom/androidplot/xy/RectRegion;->getMaxY()Ljava/lang/Number;

    move-result-object v4

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/androidplot/xy/RectRegion;-><init>(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/XYCoords;)V

    return-object v0
.end method

.method public transform(Lcom/androidplot/xy/XYCoords;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;
    .locals 1

    .line 93
    iget-object v0, p1, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    iget-object p1, p1, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    invoke-virtual {p0, v0, p1, p2}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;)Lcom/androidplot/xy/XYCoords;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Number;Ljava/lang/Number;Lcom/androidplot/xy/RectRegion;ZZ)Lcom/androidplot/xy/XYCoords;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget-object p1, p3, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1, v2, p1, p4}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object p1

    .line 84
    iget-object p4, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p2, p3, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p4, v0, v1, p2, p5}, Lcom/androidplot/Region;->transform(DLcom/androidplot/Region;Z)Ljava/lang/Number;

    move-result-object p2

    .line 85
    new-instance p3, Lcom/androidplot/xy/XYCoords;

    invoke-direct {p3, p1, p2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    return-object p3
.end method

.method public transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget p2, p4, Landroid/graphics/RectF;->left:F

    float-to-double v3, p2

    iget p2, p4, Landroid/graphics/RectF;->right:F

    float-to-double v5, p2

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 128
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iget p2, p4, Landroid/graphics/RectF;->top:F

    float-to-double v3, p2

    iget p2, p4, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p2

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/androidplot/Region;->transform(DDDZ)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public transformScreen(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/androidplot/xy/RectRegion;->transform(Lcom/androidplot/xy/XYCoords;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public transformScreen(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/androidplot/xy/RectRegion;->transform(Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public transformScreen(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/androidplot/xy/RectRegion;->transform(Landroid/graphics/PointF;Ljava/lang/Number;Ljava/lang/Number;Landroid/graphics/RectF;ZZ)V

    return-void
.end method

.method public union(Lcom/androidplot/xy/RectRegion;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    iget-object v1, p1, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, v1}, Lcom/androidplot/Region;->union(Lcom/androidplot/Region;)V

    .line 169
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    iget-object p1, p1, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->union(Lcom/androidplot/Region;)V

    return-void
.end method

.method public union(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/androidplot/xy/RectRegion;->xRegion:Lcom/androidplot/Region;

    invoke-virtual {v0, p1}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    .line 156
    iget-object p1, p0, Lcom/androidplot/xy/RectRegion;->yRegion:Lcom/androidplot/Region;

    invoke-virtual {p1, p2}, Lcom/androidplot/Region;->union(Ljava/lang/Number;)V

    return-void
.end method
