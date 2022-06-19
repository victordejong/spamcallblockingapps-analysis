.class public Lscala/collection/MapLike$MappedValues;
.super Lscala/collection/AbstractMap;
.source "MapLike.scala"

# interfaces
.implements Lscala/collection/DefaultMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MappedValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractMap<",
        "TA;TC;>;",
        "Lscala/collection/DefaultMap<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/MapLike;

.field public final scala$collection$MapLike$MappedValues$$f:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/MapLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike<",
            "TA;TB;TThis;>;",
            "Lscala/Function1<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 244
    iput-object p2, p0, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$f:Lscala/Function1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/MapLike$MappedValues;->$outer:Lscala/collection/MapLike;

    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/DefaultMap$class;->$init$(Lscala/collection/DefaultMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$MappedValues;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 244
    invoke-static {p0, p1}, Lscala/collection/DefaultMap$class;->$minus(Lscala/collection/DefaultMap;Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$MappedValues;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$MappedValues;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 244
    invoke-static {p0, p1}, Lscala/collection/DefaultMap$class;->$plus(Lscala/collection/DefaultMap;Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TC;>;TD;>;)V"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$2;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$2;-><init>(Lscala/collection/MapLike$MappedValues;)V

    invoke-interface {v0, v1}, Lscala/collection/MapLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;

    invoke-direct {v1, p0, p1}, Lscala/collection/MapLike$MappedValues$$anonfun$foreach$3;-><init>(Lscala/collection/MapLike$MappedValues;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/generic/FilterMonadic;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TC;>;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$f:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v1, Lscala/Some;

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA;TC;>;>;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$MappedValues$$anonfun$iterator$2;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$MappedValues$$anonfun$iterator$2;-><init>(Lscala/collection/MapLike$MappedValues;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->withFilter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$MappedValues$$anonfun$iterator$3;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$MappedValues$$anonfun$iterator$3;-><init>(Lscala/collection/MapLike$MappedValues;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;
    .locals 1

    .line 244
    iget-object v0, p0, Lscala/collection/MapLike$MappedValues;->$outer:Lscala/collection/MapLike;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 247
    invoke-virtual {p0}, Lscala/collection/MapLike$MappedValues;->scala$collection$MapLike$MappedValues$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->size()I

    move-result v0

    return v0
.end method
