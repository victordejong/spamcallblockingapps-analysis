.class public final Lscala/collection/parallel/SeqSplitter$$anon$1;
.super Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;
.source "RemainsIterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/SeqSplitter;->reverse()Lscala/collection/parallel/SeqSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>.ParArrayIterator;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/SeqSplitter;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/mutable/ParArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 650
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/SeqSplitter$$anon$1;->$outer:Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {p2}, Lscala/collection/parallel/mutable/ParArray;->ParArrayIterator()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$lessinit$greater$default$1()I

    move-result p1

    invoke-virtual {p2}, Lscala/collection/parallel/mutable/ParArray;->ParArrayIterator()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$lessinit$greater$default$2()I

    move-result v0

    invoke-virtual {p2}, Lscala/collection/parallel/mutable/ParArray;->ParArrayIterator()Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator$;->$lessinit$greater$default$3()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lscala/collection/parallel/mutable/ParArray$ParArrayIterator;-><init>(Lscala/collection/parallel/mutable/ParArray;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public reverse()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$$anon$1;->$outer:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method
