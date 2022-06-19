.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
        "TT;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator$$anonfun$reverse2combiner$1;)V"
        }
    .end annotation

    .line 534
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 534
    check-cast p1, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->apply(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    .line 537
    invoke-interface {p1, v0}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->sizeHint(I)V

    .line 538
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v2, v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    iget-object v1, v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v7

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$reverse2combiner_quick([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 540
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->size_$eq(I)V

    .line 541
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    return-void
.end method
