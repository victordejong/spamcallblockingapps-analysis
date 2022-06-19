.class public final Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/collection/parallel/FactoryOps$Otherwise;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->ifParallel(Lscala/Function1;)Lscala/collection/parallel/FactoryOps$Otherwise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/FactoryOps<",
        "TFrom;TElem;TTo;>.Otherwise<TR;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;

.field private final isbody$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;Lscala/Function1;)V
    .locals 0

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;->$outer:Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;

    iput-object p2, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;->isbody$2:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public otherwise(Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;->$outer:Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;

    invoke-virtual {v0}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;->isbody$2:Lscala/Function1;

    iget-object v0, p0, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4$$anon$5;->$outer:Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;

    invoke-virtual {v0}, Lscala/collection/parallel/ParallelCollectionImplicits$$anon$4;->asParallel()Lscala/collection/generic/CanCombineFrom;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
