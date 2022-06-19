.class public Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;
.super Lscala/collection/MapLike$DefaultKeySet;
.source "LinkedHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;",
        "Lscala/collection/mutable/LinkedHashMap<",
        "TA;TB;>;>.DefaultKeySet;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;-><init>(Lscala/collection/MapLike;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;->empty()Lscala/collection/mutable/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;->empty()Lscala/collection/mutable/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet<",
            "TA;>;"
        }
    .end annotation

    .line 115
    sget-object v0, Lscala/collection/mutable/LinkedHashSet$;->MODULE$:Lscala/collection/mutable/LinkedHashSet$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashSet$;->empty()Lscala/collection/mutable/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$LinkedHashMap$DefaultKeySet$$$outer()Lscala/collection/mutable/LinkedHashMap;
    .locals 1

    .line 114
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap$DefaultKeySet;->$outer:Lscala/collection/MapLike;

    check-cast v0, Lscala/collection/mutable/LinkedHashMap;

    return-object v0
.end method
