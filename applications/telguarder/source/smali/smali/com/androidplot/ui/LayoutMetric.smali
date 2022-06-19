.class abstract Lcom/androidplot/ui/LayoutMetric;
.super Ljava/lang/Object;
.source "LayoutMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LayoutType:Ljava/lang/Enum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private layoutType:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LayoutType;"
        }
    .end annotation
.end field

.field private value:F


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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;->validatePair(FLjava/lang/Enum;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;->set(FLjava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public getLayoutType()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LayoutType;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/androidplot/ui/LayoutMetric;->layoutType:Ljava/lang/Enum;

    return-object v0
.end method

.method public abstract getPixelValue(F)F
.end method

.method public getValue()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/androidplot/ui/LayoutMetric;->value:F

    return v0
.end method

.method public set(FLjava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/ui/LayoutMetric;->validatePair(FLjava/lang/Enum;)V

    .line 46
    iput p1, p0, Lcom/androidplot/ui/LayoutMetric;->value:F

    .line 47
    iput-object p2, p0, Lcom/androidplot/ui/LayoutMetric;->layoutType:Ljava/lang/Enum;

    return-void
.end method

.method public setLayoutType(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LayoutType;",
            ")V"
        }
    .end annotation

    .line 66
    iget v0, p0, Lcom/androidplot/ui/LayoutMetric;->value:F

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/ui/LayoutMetric;->validatePair(FLjava/lang/Enum;)V

    .line 67
    iput-object p1, p0, Lcom/androidplot/ui/LayoutMetric;->layoutType:Ljava/lang/Enum;

    return-void
.end method

.method public setValue(F)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/androidplot/ui/LayoutMetric;->layoutType:Ljava/lang/Enum;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/ui/LayoutMetric;->validatePair(FLjava/lang/Enum;)V

    .line 56
    iput p1, p0, Lcom/androidplot/ui/LayoutMetric;->value:F

    return-void
.end method

.method protected abstract validatePair(FLjava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FT",
            "LayoutType;",
            ")V"
        }
    .end annotation
.end method
