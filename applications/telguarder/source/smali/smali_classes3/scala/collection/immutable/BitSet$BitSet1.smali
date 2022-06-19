.class public Lscala/collection/immutable/BitSet$BitSet1;
.super Lscala/collection/immutable/BitSet;
.source "BitSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitSet1"
.end annotation


# instance fields
.field private final elems:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lscala/collection/immutable/BitSet$BitSet1;->elems:J

    invoke-direct {p0}, Lscala/collection/immutable/BitSet;-><init>()V

    return-void
.end method


# virtual methods
.method public elems()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lscala/collection/immutable/BitSet$BitSet1;->elems:J

    return-wide v0
.end method

.method public nwords()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateWord(IJ)Lscala/collection/immutable/BitSet;
    .locals 5

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lscala/collection/immutable/BitSet$BitSet1;

    invoke-direct {p1, p2, p3}, Lscala/collection/immutable/BitSet$BitSet1;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 111
    new-instance p1, Lscala/collection/immutable/BitSet$BitSet2;

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet1;->elems()J

    move-result-wide v0

    invoke-direct {p1, v0, v1, p2, p3}, Lscala/collection/immutable/BitSet$BitSet2;-><init>(JJ)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v1, Lscala/collection/BitSetLike$;->MODULE$:Lscala/collection/BitSetLike$;

    new-array v0, v0, [J

    const/4 v2, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet1;->elems()J

    move-result-wide v3

    aput-wide v3, v0, v2

    invoke-virtual {v1, v0, p1, p2, p3}, Lscala/collection/BitSetLike$;->updateArray([JIJ)[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/BitSet$BitSet1;->fromBitMaskNoCopy([J)Lscala/collection/immutable/BitSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public word(I)J
    .locals 2

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lscala/collection/immutable/BitSet$BitSet1;->elems()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
