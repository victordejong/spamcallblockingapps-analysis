.class public final Lscala/collection/SortedMapLike$$anonfun$$plus$1;
.super Lscala/runtime/AbstractFunction1;
.source "SortedMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SortedMapLike;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/SortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB1;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final m$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/SortedMapLike;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SortedMapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 72
    iput-object p2, p0, Lscala/collection/SortedMapLike$$anonfun$$plus$1;->m$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/SortedMapLike$$anonfun$$plus$1;->apply(Lscala/Tuple2;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lscala/collection/SortedMapLike$$anonfun$$plus$1;->m$1:Lscala/runtime/ObjectRef;

    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/SortedMap;

    invoke-interface {v1, p1}, Lscala/collection/SortedMap;->$plus(Lscala/Tuple2;)Lscala/collection/SortedMap;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
