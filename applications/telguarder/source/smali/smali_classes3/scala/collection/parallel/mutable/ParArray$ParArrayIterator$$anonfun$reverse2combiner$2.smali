.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
        "TT;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;)V"
        }
    .end annotation

    .line 525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 525
    check-cast p1, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->apply(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    .line 528
    invoke-interface {p1, v0}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->sizeHint(I)V

    .line 529
    invoke-interface {p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->internalArray()[Ljava/lang/Object;

    move-result-object v3

    .line 530
    iget-object v2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v2}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v7

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$reverse2combiner_quick([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 531
    invoke-interface {p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-virtual {p1, v0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->setInternalSize(I)V

    return-void
.end method
