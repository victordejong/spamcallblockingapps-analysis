.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/Combiner<",
        "TT;TRepr;>;",
        "Ljava/lang/Object;",
        ">;TRepr;>;",
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

    .line 760
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 760
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$takeWhile$2;->apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TT;TRepr;>;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation

    .line 760
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-interface {p1}, Lscala/collection/parallel/Combiner;->resultWithTaskSupport()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParIterable;

    return-object p1
.end method
