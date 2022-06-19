.class public final Lscala/collection/immutable/LongMapUtils$;
.super Ljava/lang/Object;
.source "LongMap.scala"

# interfaces
.implements Lscala/collection/generic/BitOperations$Long;


# static fields
.field public static final MODULE$:Lscala/collection/immutable/LongMapUtils$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/LongMapUtils$;

    invoke-direct {v0}, Lscala/collection/immutable/LongMapUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Long$class;->$init$(Lscala/collection/generic/BitOperations$Long;)V

    return-void
.end method


# virtual methods
.method public bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p5, p6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    sget-object p5, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap;

    goto :goto_0

    .line 32
    :cond_0
    sget-object p5, Lscala/collection/immutable/LongMap$Nil$;->MODULE$:Lscala/collection/immutable/LongMap$Nil$;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/LongMap;

    goto :goto_0

    .line 33
    :cond_1
    new-instance p5, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p6

    move-object v5, p6

    check-cast v5, Lscala/collection/immutable/LongMap;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p6

    move-object v6, p6

    check-cast v6, Lscala/collection/immutable/LongMap;

    move-object v0, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    move-object p1, p5

    :goto_0
    return-object p1
.end method

.method public bitString(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/BitOperations$Long$class;->bitString(Lscala/collection/generic/BitOperations$Long;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bitString$default$2()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {p0}, Lscala/collection/generic/BitOperations$Long$class;->bitString$default$2(Lscala/collection/generic/BitOperations$Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bits(J)Lscala/collection/immutable/IndexedSeq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->bits(Lscala/collection/generic/BitOperations$Long;J)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public branchMask(JJ)J
    .locals 0

    xor-long/2addr p1, p3

    .line 21
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/LongMapUtils$;->highestOneBit(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public complement(J)J
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->complement(Lscala/collection/generic/BitOperations$Long;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public hasMatch(JJJ)Z
    .locals 0

    .line 20
    invoke-static/range {p0 .. p6}, Lscala/collection/generic/BitOperations$Long$class;->hasMatch(Lscala/collection/generic/BitOperations$Long;JJJ)Z

    move-result p1

    return p1
.end method

.method public highestOneBit(J)J
    .locals 0

    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->highestOneBit(Lscala/collection/generic/BitOperations$Long;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;J",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2, p4, p5}, Lscala/collection/immutable/LongMapUtils$;->branchMask(JJ)J

    move-result-wide v3

    .line 25
    invoke-virtual {p0, p1, p2, v3, v4}, Lscala/collection/immutable/LongMapUtils$;->mask(JJ)J

    move-result-wide v1

    .line 26
    invoke-virtual {p0, p1, p2, v3, v4}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lscala/collection/immutable/LongMap$Bin;

    move-object v0, p1

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lscala/collection/immutable/LongMap$Bin;

    move-object v0, p1

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    :goto_0
    return-object p1
.end method

.method public mask(JJ)J
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->mask(Lscala/collection/generic/BitOperations$Long;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public shorter(JJ)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->shorter(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method

.method public unsignedCompare(JJ)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->unsignedCompare(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method

.method public zero(JJ)Z
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->zero(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method
