.class public Lscala/collection/MapLike$DefaultKeySet;
.super Lscala/collection/AbstractSet;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSet<",
        "TA;>;",
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

    .line 168
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/MapLike$DefaultKeySet;->$outer:Lscala/collection/MapLike;

    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 172
    sget-object v0, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p0}, Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 171
    sget-object v0, Lscala/collection/Set$;->MODULE$:Lscala/collection/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p0}, Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultKeySet;->scala$collection$MapLike$DefaultKeySet$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TC;>;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultKeySet;->scala$collection$MapLike$DefaultKeySet$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->keysIterator()Lscala/collection/Iterator;

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
            "TA;>;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultKeySet;->scala$collection$MapLike$DefaultKeySet$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->keysIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$MapLike$DefaultKeySet$$$outer()Lscala/collection/MapLike;
    .locals 1

    .line 168
    iget-object v0, p0, Lscala/collection/MapLike$DefaultKeySet;->$outer:Lscala/collection/MapLike;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lscala/collection/MapLike$DefaultKeySet;->scala$collection$MapLike$DefaultKeySet$$$outer()Lscala/collection/MapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/MapLike;->size()I

    move-result v0

    return v0
.end method
