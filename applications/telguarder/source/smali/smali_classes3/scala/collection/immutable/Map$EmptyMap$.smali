.class public Lscala/collection/immutable/Map$EmptyMap$;
.super Lscala/collection/immutable/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyMap$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/AbstractMap<",
        "Ljava/lang/Object;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/Map$EmptyMap$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/Map$EmptyMap$;

    invoke-direct {v0}, Lscala/collection/immutable/Map$EmptyMap$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    sput-object p0, Lscala/collection/immutable/Map$EmptyMap$;->MODULE$:Lscala/collection/immutable/Map$EmptyMap$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 95
    sget-object v0, Lscala/collection/immutable/Map$EmptyMap$;->MODULE$:Lscala/collection/immutable/Map$EmptyMap$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TB1;>;)",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/Object;",
            "TB1;>;"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/immutable/Map$EmptyMap$;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "Lscala/runtime/Nothing$;",
            ">;>;"
        }
    .end annotation

    .line 98
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$EmptyMap$;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Map$EmptyMap$;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TB1;)",
            "Lscala/collection/immutable/Map<",
            "Ljava/lang/Object;",
            "TB1;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lscala/collection/immutable/Map$Map1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/Map$Map1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
