.class public final Lscala/collection/immutable/TrieIterator$DupIterator;
.super Lscala/collection/immutable/TrieIterator;
.source "TrieIterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/TrieIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DupIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/TrieIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/TrieIterator;

.field private final initArrayD:[Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final initArrayStack:[[Lscala/collection/immutable/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final initDepth:I

.field private final initPosD:I

.field private final initPosStack:[I

.field private final initSubIter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/TrieIterator;[Lscala/collection/immutable/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/TrieIterator<",
            "TT;>;[",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->$outer:Lscala/collection/immutable/TrieIterator;

    .line 62
    iget v0, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$depth:I

    iput v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initDepth:I

    .line 63
    iget-object v0, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayStack:[[Lscala/collection/immutable/Iterable;

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initArrayStack:[[Lscala/collection/immutable/Iterable;

    .line 64
    iget-object v0, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posStack:[I

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initPosStack:[I

    .line 65
    iget-object v0, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$arrayD:[Lscala/collection/immutable/Iterable;

    iput-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initArrayD:[Lscala/collection/immutable/Iterable;

    .line 66
    iget v0, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$posD:I

    iput v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initPosD:I

    .line 67
    iget-object p1, p1, Lscala/collection/immutable/TrieIterator;->scala$collection$immutable$TrieIterator$$subIter:Lscala/collection/Iterator;

    iput-object p1, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initSubIter:Lscala/collection/Iterator;

    .line 68
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

    .line 69
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->$outer:Lscala/collection/immutable/TrieIterator;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/TrieIterator;->getElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public initArrayD()[Lscala/collection/immutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initArrayD:[Lscala/collection/immutable/Iterable;

    return-object v0
.end method

.method public initArrayStack()[[Lscala/collection/immutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Lscala/collection/immutable/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initArrayStack:[[Lscala/collection/immutable/Iterable;

    return-object v0
.end method

.method public initDepth()I
    .locals 1

    .line 62
    iget v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initDepth:I

    return v0
.end method

.method public initPosD()I
    .locals 1

    .line 66
    iget v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initPosD:I

    return v0
.end method

.method public initPosStack()[I
    .locals 1

    .line 64
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initPosStack:[I

    return-object v0
.end method

.method public initSubIter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lscala/collection/immutable/TrieIterator$DupIterator;->initSubIter:Lscala/collection/Iterator;

    return-object v0
.end method
