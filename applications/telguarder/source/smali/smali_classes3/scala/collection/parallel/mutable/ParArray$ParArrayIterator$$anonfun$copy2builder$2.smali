.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
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

    .line 458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 458
    check-cast p1, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->apply(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 460
    invoke-interface {p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->internalArray()[Ljava/lang/Object;

    move-result-object v4

    .line 461
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->arr()[Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v3

    invoke-interface {p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/SeqLike;

    invoke-interface {v0}, Lscala/collection/SeqLike;->size()I

    move-result v5

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->until()I

    move-result v0

    iget-object v6, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v6}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->i()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-interface {p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->lastbuff()Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/mutable/ExposedArrayBuffer;

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/collection/parallel/mutable/ExposedArrayBuffer;->setInternalSize(I)V

    return-void
.end method
