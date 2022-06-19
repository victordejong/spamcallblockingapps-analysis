.class public final Lscala/collection/immutable/IntMapUtils$;
.super Ljava/lang/Object;
.source "IntMap.scala"

# interfaces
.implements Lscala/collection/generic/BitOperations$Int;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/IntMapUtils$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/IntMapUtils$;

    invoke-direct {v0}, Lscala/collection/immutable/IntMapUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/IntMapUtils$;->MODULE$:Lscala/collection/immutable/IntMapUtils$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->$init$(Lscala/collection/generic/BitOperations$Int;)V

    return-void
.end method


# virtual methods
.method public bin(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p3, p4}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    sget-object p3, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap;

    goto :goto_0

    .line 32
    :cond_0
    sget-object p3, Lscala/collection/immutable/IntMap$Nil$;->MODULE$:Lscala/collection/immutable/IntMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/IntMap;

    goto :goto_0

    .line 33
    :cond_1
    new-instance p3, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lscala/collection/immutable/IntMap;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/IntMap;

    invoke-direct {p3, p1, p2, p4, v0}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public bitString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->bitString(Lscala/collection/generic/BitOperations$Int;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bitString$default$2()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->bitString$default$2(Lscala/collection/generic/BitOperations$Int;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bits(I)Lscala/collection/immutable/IndexedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->bits(Lscala/collection/generic/BitOperations$Int;I)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public branchMask(II)I
    .locals 0

    xor-int/2addr p1, p2

    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/immutable/IntMapUtils$;->highestOneBit(I)I

    move-result p1

    return p1
.end method

.method public complement(I)I
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->complement(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public hasMatch(III)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/BitOperations$Int$class;->hasMatch(Lscala/collection/generic/BitOperations$Int;III)Z

    move-result p1

    return p1
.end method

.method public highestOneBit(I)I
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lscala/collection/generic/BitOperations$Int$class;->highestOneBit(Lscala/collection/generic/BitOperations$Int;I)I

    move-result p1

    return p1
.end method

.method public join(ILscala/collection/immutable/IntMap;ILscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;I",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p3}, Lscala/collection/immutable/IntMapUtils$;->branchMask(II)I

    move-result p3

    .line 25
    invoke-virtual {p0, p1, p3}, Lscala/collection/immutable/IntMapUtils$;->mask(II)I

    move-result v0

    .line 26
    invoke-virtual {p0, p1, p3}, Lscala/collection/immutable/IntMapUtils$;->zero(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lscala/collection/immutable/IntMap$Bin;

    invoke-direct {p1, v0, p3, p2, p4}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lscala/collection/immutable/IntMap$Bin;

    invoke-direct {p1, v0, p3, p4, p2}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    :goto_0
    return-object p1
.end method

.method public mask(II)I
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->mask(Lscala/collection/generic/BitOperations$Int;II)I

    move-result p1

    return p1
.end method

.method public shorter(II)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->shorter(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public unsignedCompare(II)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->unsignedCompare(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method

.method public zero(II)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Int$class;->zero(Lscala/collection/generic/BitOperations$Int;II)Z

    move-result p1

    return p1
.end method
