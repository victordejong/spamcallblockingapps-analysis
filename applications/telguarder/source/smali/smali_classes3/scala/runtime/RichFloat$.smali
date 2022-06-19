.class public final Lscala/runtime/RichFloat$;
.super Ljava/lang/Object;
.source "RichFloat.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichFloat$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichFloat$;

    invoke-direct {v0}, Lscala/runtime/RichFloat$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichFloat$;->MODULE$:Lscala/runtime/RichFloat$;

    return-void
.end method


# virtual methods
.method public final abs$extension(F)F
    .locals 1

    .line 41
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->abs(F)F

    move-result p1

    return p1
.end method

.method public final byteValue$extension(F)B
    .locals 0

    float-to-int p1, p1

    int-to-byte p1, p1

    return p1
.end method

.method public final ceil$extension(F)F
    .locals 3

    .line 47
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final doubleValue$extension(F)D
    .locals 2

    float-to-double v0, p1

    return-wide v0
.end method

.method public final equals$extension(FLjava/lang/Object;)Z
    .locals 3

    .line 12
    instance-of v0, p2, Lscala/runtime/RichFloat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lscala/runtime/RichFloat;

    invoke-virtual {p2}, Lscala/runtime/RichFloat;->self()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

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

.method public final floatValue$extension(F)F
    .locals 0

    return p1
.end method

.method public final floor$extension(F)F
    .locals 3

    .line 48
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final hashCode$extension(F)I
    .locals 0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final intValue$extension(F)I
    .locals 0

    float-to-int p1, p1

    return p1
.end method

.method public final integralNum$extension(F)Lscala/math/Numeric$FloatAsIfIntegral$;
    .locals 0

    .line 15
    sget-object p1, Lscala/math/Numeric$FloatAsIfIntegral$;->MODULE$:Lscala/math/Numeric$FloatAsIfIntegral$;

    return-object p1
.end method

.method public final isInfinity$extension(F)Z
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    return p1
.end method

.method public final isNaN$extension(F)Z
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    return p1
.end method

.method public final isNegInfinity$extension(F)Z
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isPosInfinity$extension(F)Z
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidByte$extension(F)Z
    .locals 1

    float-to-int v0, p1

    int-to-byte v0, v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidChar$extension(F)Z
    .locals 1

    float-to-int v0, p1

    int-to-char v0, v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidInt$extension(F)Z
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isValidShort$extension(F)Z
    .locals 1

    float-to-int v0, p1

    int-to-short v0, v0

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isWhole$extension(F)Z
    .locals 5

    float-to-long v0, p1

    long-to-float v2, v0

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

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

.method public final longValue$extension(F)J
    .locals 2

    float-to-long v0, p1

    return-wide v0
.end method

.method public final max$extension(FF)F
    .locals 1

    .line 42
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->max(FF)F

    move-result p1

    return p1
.end method

.method public final min$extension(FF)F
    .locals 1

    .line 43
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(FF)F

    move-result p1

    return p1
.end method

.method public final num$extension(F)Lscala/math/Numeric$FloatIsFractional$;
    .locals 0

    .line 13
    sget-object p1, Lscala/math/Numeric$FloatIsFractional$;->MODULE$:Lscala/math/Numeric$FloatIsFractional$;

    return-object p1
.end method

.method public final ord$extension(F)Lscala/math/Ordering$Float$;
    .locals 0

    .line 14
    sget-object p1, Lscala/math/Ordering$Float$;->MODULE$:Lscala/math/Ordering$Float$;

    return-object p1
.end method

.method public final round$extension(F)I
    .locals 1

    .line 46
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->round(F)I

    move-result p1

    return p1
.end method

.method public final shortValue$extension(F)S
    .locals 0

    float-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public final signum$extension(F)I
    .locals 1

    .line 44
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1}, Lscala/math/package$;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public final toDegrees$extension(F)F
    .locals 3

    .line 62
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final toRadians$extension(F)F
    .locals 3

    .line 55
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
