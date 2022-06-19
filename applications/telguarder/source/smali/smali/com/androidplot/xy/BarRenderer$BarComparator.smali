.class public Lcom/androidplot/xy/BarRenderer$BarComparator;
.super Ljava/lang/Object;
.source "BarRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/androidplot/xy/BarRenderer$Bar;",
        ">;"
    }
.end annotation


# instance fields
.field private final barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field private final rangeOriginPx:F


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/BarRenderer$BarOrientation;F)V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput p2, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->rangeOriginPx:F

    .line 364
    iput-object p1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-void
.end method


# virtual methods
.method public compare(Lcom/androidplot/xy/BarRenderer$Bar;Lcom/androidplot/xy/BarRenderer$Bar;)I
    .locals 2

    .line 369
    sget-object v0, Lcom/androidplot/xy/BarRenderer$1;->$SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation:[I

    iget-object v1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->barOrientation:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-virtual {v1}, Lcom/androidplot/xy/BarRenderer$BarOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 380
    iget p1, p1, Lcom/androidplot/xy/BarRenderer$Bar;->seriesOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p2, p2, Lcom/androidplot/xy/BarRenderer$Bar;->seriesOrder:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 371
    :cond_0
    iget v0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    iget v1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->rangeOriginPx:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p2, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    iget v1, p0, Lcom/androidplot/xy/BarRenderer$BarComparator;->rangeOriginPx:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 372
    iget p2, p2, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget p1, p1, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1

    .line 374
    :cond_1
    iget p1, p1, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget p2, p2, Lcom/androidplot/xy/BarRenderer$Bar;->yPix:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 356
    check-cast p1, Lcom/androidplot/xy/BarRenderer$Bar;

    check-cast p2, Lcom/androidplot/xy/BarRenderer$Bar;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BarRenderer$BarComparator;->compare(Lcom/androidplot/xy/BarRenderer$Bar;Lcom/androidplot/xy/BarRenderer$Bar;)I

    move-result p1

    return p1
.end method
