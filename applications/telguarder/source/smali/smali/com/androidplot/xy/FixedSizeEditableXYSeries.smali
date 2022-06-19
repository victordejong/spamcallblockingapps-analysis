.class public Lcom/androidplot/xy/FixedSizeEditableXYSeries;
.super Ljava/lang/Object;
.source "FixedSizeEditableXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/EditableXYSeries;


# instance fields
.field private title:Ljava/lang/String;

.field private xVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/androidplot/util/FastNumber;",
            ">;"
        }
    .end annotation
.end field

.field private yVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/androidplot/util/FastNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    .line 29
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->setTitle(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(I)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public resize(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(Ljava/util/List;I)V

    .line 51
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->resize(Ljava/util/List;I)V

    return-void
.end method

.method protected resize(Ljava/util/List;I)V
    .locals 1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 v0, 0x0

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 60
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->title:Ljava/lang/String;

    return-void
.end method

.method public setX(Ljava/lang/Number;I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-static {p1}, Lcom/androidplot/util/FastNumber;->orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setY(Ljava/lang/Number;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->yVals:Ljava/util/List;

    invoke-static {p1}, Lcom/androidplot/util/FastNumber;->orNull(Ljava/lang/Number;)Lcom/androidplot/util/FastNumber;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/androidplot/xy/FixedSizeEditableXYSeries;->xVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
