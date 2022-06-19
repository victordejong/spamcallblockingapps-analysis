.class public final Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator$$anonfun$split$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParHashMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/Buffer<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;",
        "Lscala/collection/parallel/immutable/ParHashMap<",
        "TK;TV;>.ParHashMapIterator;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>.ParHashMapIterator;)V"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator$$anonfun$split$1;->$outer:Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lscala/collection/mutable/Buffer;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator$$anonfun$split$1;->apply(Lscala/collection/mutable/Buffer;)Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/Buffer;)Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Buffer<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/parallel/immutable/ParHashMap<",
            "TK;TV;>.ParHashMapIterator;"
        }
    .end annotation

    .line 105
    new-instance v0, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;

    iget-object v1, p0, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator$$anonfun$split$1;->$outer:Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;

    invoke-virtual {v1}, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;->scala$collection$parallel$immutable$ParHashMap$ParHashMapIterator$$$outer()Lscala/collection/parallel/immutable/ParHashMap;

    move-result-object v1

    invoke-interface {p1}, Lscala/collection/mutable/Buffer;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    invoke-interface {p1}, Lscala/collection/mutable/Buffer;->length()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/parallel/immutable/ParHashMap$ParHashMapIterator;-><init>(Lscala/collection/parallel/immutable/ParHashMap;Lscala/collection/Iterator;I)V

    return-object v0
.end method
