.class public Lscala/collection/parallel/immutable/ParMap$WithDefault;
.super Lscala/collection/parallel/ParMap$WithDefault;
.source "ParMap.scala"

# interfaces
.implements Lscala/collection/parallel/immutable/ParMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/immutable/ParMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/ParMap$WithDefault<",
        "TK;TV;>;",
        "Lscala/collection/parallel/immutable/ParMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final d:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final underlying:Lscala/collection/parallel/immutable/ParMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;",
            "Lscala/Function1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    iput-object p2, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->d:Lscala/Function1;

    .line 83
    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/ParMap$WithDefault;-><init>(Lscala/collection/parallel/ParMap;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->$init$(Lscala/collection/parallel/immutable/ParIterable;)V

    invoke-static {p0}, Lscala/collection/parallel/immutable/ParMap$class;->$init$(Lscala/collection/parallel/immutable/ParMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/immutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    invoke-interface {v1, p1}, Lscala/collection/parallel/immutable/ParMap;->$minus(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/immutable/ParMap;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, v1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap$WithDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/immutable/ParMap$WithDefault<",
            "TK;TU;>;"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/immutable/ParIterable;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->companion(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParMap;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->empty()Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/immutable/ParMap$WithDefault;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    invoke-interface {v1}, Lscala/collection/parallel/immutable/ParMap;->empty()Lscala/collection/parallel/immutable/ParMap;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, v1, v2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/immutable/ParMap;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->empty()Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->genericBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->keySet()Lscala/collection/parallel/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->keys()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keysIterator()Lscala/collection/Iterator;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->keysIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public mapCompanion()Lscala/collection/generic/GenericParMapCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericParMapCompanion<",
            "Lscala/collection/parallel/immutable/ParMap;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParMap$class;->mapCompanion(Lscala/collection/parallel/immutable/ParMap;)Lscala/collection/generic/GenericParMapCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    invoke-interface {v0}, Lscala/collection/parallel/immutable/ParMap;->seq()Lscala/collection/Iterable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Map;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-interface {v0, v1}, Lscala/collection/immutable/Map;->withDefault(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParMap$class;->stringPrefix(Lscala/collection/parallel/immutable/ParMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toIterable()Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/immutable/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->toIterable(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TP;TQ;>;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TP;TQ;>;"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lscala/collection/parallel/immutable/ParMap$class;->toMap(Lscala/collection/parallel/immutable/ParMap;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toSeq()Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/immutable/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lscala/collection/parallel/immutable/ParIterable$class;->toSeq(Lscala/collection/parallel/immutable/ParIterable;)Lscala/collection/parallel/immutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->toSet()Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TK;TU;)",
            "Lscala/collection/parallel/immutable/ParMap$WithDefault<",
            "TK;TU;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    invoke-interface {v1, p1, p2}, Lscala/collection/parallel/immutable/ParMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    iget-object p2, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->values()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valuesIterator()Lscala/collection/Iterator;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParMap$WithDefault;->valuesIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    invoke-direct {v0, v1, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/parallel/immutable/ParMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lscala/collection/parallel/immutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/immutable/ParMap;

    new-instance v2, Lscala/collection/parallel/immutable/ParMap$WithDefault$$anonfun$withDefaultValue$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/parallel/immutable/ParMap$WithDefault$$anonfun$withDefaultValue$2;-><init>(Lscala/collection/parallel/immutable/ParMap$WithDefault;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/parallel/immutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/immutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method
