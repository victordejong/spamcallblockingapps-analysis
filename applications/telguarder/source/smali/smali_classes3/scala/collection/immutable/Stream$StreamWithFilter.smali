.class public final Lscala/collection/immutable/Stream$StreamWithFilter;
.super Lscala/collection/TraversableLike$WithFilter;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamWithFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/TraversableLike<",
        "TA;",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>.WithFilter;"
    }
.end annotation


# instance fields
.field public final scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 529
    iput-object p2, p0, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;

    invoke-direct {p0, p1, p2}, Lscala/collection/TraversableLike$WithFilter;-><init>(Lscala/collection/TraversableLike;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    .line 566
    :cond_0
    invoke-super {p0, p1, p2}, Lscala/collection/TraversableLike$WithFilter;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lscala/collection/immutable/Stream$StreamWithFilter;->$outer:Lscala/collection/TraversableLike;

    check-cast v0, Lscala/collection/immutable/Stream;

    new-instance v1, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;-><init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;)V

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, v1, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->$outer:Lscala/collection/immutable/Stream$StreamWithFilter;

    iget-object v2, v2, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;

    invoke-interface {v2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$foreach$1;->f$5:Lscala/Function1;

    invoke-interface {v2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lscala/collection/immutable/Stream;

    goto :goto_0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    instance-of v0, v0, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object p1

    goto :goto_0

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Lscala/collection/TraversableLike$WithFilter;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;
    .locals 1

    .line 529
    iget-object v0, p0, Lscala/collection/immutable/Stream$StreamWithFilter;->$outer:Lscala/collection/TraversableLike;

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method

.method public final scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 552
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 554
    :cond_0
    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object p1

    .line 557
    :cond_1
    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    .line 558
    iget-object v1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    iput-object v1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;

    invoke-direct {v1, p0, p2, p1}, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailFlatMap$1$1;-><init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->append(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream;
    .locals 2

    .line 533
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object p1

    .line 535
    :cond_0
    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    sget-object p1, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    return-object p1

    .line 538
    :cond_1
    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v0

    .line 539
    iget-object v1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    iput-object v1, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 540
    iget-object v1, p0, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$p:Lscala/Function1;

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    sget-object v1, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1$1;

    invoke-direct {v1, p0, p2, p1}, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1$1;-><init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    new-instance p1, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/TraversableLike$WithFilter;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$StreamWithFilter;->withFilter(Lscala/Function1;)Lscala/collection/immutable/Stream$StreamWithFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$StreamWithFilter;->withFilter(Lscala/Function1;)Lscala/collection/immutable/Stream$StreamWithFilter;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/immutable/Stream$StreamWithFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/Stream<",
            "TA;>.StreamWithFilter;"
        }
    .end annotation

    .line 574
    new-instance v0, Lscala/collection/immutable/Stream$StreamWithFilter;

    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamWithFilter;->scala$collection$immutable$Stream$StreamWithFilter$$$outer()Lscala/collection/immutable/Stream;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$withFilter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/immutable/Stream$StreamWithFilter$$anonfun$withFilter$1;-><init>(Lscala/collection/immutable/Stream$StreamWithFilter;Lscala/Function1;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$StreamWithFilter;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    return-object v0
.end method
