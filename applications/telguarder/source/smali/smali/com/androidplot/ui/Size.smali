.class public Lcom/androidplot/ui/Size;
.super Ljava/lang/Object;
.source "Size.java"


# static fields
.field public static FILL:Lcom/androidplot/ui/Size;


# instance fields
.field private height:Lcom/androidplot/ui/SizeMetric;

.field private width:Lcom/androidplot/ui/SizeMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/androidplot/ui/Size;

    sget-object v1, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    sget-object v2, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sput-object v0, Lcom/androidplot/ui/Size;->FILL:Lcom/androidplot/ui/Size;

    return-void
.end method

.method public constructor <init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/androidplot/ui/SizeMetric;

    invoke-direct {v0, p1, p2}, Lcom/androidplot/ui/SizeMetric;-><init>(FLcom/androidplot/ui/SizeMode;)V

    iput-object v0, p0, Lcom/androidplot/ui/Size;->height:Lcom/androidplot/ui/SizeMetric;

    .line 42
    new-instance p1, Lcom/androidplot/ui/SizeMetric;

    invoke-direct {p1, p3, p4}, Lcom/androidplot/ui/SizeMetric;-><init>(FLcom/androidplot/ui/SizeMode;)V

    iput-object p1, p0, Lcom/androidplot/ui/Size;->width:Lcom/androidplot/ui/SizeMetric;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/ui/SizeMetric;Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/androidplot/ui/Size;->height:Lcom/androidplot/ui/SizeMetric;

    .line 53
    iput-object p2, p0, Lcom/androidplot/ui/Size;->width:Lcom/androidplot/ui/SizeMetric;

    return-void
.end method


# virtual methods
.method public getHeight()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/androidplot/ui/Size;->height:Lcom/androidplot/ui/SizeMetric;

    return-object v0
.end method

.method public getRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/ui/Size;->width:Lcom/androidplot/ui/SizeMetric;

    .line 77
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result v1

    iget-object v2, p0, Lcom/androidplot/ui/Size;->height:Lcom/androidplot/ui/SizeMetric;

    .line 78
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/androidplot/ui/SizeMetric;->getPixelValue(F)F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getWidth()Lcom/androidplot/ui/SizeMetric;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/androidplot/ui/Size;->width:Lcom/androidplot/ui/SizeMetric;

    return-object v0
.end method

.method public setHeight(Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/androidplot/ui/Size;->height:Lcom/androidplot/ui/SizeMetric;

    return-void
.end method

.method public setWidth(Lcom/androidplot/ui/SizeMetric;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/androidplot/ui/Size;->width:Lcom/androidplot/ui/SizeMetric;

    return-void
.end method
