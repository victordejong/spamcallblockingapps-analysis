.class public final Lscala/collection/immutable/MapLike$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/Map<",
        "TA;TB1;>;",
        "Lscala/Tuple2<",
        "TA;TB1;>;",
        "Lscala/collection/immutable/Map<",
        "TA;TB1;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/MapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lscala/collection/immutable/Map;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapLike$$anonfun$$plus$plus$1;->apply(Lscala/collection/immutable/Map;Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/Map;Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 88
    invoke-interface {p1, p2}, Lscala/collection/immutable/Map;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method
