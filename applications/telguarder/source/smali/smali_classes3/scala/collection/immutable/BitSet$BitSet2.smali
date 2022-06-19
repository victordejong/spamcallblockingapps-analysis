.class public Lscala/collection/immutable/BitSet$BitSet2;
.super Lscala/collection/immutable/BitSet;
.source "BitSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitSet2"
.end annotation


# instance fields
.field private final elems0:J

.field private final elems1:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems0:J

    iput-wide p3, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems1:J

    invoke-direct {p0}, Lscala/collection/immutable/BitSet;-><init>()V

    return-void
.end method


# virtual methods
.method public elems0()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems0:J

    return-wide v0
.end method

.method public nwords()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public updateWord(IJ)Lscala/collection/immutable/BitSet;
    .locals 6

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lscala/collection/immutable/BitSet$BitSet2;

    iget-wide v0, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems1:J

    invoke-direct {p1, p2, p3, v0, v1}, Lscala/collection/immutable/BitSet$BitSet2;-><init>(JJ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 120
    new-instance p1, Lscala/collection/immutable/BitSet$BitSet2;

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet2;->elems0()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2, p3}, Lscala/collection/immutable/BitSet$BitSet2;-><init>(JJ)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object v1, Lscala/collection/BitSetLike$;->MODULE$:Lscala/collection/BitSetLike$;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet2;->elems0()J

    move-result-wide v4

    aput-wide v4, v2, v3

    iget-wide v3, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems1:J

    aput-wide v3, v2, v0

    invoke-virtual {v1, v2, p1, p2, p3}, Lscala/collection/BitSetLike$;->updateArray([JIJ)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet$BitSet2;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public word(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet2;->elems0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lscala/collection/immutable/BitSet$BitSet2;->elems1:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
