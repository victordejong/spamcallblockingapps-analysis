.class public final Lscala/runtime/RichDouble$;
.super Ljava/lang/Object;
.source "RichDouble.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichDouble$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichDouble$;

    invoke-direct {v0}, Lscala/runtime/RichDouble$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichDouble$;->MODULE$:Lscala/runtime/RichDouble$;

    return-void
.end method


# virtual methods
.method public final abs$extension(D)D
    .locals 1

    .line 41
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->abs(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final byteValue$extension(D)B
    .locals 0

    double-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method public final ceil$extension(D)D
    .locals 1

    .line 47
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->ceil(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final doubleValue$extension(D)D
    .locals 0

    return-wide p1
.end method

.method public final equals$extension(DLjava/lang/Object;)Z
    .locals 5

    .line 12
    instance-of v0, p3, Lscala/runtime/RichDouble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Lscala/runtime/RichDouble;

    invoke-virtual {p3}, Lscala/runtime/RichDouble;->self()D

    move-result-wide v3

    cmpl-double p3, p1, v3

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

.method public final floatValue$extension(D)F
    .locals 0

    double-to-float p1, p1

    return p1
.end method

.method public final floor$extension(D)D
    .locals 1

    .line 48
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->floor(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final hashCode$extension(D)I
    .locals 0

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(D)I
    .locals 0

    double-to-int p1, p1

    return p1
.end method

.method public final integralNum$extension(D)Lscala/math/Numeric$DoubleAsIfIntegral$;
    .locals 0

    .line 15
    sget-object p1, Lscala/math/Numeric$DoubleAsIfIntegral$;->MODULE$:Lscala/math/Numeric$DoubleAsIfIntegral$;

    return-object p1
.end method

.method public final isInfinity$extension(D)Z
    .locals 0

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    return p1
.end method

.method public final isNaN$extension(D)Z
    .locals 0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    return p1
.end method

.method public final isNegInfinity$extension(D)Z
    .locals 3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isPosInfinity$extension(D)Z
    .locals 3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidByte$extension(D)Z
    .locals 3

    double-to-int v0, p1

    int-to-byte v0, v0

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidChar$extension(D)Z
    .locals 3

    double-to-int v0, p1

    int-to-char v0, v0

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidInt$extension(D)Z
    .locals 3

    double-to-int v0, p1

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidShort$extension(D)Z
    .locals 3

    double-to-int v0, p1

    int-to-short v0, v0

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isWhole$extension(D)Z
    .locals 5

    double-to-long v0, p1

    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-eqz v4, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, p1, v2

    if-ltz v4, :cond_2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final longValue$extension(D)J
    .locals 0

    double-to-long p1, p1

    return-wide p1
.end method

.method public final max$extension(DD)D
    .locals 1

    .line 42
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/math/package$;->max(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public final min$extension(DD)D
    .locals 1

    .line 43
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2, p3, p4}, Lscala/math/package$;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public final num$extension(D)Lscala/math/Numeric$DoubleIsFractional$;
    .locals 0

    .line 13
    sget-object p1, Lscala/math/Numeric$DoubleIsFractional$;->MODULE$:Lscala/math/Numeric$DoubleIsFractional$;

    return-object p1
.end method

.method public final ord$extension(D)Lscala/math/Ordering$Double$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Ordering$Double$;->MODULE$:Lscala/math/Ordering$Double$;

    return-object p1
.end method

.method public final round$extension(D)J
    .locals 1

    .line 46
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public final shortValue$extension(D)S
    .locals 0

    double-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public final signum$extension(D)I
    .locals 1

    .line 44
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->signum(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method public final toDegrees$extension(D)D
    .locals 1

    .line 61
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final toRadians$extension(D)D
    .locals 1

    .line 55
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->toRadians(D)D

    move-result-wide p1

    return-wide p1
.end method
