.class public final Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;
.super Lscala/collection/immutable/TrieIterator;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashMap$HashTrieMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/TrieIterator<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap$HashTrieMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 421
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object p1

    check-cast p1, [Lscala/collection/immutable/Iterable;

    invoke-direct {p0, p1}, Lscala/collection/immutable/TrieIterator;-><init>([Lscala/collection/immutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;->getElem(Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public final getElem(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 422
    check-cast p1, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method
