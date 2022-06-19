.class public final Lscala/runtime/RichInt$;
.super Ljava/lang/Object;
.source "RichInt.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichInt$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichInt$;

    invoke-direct {v0}, Lscala/runtime/RichInt$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    return-void
.end method


# virtual methods
.method public final abs$extension(I)I
    .locals 1

    .line 35
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->abs(I)I

    move-result p1

    return p1
.end method

.method public final byteValue$extension(I)B
    .locals 0

    int-to-byte p1, p1

    return p1
.end method

.method public final doubleValue$extension(I)D
    .locals 2

    int-to-double v0, p1

    return-wide v0
.end method

.method public final equals$extension(ILjava/lang/Object;)Z
    .locals 3

    .line 16
    instance-of v0, p2, Lscala/runtime/RichInt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichInt;

    invoke-virtual {p2}, Lscala/runtime/RichInt;->self()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final floatValue$extension(I)F
    .locals 0

    int-to-float p1, p1

    return p1
.end method

.method public final hashCode$extension(I)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(I)I
    .locals 0

    return p1
.end method

.method public final isValidInt$extension(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isValidLong$extension(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isWhole$extension(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final longValue$extension(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final max$extension(II)I
    .locals 1

    .line 36
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(II)I

    move-result p1

    return p1
.end method

.method public final min$extension(II)I
    .locals 1

    .line 37
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(II)I

    move-result p1

    return p1
.end method

.method public final num$extension(I)Lscala/math/Numeric$IntIsIntegral$;
    .locals 0

    .line 17
    sget-object p1, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    return-object p1
.end method

.method public final ord$extension(I)Lscala/math/Ordering$Int$;
    .locals 0

    .line 18
    sget-object p1, Lscala/math/Ordering$Int$;->MODULE$:Lscala/math/Ordering$Int$;

    return-object p1
.end method

.method public final round$extension(I)I
    .locals 0

    return p1
.end method

.method public final shortValue$extension(I)S
    .locals 0

    int-to-short p1, p1

    return p1
.end method

.method public final signum$extension(I)I
    .locals 1

    .line 38
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->signum(I)I

    move-result p1

    return p1
.end method

.method public final to$extension0(II)Lscala/collection/immutable/Range$Inclusive;
    .locals 1

    .line 71
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/Range$;->inclusive(II)Lscala/collection/immutable/Range$Inclusive;

    move-result-object p1

    return-object p1
.end method

.method public final to$extension1(III)Lscala/collection/immutable/Range$Inclusive;
    .locals 1

    .line 79
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/Range$;->inclusive(III)Lscala/collection/immutable/Range$Inclusive;

    move-result-object p1

    return-object p1
.end method

.method public final toBinaryString$extension(I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toHexString$extension(I)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toOctalString$extension(I)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final until$extension0(II)Lscala/collection/immutable/Range;
    .locals 1

    .line 55
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2}, Lscala/collection/immutable/Range$;->apply(II)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method

.method public final until$extension1(III)Lscala/collection/immutable/Range;
    .locals 1

    .line 63
    sget-object v0, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v0, p1, p2, p3}, Lscala/collection/immutable/Range$;->apply(III)Lscala/collection/immutable/Range;

    move-result-object p1

    return-object p1
.end method
