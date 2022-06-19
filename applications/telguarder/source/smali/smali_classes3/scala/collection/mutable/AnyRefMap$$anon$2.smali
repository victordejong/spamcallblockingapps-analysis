.class public final Lscala/collection/mutable/AnyRefMap$$anon$2;
.super Ljava/lang/Object;
.source "AnyRefMap.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/AnyRefMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/collection/mutable/AnyRefMap<",
        "TK;TV;>;",
        "Lscala/Tuple2<",
        "TJ;TU;>;",
        "Lscala/collection/mutable/AnyRefMap<",
        "TJ;TU;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder<",
            "TJ;TU;>;"
        }
    .end annotation

    .line 407
    new-instance v0, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;-><init>()V

    return-object v0
.end method

.method public apply(Lscala/collection/mutable/AnyRefMap;)Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/AnyRefMap<",
            "TK;TV;>;)",
            "Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder<",
            "TJ;TU;>;"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap$$anon$2;->apply()Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lscala/collection/mutable/AnyRefMap$$anon$2;->apply()Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 405
    check-cast p1, Lscala/collection/mutable/AnyRefMap;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/AnyRefMap$$anon$2;->apply(Lscala/collection/mutable/AnyRefMap;)Lscala/collection/mutable/AnyRefMap$AnyRefMapBuilder;

    move-result-object p1

    return-object p1
.end method
