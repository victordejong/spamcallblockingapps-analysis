.class public final Lscala/collection/immutable/MapLike$$anonfun$transform$2;
.super Lscala/runtime/AbstractFunction1;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/MapLike;->transform(Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/collection/mutable/Builder<",
        "Lscala/Tuple2<",
        "TA;TC;>;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$1:Lscala/collection/mutable/Builder;

.field private final f$2:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/MapLike;Lscala/collection/mutable/Builder;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 126
    iput-object p2, p0, Lscala/collection/immutable/MapLike$$anonfun$transform$2;->b$1:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/immutable/MapLike$$anonfun$transform$2;->f$2:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$$anonfun$transform$2;->apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/mutable/Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TC;>;TThat;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lscala/collection/immutable/MapLike$$anonfun$transform$2;->b$1:Lscala/collection/mutable/Builder;

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lscala/collection/immutable/MapLike$$anonfun$transform$2;->f$2:Lscala/Function2;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
