.class public final Lscala/collection/TraversableLike$$anonfun$partition$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->partition(Lscala/Function1;)Lscala/Tuple2;
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
.field private final l$1:Lscala/collection/mutable/Builder;

.field private final p$2:Lscala/Function1;

.field private final r$1:Lscala/collection/mutable/Builder;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 325
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->l$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->r$1:Lscala/collection/mutable/Builder;

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->p$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$partition$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

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

    .line 325
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->p$2:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->l$1:Lscala/collection/mutable/Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$partition$1;->r$1:Lscala/collection/mutable/Builder;

    :goto_0
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
