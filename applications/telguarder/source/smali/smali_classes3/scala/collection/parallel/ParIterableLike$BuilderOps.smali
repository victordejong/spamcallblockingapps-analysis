.class public interface abstract Lscala/collection/parallel/ParIterableLike$BuilderOps;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x601
    name = "BuilderOps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TElem;TTo;>;"
        }
    .end annotation
.end method

.method public abstract ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Cmb:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TCmb;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.BuilderOps<TElem;TTo;>.Otherwise<TCmb;>;"
        }
    .end annotation
.end method

.method public abstract isCombiner()Z
.end method

.method public abstract synthetic scala$collection$parallel$ParIterableLike$BuilderOps$$$outer()Lscala/collection/parallel/ParIterableLike;
.end method
