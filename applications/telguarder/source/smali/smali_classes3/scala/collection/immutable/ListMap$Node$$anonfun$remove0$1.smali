.class public final Lscala/collection/immutable/ListMap$Node$$anonfun$remove0$1;
.super Lscala/runtime/AbstractFunction2;
.source "ListMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListMap$Node;->remove0(Ljava/lang/Object;Lscala/collection/immutable/ListMap;Lscala/collection/immutable/List;)Lscala/collection/immutable/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;",
        "Lscala/collection/immutable/ListMap<",
        "TA;TB1;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListMap$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>.Node<TB1;>;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p1, Lscala/collection/immutable/ListMap;

    check-cast p2, Lscala/collection/immutable/ListMap;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap$Node$$anonfun$remove0$1;->apply(Lscala/collection/immutable/ListMap;Lscala/collection/immutable/ListMap;)Lscala/collection/immutable/ListMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/ListMap;Lscala/collection/immutable/ListMap;)Lscala/collection/immutable/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;)",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListMap;

    new-instance p2, Lscala/collection/immutable/ListMap$Node;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/ListMap;

    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListMap;

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lscala/collection/immutable/ListMap$Node;-><init>(Lscala/collection/immutable/ListMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
