.class public final Lscala/collection/parallel/ParIterableLike$$anon$13;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$BuilderOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.BuilderOps<TElem;TTo;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field public final cb$2:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$13;->$outer:Lscala/collection/parallel/ParIterableLike;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$13;->cb$2:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$BuilderOps$class;->$init$(Lscala/collection/parallel/ParIterableLike$BuilderOps;)V

    return-void
.end method


# virtual methods
.method public asCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TElem;TTo;>;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$13;->cb$2:Lscala/collection/mutable/Builder;

    check-cast v0, Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Cmb:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TCmb;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 332
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;-><init>(Lscala/collection/parallel/ParIterableLike$$anon$13;Lscala/Function1;)V

    return-object v0
.end method

.method public isCombiner()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$13;->cb$2:Lscala/collection/mutable/Builder;

    instance-of v0, v0, Lscala/collection/parallel/Combiner;

    return v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$BuilderOps$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 289
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$13;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method
