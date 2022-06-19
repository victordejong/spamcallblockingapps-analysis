.class public Lcom/androidplot/util/LayerListOrganizer;
.super Ljava/lang/Object;
.source "LayerListOrganizer.java"

# interfaces
.implements Lcom/androidplot/util/Layerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/util/Layerable<",
        "TElementType;>;"
    }
.end annotation


# static fields
.field private static final ONE:I = 0x1

.field private static final ZERO:I


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TElementType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TElementType;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addToBottom(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addToTop(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TElementType;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    return-object v0
.end method

.method public moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 54
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument to moveAbove(A, B); A cannot be equal to B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;TElementType;)Z"
        }
    .end annotation

    if-eq p1, p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 65
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument to moveBeaneath(A, B); A cannot be equal to B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveDown(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-gtz v0, :cond_1

    return v1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/util/LayerListOrganizer;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveToBottom(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public moveToTop(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveUp(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementType;)Z"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    return v2

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/androidplot/util/LayerListOrganizer;->list:Ljava/util/List;

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/androidplot/util/LayerListOrganizer;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
