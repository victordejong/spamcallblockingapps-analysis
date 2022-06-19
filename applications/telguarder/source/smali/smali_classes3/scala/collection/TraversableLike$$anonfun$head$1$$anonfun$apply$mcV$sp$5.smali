.class public final Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$head$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$head$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$head$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.$anonfun$head$1;)V"
        }
    .end annotation

    .line 427
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;->$outer:Lscala/collection/TraversableLike$$anonfun$head$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 427
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;->apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/runtime/Nothing$;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;->$outer:Lscala/collection/TraversableLike$$anonfun$head$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$head$1;->result$5:Lscala/runtime/ObjectRef;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1;-><init>(Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;Ljava/lang/Object;)V

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 429
    sget-object p1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {p1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object p1

    invoke-virtual {p1}, Lscala/util/control/Breaks;->break()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method
