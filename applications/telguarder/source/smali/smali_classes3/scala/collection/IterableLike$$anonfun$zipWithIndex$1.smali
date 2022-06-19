.class public final Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;
.super Lscala/runtime/AbstractFunction1;
.source "IterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/IterableLike;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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
.field private final b$1:Lscala/collection/mutable/Builder;

.field private final i$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/IterableLike;Lscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IterableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 284
    iput-object p2, p0, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->b$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    invoke-virtual {p0, p1}, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->b$1:Lscala/collection/mutable/Builder;

    new-instance v1, Lscala/Tuple2;

    iget-object v2, p0, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->i$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 286
    iget-object p1, p0, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;->i$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
