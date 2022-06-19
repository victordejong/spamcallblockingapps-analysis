.class public final Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "ParVector.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final remvector$1:Lscala/runtime/ObjectRef;

.field private final splitted$1:Lscala/collection/mutable/ArrayBuffer;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;Lscala/runtime/ObjectRef;Lscala/collection/mutable/ArrayBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>.ParVectorIterator;)V"
        }
    .end annotation

    .line 73
    iput-object p2, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->remvector$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->splitted$1:Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->apply(I)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(I)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->splitted$1:Lscala/collection/mutable/ArrayBuffer;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->remvector$1:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Vector;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 75
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;->remvector$1:Lscala/runtime/ObjectRef;

    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/Vector;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
