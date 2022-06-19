.class public Lscala/collection/mutable/LinkedHashMap$MappedValues;
.super Lscala/collection/MapLike$MappedValues;
.source "LinkedHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MappedValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/MapLike<",
        "TA;TB;",
        "Lscala/collection/mutable/LinkedHashMap<",
        "TA;TB;>;>.MappedValues<TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/LinkedHashMap;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;TB;>;",
            "Lscala/Function1<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Lscala/collection/MapLike$MappedValues;-><init>(Lscala/collection/MapLike;Lscala/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lscala/collection/mutable/LinkedHashMap$MappedValues;->empty()Lscala/collection/mutable/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashMap<",
            "TA;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lscala/collection/mutable/LinkedHashMap$;->MODULE$:Lscala/collection/mutable/LinkedHashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/LinkedHashMap$;->empty()Lscala/collection/mutable/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$LinkedHashMap$MappedValues$$$outer()Lscala/collection/mutable/LinkedHashMap;
    .locals 1

    .line 108
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashMap$MappedValues;->$outer:Lscala/collection/MapLike;

    check-cast v0, Lscala/collection/mutable/LinkedHashMap;

    return-object v0
.end method
