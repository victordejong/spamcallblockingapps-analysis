.class public final Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParVector.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/LazyParVectorCombiner;->result()Lscala/collection/parallel/immutable/ParVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/immutable/VectorBuilder<",
        "TT;>;",
        "Lscala/collection/immutable/VectorBuilder<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final rvb$1:Lscala/collection/immutable/VectorBuilder;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/LazyParVectorCombiner;Lscala/collection/immutable/VectorBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/LazyParVectorCombiner<",
            "TT;>;)V"
        }
    .end annotation

    .line 116
    iput-object p2, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;->rvb$1:Lscala/collection/immutable/VectorBuilder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, Lscala/collection/immutable/VectorBuilder;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;->apply(Lscala/collection/immutable/VectorBuilder;)Lscala/collection/immutable/VectorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/VectorBuilder;)Lscala/collection/immutable/VectorBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/VectorBuilder<",
            "TT;>;)",
            "Lscala/collection/immutable/VectorBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lscala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1;->rvb$1:Lscala/collection/immutable/VectorBuilder;

    invoke-virtual {p1}, Lscala/collection/immutable/VectorBuilder;->result()Lscala/collection/immutable/Vector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/VectorBuilder;

    move-result-object p1

    return-object p1
.end method
