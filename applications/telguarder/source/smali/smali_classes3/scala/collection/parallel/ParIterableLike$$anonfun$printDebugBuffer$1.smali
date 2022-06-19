.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->printDebugBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Function1<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 1497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1497
    check-cast p1, Lscala/Function1;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;->apply(Lscala/Function1;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 1498
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->debugBuffer()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5;-><init>(Lscala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->foreach(Lscala/Function1;)V

    return-void
.end method
