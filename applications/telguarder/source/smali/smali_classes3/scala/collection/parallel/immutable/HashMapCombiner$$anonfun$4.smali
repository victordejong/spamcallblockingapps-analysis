.class public final Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/HashMapCombiner;->groupByKey(Lscala/Function0;)Lscala/collection/parallel/immutable/ParHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/UnrolledBuffer<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/HashMapCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    check-cast p1, Lscala/collection/mutable/UnrolledBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner$$anonfun$4;->apply(Lscala/collection/mutable/UnrolledBuffer;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/UnrolledBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/UnrolledBuffer<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
