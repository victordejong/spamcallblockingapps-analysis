.class public Lscala/collection/generic/BitOperations$Long$;
.super Ljava/lang/Object;
.source "BitOperations.scala"

# interfaces
.implements Lscala/collection/generic/BitOperations$Long;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/BitOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Long$"
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/generic/BitOperations$Long$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/generic/BitOperations$Long$;

    invoke-direct {v0}, Lscala/collection/generic/BitOperations$Long$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/generic/BitOperations$Long$;->MODULE$:Lscala/collection/generic/BitOperations$Long$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Long$class;->$init$(Lscala/collection/generic/BitOperations$Long;)V

    return-void
.end method


# virtual methods
.method public bitString(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/BitOperations$Long$class;->bitString(Lscala/collection/generic/BitOperations$Long;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bitString$default$2()Ljava/lang/String;
    .locals 1

    .line 64
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

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->bits(Lscala/collection/generic/BitOperations$Long;J)Lscala/collection/immutable/IndexedSeq;

    move-result-object p1

    return-object p1
.end method

.method public complement(J)J
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->complement(Lscala/collection/generic/BitOperations$Long;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public hasMatch(JJJ)Z
    .locals 0

    .line 64
    invoke-static/range {p0 .. p6}, Lscala/collection/generic/BitOperations$Long$class;->hasMatch(Lscala/collection/generic/BitOperations$Long;JJJ)Z

    move-result p1

    return p1
.end method

.method public highestOneBit(J)J
    .locals 0

    .line 64
    invoke-static {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$class;->highestOneBit(Lscala/collection/generic/BitOperations$Long;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public mask(JJ)J
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->mask(Lscala/collection/generic/BitOperations$Long;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public shorter(JJ)Z
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->shorter(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method

.method public unsignedCompare(JJ)Z
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->unsignedCompare(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method

.method public zero(JJ)Z
    .locals 0

    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/BitOperations$Long$class;->zero(Lscala/collection/generic/BitOperations$Long;JJ)Z

    move-result p1

    return p1
.end method
