.class public final Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/parallel/TraversableOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParallelCollectionImplicits$;->traversable2ops(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/TraversableOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/TraversableOps<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final t$1:Lscala/collection/GenTraversableOnce;


# direct methods
.method public constructor <init>(Lscala/collection/GenTraversableOnce;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/TraversableOps$class;->$init$(Lscala/collection/parallel/TraversableOps;)V

    return-void
.end method


# virtual methods
.method public asParIterable()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    check-cast v0, Lscala/collection/parallel/ParIterable;

    return-object v0
.end method

.method public asParSeq()Lscala/collection/parallel/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParSeq<",
            "TT;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    check-cast v0, Lscala/collection/parallel/ParSeq;

    return-object v0
.end method

.method public ifParSeq(Lscala/Function1;)Lscala/collection/parallel/TraversableOps$Otherwise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/parallel/ParSeq<",
            "TT;>;TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2$$anon$3;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2$$anon$3;-><init>(Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;Lscala/Function1;)V

    return-object v0
.end method

.method public isParIterable()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    instance-of v0, v0, Lscala/collection/parallel/ParIterable;

    return v0
.end method

.method public isParSeq()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    instance-of v0, v0, Lscala/collection/parallel/ParSeq;

    return v0
.end method

.method public isParallel()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$2;->t$1:Lscala/collection/GenTraversableOnce;

    instance-of v0, v0, Lscala/collection/Parallel;

    return v0
.end method
