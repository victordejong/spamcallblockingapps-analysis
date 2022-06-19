.class public final Lscala/collection/immutable/HashSet$HashTrieSet$$anon$1;
.super Lscala/collection/immutable/TrieIterator;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashSet$HashTrieSet;->iterator()Lscala/collection/immutable/TrieIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/TrieIterator<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashSet$HashTrieSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$HashTrieSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 971
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashTrieSet;->elems()[Lscala/collection/immutable/HashSet;

    move-result-object p1

    check-cast p1, [Lscala/collection/immutable/Iterable;

    invoke-direct {p0, p1}, Lscala/collection/immutable/TrieIterator;-><init>([Lscala/collection/immutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public final getElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .line 972
    check-cast p1, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
