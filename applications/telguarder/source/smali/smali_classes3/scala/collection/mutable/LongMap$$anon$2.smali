.class public final Lscala/collection/mutable/LongMap$$anon$2;
.super Ljava/lang/Object;
.source "LongMap.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/LongMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/mutable/LongMap<",
        "TV;>;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TU;>;",
        "Lscala/collection/mutable/LongMap<",
        "TU;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap$$anon$2;->apply()Lscala/collection/mutable/LongMap$LongMapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 499
    check-cast p1, Lscala/collection/mutable/LongMap;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/LongMap$$anon$2;->apply(Lscala/collection/mutable/LongMap;)Lscala/collection/mutable/LongMap$LongMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply()Lscala/collection/mutable/LongMap$LongMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LongMap$LongMapBuilder<",
            "TU;>;"
        }
    .end annotation

    .line 501
    new-instance v0, Lscala/collection/mutable/LongMap$LongMapBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/LongMap$LongMapBuilder;-><init>()V

    return-object v0
.end method

.method public apply(Lscala/collection/mutable/LongMap;)Lscala/collection/mutable/LongMap$LongMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LongMap<",
            "TV;>;)",
            "Lscala/collection/mutable/LongMap$LongMapBuilder<",
            "TU;>;"
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lscala/collection/mutable/LongMap$$anon$2;->apply()Lscala/collection/mutable/LongMap$LongMapBuilder;

    move-result-object p1

    return-object p1
.end method
