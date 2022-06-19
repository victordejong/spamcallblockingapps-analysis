.class public final Lscala/collection/immutable/ListMap$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "ListMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# instance fields
.field private self:Lscala/collection/immutable/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 122
    iput-object p1, p0, Lscala/collection/immutable/ListMap$$anon$1;->self:Lscala/collection/immutable/ListMap;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->self()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->self()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->self()Lscala/collection/immutable/ListMap;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/ListMap;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lscala/collection/immutable/ListMap$$anon$1;->self()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->next()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/ListMap$$anon$1;->self_$eq(Lscala/collection/immutable/ListMap;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "next on empty iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public self()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lscala/collection/immutable/ListMap$$anon$1;->self:Lscala/collection/immutable/ListMap;

    return-object v0
.end method

.method public self_$eq(Lscala/collection/immutable/ListMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lscala/collection/immutable/ListMap$$anon$1;->self:Lscala/collection/immutable/ListMap;

    return-void
.end method
