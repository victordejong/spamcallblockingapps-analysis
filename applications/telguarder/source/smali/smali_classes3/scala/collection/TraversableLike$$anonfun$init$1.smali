.class public final Lscala/collection/TraversableLike$$anonfun$init$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->init()Ljava/lang/Object;
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
.field private final b$8:Lscala/collection/mutable/Builder;

.field private final follow$1:Lscala/runtime/BooleanRef;

.field private final lst$2:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 484
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->lst$2:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->follow$1:Lscala/runtime/BooleanRef;

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->b$8:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 484
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$init$1;->apply(Ljava/lang/Object;)V

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

    .line 485
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->follow$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->b$8:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->lst$2:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->follow$1:Lscala/runtime/BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 487
    :goto_0
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$init$1;->lst$2:Lscala/runtime/ObjectRef;

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
