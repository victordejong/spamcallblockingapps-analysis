.class public Lcom/androidplot/xy/SimpleXYSeries;
.super Ljava/lang/Object;
.source "SimpleXYSeries.java"

# interfaces
.implements Lcom/androidplot/xy/EditableXYSeries;
.implements Lcom/androidplot/xy/OrderedXYSeries;
.implements Lcom/androidplot/PlotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    }
.end annotation


# instance fields
.field private lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile title:Ljava/lang/String;

.field private xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field private volatile xVals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private volatile yVals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;[Ljava/lang/Number;)V
    .locals 0

    .line 53
    invoke-static {p3}, Lcom/androidplot/xy/SimpleXYSeries;->asNumberList([Ljava/lang/Number;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    sget-object v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 49
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/SimpleXYSeries;->setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p3}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 117
    iget-object p3, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "xVals and yVals List parameters must be of the same size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Neither the xVals nor the yVals parameters may be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static varargs asNumberList([Ljava/lang/Number;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public addFirst(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 256
    throw p1
.end method

.method public addLast(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 284
    throw p1
.end method

.method public clear()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 350
    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getX(I)Ljava/lang/Number;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getXOrder()Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object v0
.end method

.method public getY(I)Ljava/lang/Number;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getxVals()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getyVals()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    return-object v0
.end method

.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    return-void
.end method

.method public removeFirst()Lcom/androidplot/xy/XYCoords;
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SimpleXYSeries;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 269
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 267
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 272
    throw v0
.end method

.method public removeLast()Lcom/androidplot/xy/XYCoords;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/xy/SimpleXYSeries;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    new-instance v0, Lcom/androidplot/xy/XYCoords;

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYCoords;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 295
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 299
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 300
    throw v0
.end method

.method public resize(I)V
    .locals 3

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 217
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_1
    if-le v0, p1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 230
    throw p1
.end method

.method public setModel(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 145
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_6

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 152
    :cond_0
    sget-object v0, Lcom/androidplot/xy/SimpleXYSeries$1;->$SwitchMap$com$androidplot$xy$SimpleXYSeries$ArrayFormat:[I

    invoke-virtual {p2}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 164
    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    if-nez p2, :cond_1

    .line 165
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    .line 167
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v2

    if-nez p2, :cond_2

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    div-int/2addr p2, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v2, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 168
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Cannot auto-generate series from odd-sized xy List."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected enum value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_4
    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 157
    :goto_1
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 158
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 182
    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 311
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public setX(Ljava/lang/Number;I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 196
    throw p1
.end method

.method public setXOrder(Lcom/androidplot/xy/OrderedXYSeries$XOrder;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->xOrder:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-void
.end method

.method public setXY(Ljava/lang/Number;Ljava/lang/Number;I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p3, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public setY(Ljava/lang/Number;I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object p1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 210
    throw p1
.end method

.method public size()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->yVals:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public useImplicitXVals()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v0, 0x0

    .line 127
    :try_start_0
    iput-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->xVals:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/androidplot/xy/SimpleXYSeries;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 130
    throw v0
.end method
