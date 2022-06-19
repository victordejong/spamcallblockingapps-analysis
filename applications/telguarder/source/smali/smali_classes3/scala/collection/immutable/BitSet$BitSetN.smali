.class public Lscala/collection/immutable/BitSet$BitSetN;
.super Lscala/collection/immutable/BitSet;
.source "BitSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitSetN"
.end annotation


# instance fields
.field private final elems:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    .line 130
    iput-object p1, p0, Lscala/collection/immutable/BitSet$BitSetN;->elems:[J

    invoke-direct {p0}, Lscala/collection/immutable/BitSet;-><init>()V

    return-void
.end method


# virtual methods
.method public elems()[J
    .locals 1

    .line 130
    iget-object v0, p0, Lscala/collection/immutable/BitSet$BitSetN;->elems:[J

    return-object v0
.end method

.method public nwords()I
    .locals 1

    .line 131
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSetN;->elems()[J

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public updateWord(IJ)Lscala/collection/immutable/BitSet;
    .locals 2

    .line 133
    sget-object v0, Lscala/collection/BitSetLike$;->MODULE$:Lscala/collection/BitSetLike$;

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSetN;->elems()[J

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lscala/collection/BitSetLike$;->updateArray([JIJ)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet$BitSetN;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public word(I)J
    .locals 3

    .line 132
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSetN;->nwords()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSetN;->elems()[J

    move-result-object v0

    aget-wide v1, v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
