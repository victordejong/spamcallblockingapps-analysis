.class Lcom/androidplot/xy/BarRenderer$BarGroup;
.super Ljava/lang/Object;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BarGroup"
.end annotation


# instance fields
.field public bars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/xy/BarRenderer$Bar;",
            ">;"
        }
    .end annotation
.end field

.field public centerPix:F

.field public i:I

.field public leftPix:F

.field public plotArea:Landroid/graphics/RectF;

.field public rightPix:F


# direct methods
.method public constructor <init>(IFLandroid/graphics/RectF;)V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    .line 338
    iput p2, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->centerPix:F

    .line 339
    iput-object p3, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->plotArea:Landroid/graphics/RectF;

    .line 340
    iput p1, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->i:I

    return-void
.end method


# virtual methods
.method public addBar(Lcom/androidplot/xy/BarRenderer$Bar;)V
    .locals 1

    .line 344
    iput-object p0, p1, Lcom/androidplot/xy/BarRenderer$Bar;->barGroup:Lcom/androidplot/xy/BarRenderer$BarGroup;

    .line 345
    iget-object v0, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->bars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getWidth()F
    .locals 2

    .line 349
    iget v0, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->rightPix:F

    iget v1, p0, Lcom/androidplot/xy/BarRenderer$BarGroup;->leftPix:F

    sub-float/2addr v0, v1

    return v0
.end method
