.class public final Lscala/collection/TraversableLike$$anonfun$filterImpl$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$3:Lscala/collection/mutable/Builder;

.field private final isFlipped$1:Z

.field private final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/Function1;ZLscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike;",
            ")V"
        }
    .end annotation

    .line 258
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->p$1:Lscala/Function1;

    iput-boolean p3, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->isFlipped$1:Z

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->b$3:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->p$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->isFlipped$1:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;->b$3:Lscala/collection/mutable/Builder;

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
