.class public final Lscala/collection/MapLike$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/MapLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/Map<",
        "TA;TB1;>;",
        "Lscala/Tuple2<",
        "TA;TB1;>;",
        "Lscala/collection/Map<",
        "TA;TB1;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/MapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, Lscala/collection/Map;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/MapLike$$anonfun$$plus$plus$1;->apply(Lscala/collection/Map;Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Map;Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Map<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 302
    invoke-interface {p1, p2}, Lscala/collection/Map;->$plus(Lscala/Tuple2;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method
