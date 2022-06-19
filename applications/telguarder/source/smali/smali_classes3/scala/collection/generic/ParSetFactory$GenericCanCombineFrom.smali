.class public Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;
.super Ljava/lang/Object;
.source "ParSetFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanCombineFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/ParSetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericCanCombineFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanCombineFrom<",
        "TCC;TA;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/ParSetFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/ParSetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/ParSetFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->$outer:Lscala/collection/generic/ParSetFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/parallel/ParSet;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->apply(Lscala/collection/parallel/ParSet;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->scala$collection$generic$ParSetFactory$GenericCanCombineFrom$$$outer()Lscala/collection/generic/ParSetFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/ParSetFactory;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 31
    check-cast p1, Lscala/collection/parallel/ParSet;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->apply(Lscala/collection/parallel/ParSet;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/parallel/ParSet;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Lscala/collection/parallel/ParSet;->genericCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$ParSetFactory$GenericCanCombineFrom$$$outer()Lscala/collection/generic/ParSetFactory;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;->$outer:Lscala/collection/generic/ParSetFactory;

    return-object v0
.end method
