.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$8;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/immutable/HashMapCombiner<",
        "TK;TT;>;",
        "Lscala/collection/parallel/immutable/ParHashMap<",
        "TK;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$8;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 646
    check-cast p1, Lscala/collection/parallel/immutable/HashMapCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$$anonfun$8;->apply(Lscala/collection/parallel/immutable/HashMapCombiner;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/immutable/HashMapCombiner;)Lscala/collection/parallel/immutable/ParHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TT;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TRepr;>;"
        }
    .end annotation

    .line 646
    new-instance v0, Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;-><init>(Lscala/collection/parallel/ParIterableLike$$anonfun$8;)V

    invoke-virtual {p1, v0}, Lscala/collection/parallel/immutable/HashMapCombiner;->groupByKey(Lscala/Function0;)Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$$anonfun$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 646
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$8;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method
