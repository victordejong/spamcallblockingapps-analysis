.class public Lscala/collection/MapLike$FilteredKeys;
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
    name = "FilteredKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractMap<",
        "TA;TB;>;",
        "Lscala/collection/DefaultMap<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/MapLike;

.field public final scala$collection$MapLike$FilteredKeys$$p:Lscala/Function1;
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
.method public constructor <init>(Lscala/collection/MapLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike<",
            "TA;TB;TThis;>;",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 230
    iput-object p2, p0, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$p:Lscala/Function1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/MapLike$FilteredKeys;->$outer:Lscala/collection/MapLike;

    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/DefaultMap$class;->$init$(Lscala/collection/DefaultMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$FilteredKeys;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 230
    invoke-static {p0, p1}, Lscala/collection/DefaultMap$class;->$minus(Lscala/collection/DefaultMap;Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$FilteredKeys;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$FilteredKeys;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

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

    .line 230
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

    .line 233
    invoke-virtual {p0}, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$p:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;TC;>;)V"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$FilteredKeys$$anonfun$foreach$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/MapLike$FilteredKeys$$anonfun$foreach$1;-><init>(Lscala/collection/MapLike$FilteredKeys;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/MapLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$p:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

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
            "TA;TB;>;>;"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lscala/collection/MapLike$FilteredKeys;->scala$collection$MapLike$FilteredKeys$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$FilteredKeys$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$FilteredKeys$$anonfun$iterator$1;-><init>(Lscala/collection/MapLike$FilteredKeys;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$MapLike$FilteredKeys$$$outer()Lscala/collection/MapLike;
    .locals 1

    .line 230
    iget-object v0, p0, Lscala/collection/MapLike$FilteredKeys;->$outer:Lscala/collection/MapLike;

    return-object v0
.end method
