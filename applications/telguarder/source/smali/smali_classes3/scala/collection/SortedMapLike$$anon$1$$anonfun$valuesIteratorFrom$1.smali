.class public final Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;
.super Lscala/runtime/AbstractPartialFunction;
.source "SortedMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SortedMapLike$$anon$1;->valuesIteratorFrom(Ljava/lang/Object;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractPartialFunction<",
        "Lscala/Tuple2<",
        "TA;TB;>;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/SortedMapLike$$anon$1;


# direct methods
.method public constructor <init>(Lscala/collection/SortedMapLike$$anon$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMapLike<",
            "TA;TB;TThis;>.$anon$1;)V"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;->$outer:Lscala/collection/SortedMapLike$$anon$1;

    invoke-direct {p0}, Lscala/runtime/AbstractPartialFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1, p2}, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;->applyOrElse(Lscala/Tuple2;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final applyOrElse(Lscala/Tuple2;Lscala/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Lscala/Tuple2<",
            "TA;TB;>;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;->$outer:Lscala/collection/SortedMapLike$$anon$1;

    iget-object v0, v0, Lscala/collection/SortedMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 81
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;->isDefinedAt(Lscala/Tuple2;)Z

    move-result p1

    return p1
.end method

.method public final isDefinedAt(Lscala/Tuple2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1;->$outer:Lscala/collection/SortedMapLike$$anon$1;

    iget-object v0, v0, Lscala/collection/SortedMapLike$$anon$1;->p$1:Lscala/Function1;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
