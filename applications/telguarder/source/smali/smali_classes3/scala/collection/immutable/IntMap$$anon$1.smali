.class public final Lscala/collection/immutable/IntMap$$anon$1;
.super Ljava/lang/Object;
.source "IntMap.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/IntMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/immutable/IntMap<",
        "TA;>;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TB;>;",
        "Lscala/collection/immutable/IntMap<",
        "TB;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/collection/immutable/IntMap<",
            "TB;>;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lscala/collection/mutable/MapBuilder;

    sget-object v1, Lscala/collection/immutable/IntMap$;->MODULE$:Lscala/collection/immutable/IntMap$;

    invoke-virtual {v1}, Lscala/collection/immutable/IntMap$;->empty()Lscala/collection/immutable/IntMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/MapBuilder;-><init>(Lscala/collection/GenMap;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 49
    check-cast p1, Lscala/collection/immutable/IntMap;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMap$$anon$1;->apply(Lscala/collection/immutable/IntMap;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/immutable/IntMap;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TA;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TB;>;",
            "Lscala/collection/immutable/IntMap<",
            "TB;>;>;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$$anon$1;->apply()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
