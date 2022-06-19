.class public final Lscala/collection/immutable/TrieIterator$$anon$1;
.super Lscala/collection/immutable/TrieIterator;
.source "TrieIterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/TrieIterator;->newIterator([Lscala/collection/immutable/Iterable;)Lscala/collection/immutable/TrieIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/TrieIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/TrieIterator;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/TrieIterator;[Lscala/collection/immutable/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/TrieIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/TrieIterator$$anon$1;->$outer:Lscala/collection/immutable/TrieIterator;

    invoke-direct {p0, p2}, Lscala/collection/immutable/TrieIterator;-><init>([Lscala/collection/immutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public final getElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$$anon$1;->$outer:Lscala/collection/immutable/TrieIterator;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/TrieIterator;->getElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
