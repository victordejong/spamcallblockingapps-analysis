.class public Lscala/collection/TraversableLike$WithFilter;
.super Ljava/lang/Object;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/collection/generic/FilterMonadic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WithFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/FilterMonadic<",
        "TA;TRepr;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field public final scala$collection$TraversableLike$WithFilter$$p:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 705
    iput-object p2, p0, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$p:Lscala/Function1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$WithFilter;->$outer:Lscala/collection/TraversableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 757
    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 758
    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;-><init>(Lscala/collection/TraversableLike$WithFilter;Lscala/Function1;Lscala/collection/mutable/Builder;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 760
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableLike$WithFilter$$anonfun$foreach$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableLike$WithFilter$$anonfun$foreach$1;-><init>(Lscala/collection/TraversableLike$WithFilter;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p2

    .line 727
    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableLike$WithFilter$$anonfun$map$2;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/TraversableLike$WithFilter$$anonfun$map$2;-><init>(Lscala/collection/TraversableLike$WithFilter;Lscala/Function1;Lscala/collection/mutable/Builder;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 729
    invoke-interface {p2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;
    .locals 1

    .line 705
    iget-object v0, p0, Lscala/collection/TraversableLike$WithFilter;->$outer:Lscala/collection/TraversableLike;

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/TraversableLike$WithFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.WithFilter;"
        }
    .end annotation

    .line 789
    new-instance v0, Lscala/collection/TraversableLike$WithFilter;

    invoke-virtual {p0}, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$$outer()Lscala/collection/TraversableLike;

    move-result-object v1

    new-instance v2, Lscala/collection/TraversableLike$WithFilter$$anonfun$withFilter$1;

    invoke-direct {v2, p0, p1}, Lscala/collection/TraversableLike$WithFilter$$anonfun$withFilter$1;-><init>(Lscala/collection/TraversableLike$WithFilter;Lscala/Function1;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/TraversableLike$WithFilter;-><init>(Lscala/collection/TraversableLike;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .locals 0

    .line 705
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$WithFilter;->withFilter(Lscala/Function1;)Lscala/collection/TraversableLike$WithFilter;

    move-result-object p1

    return-object p1
.end method
