.class public final Lscala/collection/immutable/LongMap$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction2;
.source "LongMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/LongMap$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/LongMap<",
        "TT;>;",
        "Lscala/Tuple2<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lscala/collection/immutable/LongMap<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lscala/collection/immutable/LongMap;

    check-cast p2, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/LongMap$$anonfun$apply$1;->apply(Lscala/collection/immutable/LongMap;Lscala/Tuple2;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/LongMap;Lscala/Tuple2;)Lscala/collection/immutable/LongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/Tuple2<",
            "Ljava/lang/Object;",
            "TT;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lscala/Tuple2;->_1$mcJ$sp()J

    move-result-wide v0

    invoke-virtual {p2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lscala/collection/immutable/LongMap;->updated(JLjava/lang/Object;)Lscala/collection/immutable/LongMap;

    move-result-object p1

    return-object p1
.end method
