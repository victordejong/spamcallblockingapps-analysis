.class public final Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
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


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

.field public final cb$3:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ParArrayIterator;)V"
        }
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->cb$3:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .line 471
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 4

    .line 464
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;->scala$collection$parallel$mutable$ParArray$ParArrayIterator$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->cb$3:Lscala/collection/mutable/Builder;

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParArray;->builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object v0

    .line 465
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;)V

    .line 464
    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterableLike$BuilderOps;->ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;

    move-result-object v0

    .line 471
    new-instance v1, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$1;-><init>(Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;)V

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Lscala/collection/parallel/mutable/UnrolledParArrayCombiner;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;->otherwise(Lscala/Function0;Lscala/reflect/ClassTag;)V

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParArray$ParArrayIterator$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
    .locals 1

    .line 471
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1;->$outer:Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;

    return-object v0
.end method
