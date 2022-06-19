.class public Lscala/collection/MapLike$DefaultValuesIterable;
.super Lscala/collection/AbstractIterable;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultValuesIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterable<",
        "TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/MapLike;


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

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/MapLike$DefaultValuesIterable;->$outer:Lscala/collection/MapLike;

    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultValuesIterable;->scala$collection$MapLike$DefaultValuesIterable$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->valuesIterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultValuesIterable;->scala$collection$MapLike$DefaultValuesIterable$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->valuesIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$MapLike$DefaultValuesIterable$$$outer()Lscala/collection/MapLike;
    .locals 1

    .line 203
    iget-object v0, p0, Lscala/collection/MapLike$DefaultValuesIterable;->$outer:Lscala/collection/MapLike;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultValuesIterable;->scala$collection$MapLike$DefaultValuesIterable$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->size()I

    move-result v0

    return v0
.end method
