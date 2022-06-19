.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$11;
.super Lscala/runtime/AbstractFunction2;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->span(Lscala/Function1;)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TRepr;TRepr;",
        "Lscala/Tuple2<",
        "TRepr;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 781
    check-cast p1, Lscala/collection/parallel/ParIterable;

    check-cast p2, Lscala/collection/parallel/ParIterable;

    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$$anonfun$11;->apply(Lscala/collection/parallel/ParIterable;Lscala/collection/parallel/ParIterable;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/ParIterable;Lscala/collection/parallel/ParIterable;)Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;TRepr;)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation

    .line 781
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
