.class public Lcom/androidplot/xy/BubbleSeries;
.super Ljava/lang/Object;
.source "BubbleSeries.java"

# interfaces
.implements Lcom/androidplot/xy/XYSeries;


# instance fields
.field private title:Ljava/lang/String;

.field private xVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private yVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private zVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/androidplot/xy/BubbleSeries;->yVals:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/androidplot/xy/BubbleSeries;->title:Ljava/lang/String;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 41
    iget-object p3, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/androidplot/xy/BubbleSeries;->yVals:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    .line 49
    iput-object p4, p0, Lcom/androidplot/xy/BubbleSeries;->title:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Number;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 20
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-gtz v0, :cond_1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->yVals:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcom/androidplot/xy/BubbleSeries;->yVals:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v1, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    add-int/lit8 v2, v0, 0x2

    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "BubbleSeries interleave array length must be a non-zero multiple of 3."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->yVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getZ(I)Ljava/lang/Number;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getZVals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->zVals:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/androidplot/xy/BubbleSeries;->xVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
