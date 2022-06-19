.class public final Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
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


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field public final b$9:Lscala/collection/mutable/Builder;

.field public final from$1:I

.field public final i$1:Lscala/runtime/IntRef;

.field public final until$1:I


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike;",
            ")V"
        }
    .end annotation

    .line 509
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->$outer:Lscala/collection/TraversableLike;

    iput p2, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->from$1:I

    iput p3, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->until$1:I

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->b$9:Lscala/collection/mutable/Builder;

    iput-object p5, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->i$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 509
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6;-><init>(Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 509
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6;-><init>(Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method
