.class public final Lscala/collection/TraversableLike$$anonfun$splitAt$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->splitAt(I)Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final i$2:Lscala/runtime/IntRef;

.field private final l$3:Lscala/collection/mutable/Builder;

.field private final n$1:I

.field private final r$3:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/runtime/IntRef;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 572
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->l$3:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->r$3:Lscala/collection/mutable/Builder;

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->i$2:Lscala/runtime/IntRef;

    iput p5, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->n$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 572
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->i$2:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    iget v1, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->n$1:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->l$3:Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->r$3:Lscala/collection/mutable/Builder;

    :goto_0
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 574
    iget-object p1, p0, Lscala/collection/TraversableLike$$anonfun$splitAt$1;->i$2:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
