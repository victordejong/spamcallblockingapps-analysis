.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
            "TT;>.$anon$2;)V"
        }
    .end annotation

    .line 163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;->apply(Lscala/collection/mutable/UnrolledBuffer;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/UnrolledBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2$$anonfun$apply$1;-><init>(Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;)V

    invoke-virtual {p1, v0}, Lscala/collection/mutable/UnrolledBuffer;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParHashSetCombiner$$anon$$anonfun$$$outer()Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;
    .locals 1

    .line 163
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$2;->$outer:Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$2;

    return-object v0
.end method
