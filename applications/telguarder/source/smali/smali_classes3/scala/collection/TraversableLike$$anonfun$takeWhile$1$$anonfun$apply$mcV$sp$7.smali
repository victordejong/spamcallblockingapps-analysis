.class public final Lscala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$takeWhile$1;
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
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$takeWhile$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$takeWhile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.$anonfun$takeWhile$1;)V"
        }
    .end annotation

    .line 539
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7;->$outer:Lscala/collection/TraversableLike$$anonfun$takeWhile$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7;->$outer:Lscala/collection/TraversableLike$$anonfun$takeWhile$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$takeWhile$1;->p$6:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$takeWhile$1$$anonfun$apply$mcV$sp$7;->$outer:Lscala/collection/TraversableLike$$anonfun$takeWhile$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$takeWhile$1;->b$10:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1

    .line 540
    :cond_0
    sget-object p1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {p1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object p1

    invoke-virtual {p1}, Lscala/util/control/Breaks;->break()Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method
