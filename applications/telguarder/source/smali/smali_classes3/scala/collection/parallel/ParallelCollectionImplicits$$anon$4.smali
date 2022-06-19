.class public final Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/parallel/FactoryOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParallelCollectionImplicits$;->factory2ops(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/parallel/FactoryOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/FactoryOps<",
        "TFrom;TElem;TTo;>;"
    }
.end annotation


# instance fields
.field private final bf$1:Lscala/collection/generic/CanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/generic/CanBuildFrom;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/FactoryOps$class;->$init$(Lscala/collection/parallel/FactoryOps;)V

    return-void
.end method


# virtual methods
.method public asParallel()Lscala/collection/generic/CanCombineFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/CanCombineFrom<",
            "TFrom;TElem;TTo;>;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->bf$1:Lscala/collection/generic/CanBuildFrom;

    check-cast v0, Lscala/collection/generic/CanCombineFrom;

    return-object v0
.end method

.method public ifParallel(Lscala/Function1;)Lscala/collection/parallel/FactoryOps$Otherwise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/generic/CanCombineFrom<",
            "TFrom;TElem;TTo;>;TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 78
    new-instance v0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;-><init>(Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;Lscala/Function1;)V

    return-object v0
.end method

.method public isParallel()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->bf$1:Lscala/collection/generic/CanBuildFrom;

    instance-of v0, v0, Lscala/collection/Parallel;

    return v0
.end method
