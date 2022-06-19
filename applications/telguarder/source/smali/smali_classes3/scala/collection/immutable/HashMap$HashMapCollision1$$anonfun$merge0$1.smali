.class public final Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashMap$HashMapCollision1;->merge0(Lscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "TA;TB;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/HashMap$HashMapCollision1;

.field private final level$1:I

.field private final m$1:Lscala/runtime/ObjectRef;

.field private final merger$1:Lscala/collection/immutable/HashMap$Merger;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashMap$HashMapCollision1;ILscala/collection/immutable/HashMap$Merger;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap$HashMapCollision1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 288
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->$outer:Lscala/collection/immutable/HashMap$HashMapCollision1;

    iput p2, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->level$1:I

    iput-object p3, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->merger$1:Lscala/collection/immutable/HashMap$Merger;

    iput-object p4, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->m$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 288
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->apply(Lscala/Tuple2;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->m$1:Lscala/runtime/ObjectRef;

    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lscala/collection/immutable/HashMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->$outer:Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v4

    iget v5, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->level$1:I

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v6

    iget-object v8, p0, Lscala/collection/immutable/HashMap$HashMapCollision1$$anonfun$merge0$1;->merger$1:Lscala/collection/immutable/HashMap$Merger;

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
