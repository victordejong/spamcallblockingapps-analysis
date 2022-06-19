.class public final Lscala/collection/immutable/LongMapUtils;
.super Ljava/lang/Object;
.source "LongMap.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001Q;a!\u0001\u0002\t\u0002\tA\u0011\u0001\u0004\'p]\u001el\u0015\r]+uS2\u001c(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u0004\"!\u0003\u0006\u000e\u0003\t1aa\u0003\u0002\t\u0002\ta!\u0001\u0004\'p]\u001el\u0015\r]+uS2\u001c8c\u0001\u0006\u000e#A\u0011abD\u0007\u0002\r%\u0011\u0001C\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005IAbBA\n\u0017\u001b\u0005!\"BA\u000b\u0005\u0003\u001d9WM\\3sS\u000eL!a\u0006\u000b\u0002\u001b\tKGo\u00149fe\u0006$\u0018n\u001c8t\u0013\tI\"D\u0001\u0003M_:<\'BA\u000c\u0015\u0011\u0015a\"\u0002\"\u0001\u001f\u0003\u0019a\u0014N\\5u}\r\u0001A#\u0001\u0005\t\u000b\u0001RA\u0011A\u0011\u0002\u0015\t\u0014\u0018M\\2i\u001b\u0006\u001c8\u000eF\u0002#I%\u0002\"AD\u0012\n\u0005e1\u0001\"B\u0013 \u0001\u00041\u0013!A5\u0011\u0005\u001dBS\"\u0001\u0006\n\u0005eA\u0002\"\u0002\u0016 \u0001\u00041\u0013!\u00016\t\u000b1RA\u0011A\u0017\u0002\t)|\u0017N\\\u000b\u0003]Q\"RaL\u001f@\u0003\u000e\u00032!\u0003\u00193\u0013\t\t$AA\u0004M_:<W*\u00199\u0011\u0005M\"D\u0002\u0001\u0003\u0006k-\u0012\rA\u000e\u0002\u0002)F\u0011qG\u000f\t\u0003\u001daJ!!\u000f\u0004\u0003\u000f9{G\u000f[5oOB\u0011abO\u0005\u0003y\u0019\u00111!\u00118z\u0011\u0015q4\u00061\u0001\'\u0003\t\u0001\u0018\u0007C\u0003AW\u0001\u0007q&\u0001\u0002uc!)!i\u000ba\u0001M\u0005\u0011\u0001O\r\u0005\u0006\t.\u0002\raL\u0001\u0003iJBQA\u0012\u0006\u0005\u0002\u001d\u000b1AY5o+\tA5\nF\u0003J\u0019:\u0003&\u000bE\u0002\na)\u0003\"aM&\u0005\u000bU*%\u0019\u0001\u001c\t\u000b5+\u0005\u0019\u0001\u0014\u0002\rA\u0014XMZ5y\u0011\u0015yU\t1\u0001\'\u0003\u0011i\u0017m]6\t\u000bE+\u0005\u0019A%\u0002\t1,g\r\u001e\u0005\u0006\'\u0016\u0003\r!S\u0001\u0006e&<\u0007\u000e\u001e"
.end annotation


# direct methods
.method public static bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
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

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->bin(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p0

    return-object p0
.end method

.method public static bitString(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/immutable/LongMapUtils$;->bitString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitString$default$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0}, Lscala/collection/immutable/LongMapUtils$;->bitString$default$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bits(J)Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/collection/immutable/IndexedSeq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/LongMapUtils$;->bits(J)Lscala/collection/immutable/IndexedSeq;

    move-result-object p0

    return-object p0
.end method

.method public static branchMask(JJ)J
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/LongMapUtils$;->branchMask(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static complement(J)J
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/LongMapUtils$;->complement(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static hasMatch(JJJ)Z
    .locals 7

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->hasMatch(JJJ)Z

    move-result p0

    return p0
.end method

.method public static highestOneBit(J)J
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/immutable/LongMapUtils$;->highestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
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

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/LongMapUtils$;->join(JLscala/collection/immutable/LongMap;JLscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;

    move-result-object p0

    return-object p0
.end method

.method public static mask(JJ)J
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/LongMapUtils$;->mask(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static shorter(JJ)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/LongMapUtils$;->shorter(JJ)Z

    move-result p0

    return p0
.end method

.method public static unsignedCompare(JJ)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/LongMapUtils$;->unsignedCompare(JJ)Z

    move-result p0

    return p0
.end method

.method public static zero(JJ)Z
    .locals 1

    sget-object v0, Lscala/collection/immutable/LongMapUtils$;->MODULE$:Lscala/collection/immutable/LongMapUtils$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/immutable/LongMapUtils$;->zero(JJ)Z

    move-result p0

    return p0
.end method
