.class public final Lscala/runtime/RichLong$;
.super Ljava/lang/Object;
.source "RichLong.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichLong$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichLong$;

    invoke-direct {v0}, Lscala/runtime/RichLong$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichLong$;->MODULE$:Lscala/runtime/RichLong$;

    return-void
.end method


# virtual methods
.method public final abs$extension(J)J
    .locals 1

    .line 31
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->abs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final byteValue$extension(J)B
    .locals 0

    long-to-int p2, p1

    int-to-byte p1, p2

    return p1
.end method

.method public final doubleValue$extension(J)D
    .locals 0

    long-to-double p1, p1

    return-wide p1
.end method

.method public final equals$extension(JLjava/lang/Object;)Z
    .locals 5

    .line 12
    instance-of v0, p3, Lscala/runtime/RichLong;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Lscala/runtime/RichLong;

    invoke-virtual {p3}, Lscala/runtime/RichLong;->self()J

    move-result-wide v3

    cmp-long p3, p1, v3

    if-nez p3, :cond_0

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

.method public final floatValue$extension(J)F
    .locals 0

    long-to-float p1, p1

    return p1
.end method

.method public final hashCode$extension(J)I
    .locals 0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(J)I
    .locals 0

    long-to-int p2, p1

    return p2
.end method

.method public final isValidByte$extension(J)Z
    .locals 3

    long-to-int v0, p1

    int-to-byte v0, v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidChar$extension(J)Z
    .locals 3

    long-to-int v0, p1

    int-to-char v0, v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidInt$extension(J)Z
    .locals 3

    long-to-int v0, p1

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidLong$extension(J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isValidShort$extension(J)Z
    .locals 3

    long-to-int v0, p1

    int-to-short v0, v0

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final longValue$extension(J)J
    .locals 0

    return-wide p1
.end method

.method public final max$extension(JJ)J
    .locals 1

    .line 32
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/math/package$;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final min$extension(JJ)J
    .locals 1

    .line 33
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/math/package$;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final num$extension(J)Lscala/math/Numeric$LongIsIntegral$;
    .locals 0

    .line 13
    sget-object p1, Lscala/math/Numeric$LongIsIntegral$;->MODULE$:Lscala/math/Numeric$LongIsIntegral$;

    return-object p1
.end method

.method public final ord$extension(J)Lscala/math/Ordering$Long$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Ordering$Long$;->MODULE$:Lscala/math/Ordering$Long$;

    return-object p1
.end method

.method public final round$extension(J)J
    .locals 0

    return-wide p1
.end method

.method public final shortValue$extension(J)S
    .locals 0

    long-to-int p2, p1

    int-to-short p1, p2

    return p1
.end method

.method public final signum$extension(J)I
    .locals 1

    .line 34
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->signum(J)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method public final toBinaryString$extension(J)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toHexString$extension(J)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toOctalString$extension(J)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
