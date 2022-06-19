.class public Lcom/androidplot/util/LinkedLayerList;
.super Ljava/util/LinkedList;
.source "LinkedLayerList.java"

# interfaces
.implements Lcom/androidplot/util/Layerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TType;>;",
        "Lcom/androidplot/util/Layerable<",
        "TType;>;"
    }
.end annotation


# instance fields
.field private organizer:Lcom/androidplot/util/LayerListOrganizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/LayerListOrganizer<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 28
    new-instance v0, Lcom/androidplot/util/LayerListOrganizer;

    invoke-direct {v0, p0}, Lcom/androidplot/util/LayerListOrganizer;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    return-void
.end method


# virtual methods
.method public addToBottom(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->addToBottom(Ljava/lang/Object;)V

    return-void
.end method

.method public addToTop(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->addToTop(Ljava/lang/Object;)V

    return-void
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TType;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0}, Lcom/androidplot/util/LayerListOrganizer;->elements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;TType;)Z"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LayerListOrganizer;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;TType;)Z"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LayerListOrganizer;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveDown(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->moveDown(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveToBottom(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->moveToBottom(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveToTop(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->moveToTop(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public moveUp(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/androidplot/util/LinkedLayerList;->organizer:Lcom/androidplot/util/LayerListOrganizer;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LayerListOrganizer;->moveUp(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
