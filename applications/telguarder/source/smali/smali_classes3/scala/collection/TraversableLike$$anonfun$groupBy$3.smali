.class public final Lscala/collection/TraversableLike$$anonfun$groupBy$3;
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
        "Lscala/Tuple2<",
        "TK;",
        "Lscala/collection/mutable/Builder<",
        "TA;TRepr;>;>;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TK;TRepr;>;",
        "Lscala/collection/immutable/Map<",
        "TK;TRepr;>;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$5:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 337
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$3;->b$5:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$groupBy$3;->apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;",
            "Lscala/collection/mutable/Builder<",
            "TA;TRepr;>;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TK;TRepr;>;",
            "Lscala/collection/immutable/Map<",
            "TK;TRepr;>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$3;->b$5:Lscala/collection/mutable/Builder;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/Builder;

    invoke-interface {p1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1

    .line 337
    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
