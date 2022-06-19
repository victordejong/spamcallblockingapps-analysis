.class public Lscala/collection/generic/ParMapFactory$CanCombineFromMap;
.super Ljava/lang/Object;
.source "ParMapFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanCombineFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/ParMapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CanCombineFromMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanCombineFrom<",
        "TCC;",
        "Lscala/Tuple2<",
        "TK;TV;>;TCC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/generic/ParMapFactory;


# direct methods
.method public constructor <init>(Lscala/collection/generic/ParMapFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/ParMapFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->$outer:Lscala/collection/generic/ParMapFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 46
    check-cast p1, Lscala/collection/parallel/ParMap;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->apply(Lscala/collection/parallel/ParMap;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;TCC;>;"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->scala$collection$generic$ParMapFactory$CanCombineFromMap$$$outer()Lscala/collection/generic/ParMapFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/ParMapFactory;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 46
    check-cast p1, Lscala/collection/parallel/ParMap;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->apply(Lscala/collection/parallel/ParMap;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/parallel/ParMap;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;TCC;>;"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lscala/collection/parallel/ParMap;->genericMapCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$ParMapFactory$CanCombineFromMap$$$outer()Lscala/collection/generic/ParMapFactory;
    .locals 1

    .line 46
    iget-object v0, p0, Lscala/collection/generic/ParMapFactory$CanCombineFromMap;->$outer:Lscala/collection/generic/ParMapFactory;

    return-object v0
.end method
