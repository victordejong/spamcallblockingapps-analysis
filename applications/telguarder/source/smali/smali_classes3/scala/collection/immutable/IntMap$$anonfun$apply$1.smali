.class public final Lscala/collection/immutable/IntMap$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction2;
.source "IntMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/IntMap$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/IntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/IntMap<",
        "TT;>;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lscala/collection/immutable/IntMap<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lscala/collection/immutable/IntMap;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/IntMap$$anonfun$apply$1;->apply(Lscala/collection/immutable/IntMap;Lscala/Tuple2;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/IntMap;Lscala/Tuple2;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Lscala/Tuple2;->_1$mcI$sp()I

    move-result v0

    invoke-virtual {p2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lscala/collection/immutable/IntMap;->updated(ILjava/lang/Object;)Lscala/collection/immutable/IntMap;

    move-result-object p1

    return-object p1
.end method
