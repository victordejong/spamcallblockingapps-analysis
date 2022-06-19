.class public final Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;
.super Lscala/runtime/AbstractFunction0;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$groupBy$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/mutable/Builder<",
        "TA;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$groupBy$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$groupBy$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.$anonfun$groupBy$1;)V"
        }
    .end annotation

    .line 333
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;->$outer:Lscala/collection/TraversableLike$$anonfun$groupBy$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;TRepr;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$groupBy$1$$anonfun$1;->$outer:Lscala/collection/TraversableLike$$anonfun$groupBy$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$groupBy$1;->$outer:Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
