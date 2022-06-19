.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;
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
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator$$anonfun$copy2builder$1;)V"
        }
    .end annotation

    .line 465
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p1, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->apply(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/UnrolledParArrayCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 467
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->array()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 468
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    iget-object v0, v0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    iget-object v5, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v5

    sub-int v6, v0, v5

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->size()I

    move-result v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->size_$eq(I)V

    .line 470
    invoke-interface {p1}, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;->buff()Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/DoublingUnrolledBuffer;->lastPtr()Lscala/collection/mutable/UnrolledBuffer$Unrolled;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lscala/collection/mutable/UnrolledBuffer$Unrolled;->size_$eq(I)V

    return-void
.end method
