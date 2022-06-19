.class public final Lscala/collection/TraversableLike$$anonfun$head$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->head()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field public final result$5:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$head$1;->$outer:Lscala/collection/TraversableLike;

    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$head$1;->result$5:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 427
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anonfun$head$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 427
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$head$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;-><init>(Lscala/collection/TraversableLike$$anonfun$head$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 427
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$head$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;-><init>(Lscala/collection/TraversableLike$$anonfun$head$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method
