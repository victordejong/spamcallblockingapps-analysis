.class public final Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$forall$1;
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
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$forall$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$forall$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.$anonfun$forall$1;)V"
        }
    .end annotation

    .line 354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/TraversableLike$$anonfun$forall$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/TraversableLike$$anonfun$forall$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$forall$1;->p$3:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;->$outer:Lscala/collection/TraversableLike$$anonfun$forall$1;

    iget-object p1, p1, Lscala/collection/TraversableLike$$anonfun$forall$1;->result$2:Lscala/runtime/BooleanRef;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lscala/runtime/BooleanRef;->elem:Z

    sget-object p1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {p1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object p1

    invoke-virtual {p1}, Lscala/util/control/Breaks;->break()Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method
