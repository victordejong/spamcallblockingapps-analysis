.class public final Lscala/collection/SortedMapLike$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "SortedMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SortedMapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/SortedMap<",
        "TA;TB1;>;",
        "Lscala/Tuple2<",
        "TA;TB1;>;",
        "Lscala/collection/SortedMap<",
        "TA;TB1;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/SortedMapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lscala/collection/SortedMap;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anonfun$$plus$plus$1;->apply(Lscala/collection/SortedMap;Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/SortedMap;Lscala/Tuple2;)Lscala/collection/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/SortedMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 98
    invoke-interface {p1, p2}, Lscala/collection/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    return-object p1
.end method
