.class public final Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$2;
.super Lscala/runtime/AbstractFunction1;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/immutable/Vector<",
        "TT;>;",
        "Lscala/collection/parallel/immutable/ParVector<",
        "TT;>.ParVectorIterator;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>.ParVectorIterator;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, Lscala/collection/immutable/Vector;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$2;->apply(Lscala/collection/immutable/Vector;)Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/Vector;)Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Vector<",
            "TT;>;)",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>.ParVectorIterator;"
        }
    .end annotation

    .line 77
    new-instance v0, Lscala/collection/parallel/immutable/ParVector;

    invoke-direct {v0, p1}, Lscala/collection/parallel/immutable/ParVector;-><init>(Lscala/collection/immutable/Vector;)V

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParVector;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;

    return-object p1
.end method
