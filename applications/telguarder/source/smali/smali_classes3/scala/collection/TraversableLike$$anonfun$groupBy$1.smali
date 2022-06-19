.class public final Lscala/collection/TraversableLike$$anonfun$groupBy$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/Builder<",
        "TA;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field private final f$6:Lscala/Function1;

.field private final m$1:Lscala/collection/mutable/Map;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Map;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->$outer:Lscala/collection/TraversableLike;

    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->m$1:Lscala/collection/mutable/Map;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->f$6:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->f$6:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->m$1:Lscala/collection/mutable/Map;

    new-instance v2, Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;

    invoke-direct {v2, p0}, Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;-><init>(Lscala/collection/TraversableLike$$anonfun$groupBy$1;)V

    invoke-interface {v1, v0, v2}, Lscala/collection/mutable/Map;->getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    .line 334
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$TraversableLike$$anonfun$$$outer()Lscala/collection/TraversableLike;
    .locals 1

    .line 331
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->$outer:Lscala/collection/TraversableLike;

    return-object v0
.end method
